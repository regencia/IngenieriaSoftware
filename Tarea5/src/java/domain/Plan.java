
package domain;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

/**
 * Clase Plan: contiene los metodos necesarios para manejar los contenidos de
 * la tabla plan en la base de datos.
 */
public class Plan {
    String nombre; //nombre del plan
    String descripcion; //descripcion del plan
    String tipoPlan; //tipo del plan

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getTipoPlan() {
        return tipoPlan;
    }

    public void setTipoPlan(String tipoPlan) {
        this.tipoPlan = tipoPlan;
    }
    
    public Plan() {
        
    }
    
    
    /**
     * Constructor de la clase plan
     * @param nombre nombre asociado al plan
     * @param descripcion descripcion del plan
     * @param tipoPlan tipo del plan
     */
    public Plan(String nombre, String descripcion, String tipoPlan) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.tipoPlan = tipoPlan;
    }
    
    
    /**
     * Permite obtener una representacion en string un elemento de la clase plan.
     * @return String retorna el string que representa al objeto.
     */
    @Override
    public String toString() {
        return "Nombre: " + this.nombre + ", Descripcion: " + this.descripcion +
                ", Tipo de Plan: " + this.tipoPlan;
    }

    /**
     * Permite modificar la informacion del plan en la base de datos.
     */
    void modificarPlan() {
        // Establecemos la conexion con la base de datos
         try (Connection conn = Conexion.obtenerConn()) {
            Statement st;
            st = conn.createStatement();

            // Actualizamos los datos en la base de datos
            st.executeUpdate("update plan set descripcion ='"+this.descripcion+"'"
                     + "where nombre_plan ='"+this.nombre+"' and tipo_plan='"
                     + this.tipoPlan +"';");
          } catch (SQLException ex) {
              // Si hay una excepcion se imprime un mensaje
              System.err.println(ex.getMessage());
          }
        
    }   
    
    /**
     * Permite agregar un plan nuevo a la base de datos.
     * @throws SQLException puede lanzar una excepcion de sql
     */
    void registrarPlan() {

        // Conectamos con la base de datos
        try (Connection conn = Conexion.obtenerConn()) {
            
            Statement st;
            st = conn.createStatement();
            
            // Se agrega el nuevo plan a la tabla plan
            st.execute("insert into plan values ('"+ this.nombre + 
                    "', '" + this.descripcion + "', '" + this.tipoPlan + "');");
            
            // Cerramos la conexion
            conn.close();
            
        } catch (SQLException ex) {
            // En caso de haber una excepcion se imprime el mensaje
            System.err.println(ex.getMessage());
        }
        
    }
    
    /**
     * Permite eliminar a un plan de la base de datos
     */
    void eliminarPlan() {
        
        // Conectamos con la base de datos
        try (Connection conn = Conexion.obtenerConn()) {
            Statement st;
            st = conn.createStatement();
                 
            // Borramos las afiliaciones del plan a eliminar
            st.execute("delete from esta_afiliado where nombre_plan ='" + 
                    this.nombre + "' and tipo_plan ='" + this.tipoPlan + "';");
            
            // Se eliminan de la tabla tiene los registros de ese plan
            st.execute("delete from tiene where nombre_plan ='" + 
                    this.nombre + "' and tipo_plan ='" + this.tipoPlan + "';");

            // Se elimina el plan de la tabla plan
            st.execute("delete from Plan where nombre_plan ='" + 
                    this.nombre + "' and tipo_plan ='" + this.tipoPlan + "';");
        
        } catch (SQLException ex) {
            // Si hay una excepcion se imprime un mensaje
            System.err.println(ex.getMessage());
        }
    }
    
    /**
     * Permite realizar una consulta de un plan y retornar su instancia en forma de objeto
     * @param nombre nombre del plan
     * @param tipo_plan tipo del plan
     * @return la instancia hecha objeto del plan en cuestion
     */
   public static Plan consultarPlan(String nombre, String tipo_plan) {
        // Inicializamos un objeto Cliente en null
        Plan plan = null;
        
        // Conectamos con la base de datos
        try (Connection conn = Conexion.obtenerConn()) {
            
            Statement st;
            st = conn.createStatement();
            // Realizamos la consulta del plan
            ResultSet rs = st.executeQuery("select nombre_plan, tipo_plan, "
                    + "descripcion from plan where nombre_plan = '" + 
                        nombre + "' and tipo_plan = '" +tipo_plan+ "';");
            
            // Verificamos que el query no retornara vacio
            if (rs.next()) {
                // Creamos un nuevo objeto plan con los datos obtenidos.
                plan = new Plan(rs.getString(1),
                        rs.getString(3), rs.getString(2));
            }
            
            // cerramos la conexion
            conn.close();
            
        } catch (SQLException ex) {
            // Si hay una excepcion se imprime un mensaje
            System.err.println(ex.getMessage());
        }
        
        // Retorna al plan que saco de la base de datos y en caso de no
        // conseguirlo retorna null.
        return plan;
          
    }
    
    /**
     * Metodo que devuelve la lista de paquetes asociados al plan
     * @return retorna la lista de paquetes asociados al plan en caso de existir
     * en caso contrario retorna null
     */
    ArrayList<Paquete> ListarPaquetes() {
        
        ArrayList<Paquete> paquetes = new ArrayList();
        // Se conecta a la base de datos
        try (Connection conn = Conexion.obtenerConn()) {
            
            Statement st;
            st = conn.createStatement();
            // Se ejecuta el query
            ResultSet rs = st.executeQuery("select nombre_paquete, descripcion from "
                    + "paquete natural join tiene where nombre_plan = '" + 
                    this.nombre + "';");
            
            // Verificamos que el query no retornara nulo
            if (rs.next()) {
                // Agregamos el primer paquete a la lista paquetes
                Paquete paq = new Paquete(rs.getString(1), rs.getString(2));
                paquetes.add(paq);
                    
                //Se guardan los paquetes obtenidos en una lista
                while (rs.next()) {
                    paq = new Paquete(rs.getString(1), rs.getString(2));
                    paquetes.add(paq);
                }
            }
            
            
            //se cierra la conexion
            conn.close();
            
        } catch (SQLException ex) {
            // Si hay una excepcion se imprime un mensaje
            System.err.println(ex.getMessage());
        }
        
        // Retorna la lista de paquetes que saco de la base de datos y en caso de no
        // conseguir ninguno retorna null.
        return paquetes;
        
    }
    
    ArrayList<Paquete> ListarPaquetesActuales() {
        
        ArrayList<Paquete> paquetes = new ArrayList();
        // Se conecta a la base de datos
        try (Connection conn = Conexion.obtenerConn()) {
            
            Statement st;
            st = conn.createStatement();
            // Se ejecuta el query
            ResultSet rs = st.executeQuery("select nombre_paquete, descripcion from "
                    + "paquete natural join tiene where nombre_plan = '" + 
                    this.nombre + "' and fecha_fin is null;");
            
            // Verificamos que el query no retornara nulo
            if (rs.next()) {
                // Agregamos el primer paquete a la lista paquetes
                Paquete paq = new Paquete(rs.getString(1), rs.getString(2));
                paquetes.add(paq);
                    
                //Se guardan los paquetes obtenidos en una lista
                while (rs.next()) {
                    paq = new Paquete(rs.getString(1), rs.getString(2));
                    paquetes.add(paq);
                }
            }
            
            
            //se cierra la conexion
            conn.close();
            
        } catch (SQLException ex) {
            // Si hay una excepcion se imprime un mensaje
            System.err.println(ex.getMessage());
        }
        
        // Retorna la lista de paquetes que saco de la base de datos y en caso de no
        // conseguir ninguno retorna null.
        return paquetes;
        
    }
    
    /**
     * Metodo que devuelve la lista de paquetes asociados al plan
     * @return retorna la lista de paquetes asociados al plan en caso de existir
     * en caso contrario retorna null
     */
    public ArrayList<Tiene> listarTiene() {
        
        ArrayList<Tiene> paquetes = new ArrayList();
        // Se conecta a la base de datos
        try (Connection conn = Conexion.obtenerConn()) {
            
            Statement st;
            st = conn.createStatement();
            // Se ejecuta el query
            ResultSet rs = st.executeQuery("select fecha_inic, fecha_fin, costo, "
                    + "nombre_paquete, descripcion from "
                    + "paquete natural join tiene where nombre_plan = '" + 
                    this.nombre + "';");
            
            // Verificamos que el query no retornara nulo
                    
                //Se guardan los paquetes obtenidos en una lista
            while (rs.next()) {
                
                Paquete paq = new Paquete(rs.getString(4), rs.getString(5));
                
                Date fechaInic = Date.valueOf(rs.getString(1));
                Date fechaFin = Date.valueOf(rs.getString(2));
                float costo = Float.parseFloat(rs.getString(3));
                                
                Tiene tiene = new Tiene(fechaInic,fechaFin,costo,this,paq);
                
                paquetes.add(tiene);
            }        
            
            //se cierra la conexion
            conn.close();
            
        } catch (SQLException ex) {
            // Si hay una excepcion se imprime un mensaje
            System.err.println(ex.getMessage());
        }
        
        // Retorna la lista de paquetes que saco de la base de datos y en caso de no
        // conseguir ninguno retorna null.
        return paquetes;
        
    }
    
    public Double obtenerCosto(Date fecha){
        
        Double costo = null;
        
        // Conectamos con la base de datos
        try (Connection conn = Conexion.obtenerConn()) {
            
            Statement st;
            st = conn.createStatement();
            // Realizamos la consulta del plan
            ResultSet rs = st.executeQuery("select COSTO From TIENE where " +
                    "NOMBRE_PLAN = '" + nombre + "' and TIPO_PLAN = '" +
                    tipoPlan + "' and FECHA_INIC <= DATE '" + fecha.toString() +
                    "' and (FECHA_FIN IS NULL or FECHA_FIN > DATE '" 
                    + fecha.toString() + "');");
            
            // Verificamos que el query no retornara vacio
            if (rs.next()) {
                costo = Double.parseDouble(rs.getString("COSTO"));
            }
            
            // cerramos la conexion
            conn.close();
            
        } catch (SQLException ex) {
            // Si hay una excepcion se imprime un mensaje
            System.err.println(ex.getMessage());
        }
        
        // Retorna al plan que saco de la base de datos y en caso de no
        // conseguirlo retorna null.
        return costo;        
        
    }
    
    /**
     * Verifica si un plan es igual a this.
     * @return Regresa true si el plan pasado como parametro tiene los
     * mismos atributos que this.
     */
    @Override
    public boolean equals(Object obj) {
        
        Plan plan = (Plan) obj;
        
        return (plan.nombre.equals(this.nombre)) &
               (plan.descripcion.equals(this.descripcion)) &
               (plan.tipoPlan.equals(this.tipoPlan));
    }
    
   
    
}




---------------------- DATOS SUMINISTRADOS EN LA TAREA -------------------------

-- Insertando Modelos genericos de los codificadores --
INSERT INTO MODELO VALUES('Modelo 1');
INSERT INTO MODELO VALUES('Modelo 2');
INSERT INTO MODELO VALUES('Modelo 3');

-- Agregando los Planes TVCABLE previstos en el PDF --
INSERT INTO PLAN VALUES('1', 'Plan TVCABLE Bronce', 140, 'PREPAGO', 'El plan TVCABLE Bronce tiene un costo de Bs. 140 mensuales, aplica para clientes prepago y postpago, e incluye los siguientes tipos de canales: 14 nacionales, 15 variedades, 4 cine, 4 deportes, 9 mundos, 4 kids y 7 radio.');
INSERT INTO PLAN VALUES('2', 'Plan TVCABLE Bronce', 140, 'POSTPAGO', 'El plan TVCABLE Bronce tiene un costo de Bs. 140 mensuales, aplica para clientes prepago y postpago, e incluye los siguientes tipos de canales: 14 nacionales, 15 variedades, 4 cine, 4 deportes, 9 mundos, 4 kids y 7 radio.');

INSERT INTO PLAN VALUES('3', 'Plan TVCABLE Plata', 220, 'PREPAGO', 'El plan TVCABLE Plata tiene un costo de Bs. 220 mensuales, aplica para clientes prepago y postpago, e incluye los siguientes tipos de canales: 14 nacionales, 28 variedades, 7 kids, 10 cine 9 deportes 20 mundos y 37 radio.');
INSERT INTO PLAN VALUES('4', 'Plan TVCABLE Plata', 220, 'POSTPAGO', 'El plan TVCABLE Plata tiene un costo de Bs. 220 mensuales, aplica para clientes prepago y postpago, e incluye los siguientes tipos de canales: 14 nacionales, 28 variedades, 7 kids, 10 cine 9 deportes 20 mundos y 37 radio.');

--Agregamos los tipos de servicios correspondientes a TVCABLE--
INSERT INTO TIPO_SERVICIO VALUES('CANAL NACIONAL');
INSERT INTO TIPO_SERVICIO VALUES('CANAL KIDS');
INSERT INTO TIPO_SERVICIO VALUES('CANAL CINE');
INSERT INTO TIPO_SERVICIO VALUES('CANAL VARIEDAD');
INSERT INTO TIPO_SERVICIO VALUES('CANAL DEPORTE');
INSERT INTO TIPO_SERVICIO VALUES('CANAL RADIO');
INSERT INTO TIPO_SERVICIO VALUES('CANAL MUNDO');
INSERT INTO TIPO_SERVICIO VALUES('PELICULA');

--Agregamos los servicios que TVCABLE ofrece--
CREATE SEQUENCE CODIGO_SERVICIO START WITH 1 INCREMENT BY 1;
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'PELICULA', 'Pelicula Pago Por Ver', 0, 0, 'Pelicula Pago Por Ver');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL DEPORTE', 'SPN', 10, 20, 'Canal SPN');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'TV BRASIL', 10, 20, 'TV BRASIL');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL MUNDO', 'NoticiasMundial', 10, 20, 'Canal NoticiasMundial');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL KIDS', 'Cartoon Network', 30, 40, 'Canal americano Cartoon Network');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL KIDS', 'Nickelodeon', 25, 35, 'Canal americano Nickelodeon');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL KIDS', 'Disney Channel', 40, 50, 'Canal americano Disney Channel');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL KIDS', 'Disney XD', 15, 20, 'Canal americano Disney XD');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL KIDS', 'Boomerang', 30, 40, 'Canal americano Boomerang');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL KIDS', 'FoxKids', 30, 40, 'Canal americano FoxKids');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL KIDS', 'Discovery Kids', 30, 40, 'Canal americano Discovery Kids');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL NACIONAL', 'Venevision', 10, 20, 'Canal Venevision');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL NACIONAL', 'RCTV', 10, 20, 'Canal RCTV');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL NACIONAL', 'Televen', 15, 25, 'Canal Televen');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL NACIONAL', 'Globovision', 10, 20, 'Canal Globovision');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL NACIONAL', 'Nacional5', 10, 20, 'Canal Nacional5');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL NACIONAL', 'Nacional6', 10, 20, 'Canal Nacional6');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL NACIONAL', 'Nacional7', 10, 20, 'Canal Nacional7');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL NACIONAL', 'Nacional8', 10, 20, 'Canal Nacional8');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL NACIONAL', 'Nacional9', 10, 20, 'Canal Nacional9');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL NACIONAL', 'Nacional10', 10, 20, 'Canal Nacional10');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL NACIONAL', 'Nacional11', 10, 20, 'Canal Nacional11');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL NACIONAL', 'Nacional12', 10, 20, 'Canal Nacional12');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL NACIONAL', 'Nacional13', 10, 20, 'Canal Nacional13');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL NACIONAL', 'Nacional14', 10, 20, 'Canal Nacional14');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad1', 10, 20, 'Canal Variedad1');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad2', 10, 20, 'Canal Variedad2');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad3', 10, 20, 'Canal Variedad3');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad4', 10, 20, 'Canal Variedad4');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad5', 10, 20, 'Canal Variedad5');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad6', 10, 20, 'Canal Variedad6');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad7', 10, 20, 'Canal Variedad7');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad8', 10, 20, 'Canal Variedad8');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad9', 10, 20, 'Canal Variedad9');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad10', 10, 20, 'Canal Variedad10');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad11', 10, 20, 'Canal Variedad11');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad12', 10, 20, 'Canal Variedad12');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad13', 10, 20, 'Canal Variedad13');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad14', 10, 20, 'Canal Variedad14');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad15', 10, 20, 'Canal Variedad15');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad16', 10, 20, 'Canal Variedad16');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad17', 10, 20, 'Canal Variedad17');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad18', 10, 20, 'Canal Variedad18');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad19', 10, 20, 'Canal Variedad19');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad20', 10, 20, 'Canal Variedad20');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad21', 10, 20, 'Canal Variedad21');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad22', 10, 20, 'Canal Variedad22');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad23', 10, 20, 'Canal Variedad23');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad24', 10, 20, 'Canal Variedad24');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad25', 10, 20, 'Canal Variedad25');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad26', 10, 20, 'Canal Variedad26');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad27', 10, 20, 'Canal Variedad27');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL VARIEDAD', 'Variedad28', 10, 20, 'Canal Variedad28');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL CINE', 'Cine1', 10, 20, 'Canal Cine1');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL CINE', 'Cine2', 10, 20, 'Canal Cine2');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL CINE', 'Cine3', 10, 20, 'Canal Cine3');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL CINE', 'Cine4', 10, 20, 'Canal Cine4');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL CINE', 'Cine5', 10, 20, 'Canal Cine5');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL CINE', 'Cine6', 10, 20, 'Canal Cine6');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL CINE', 'Cine7', 10, 20, 'Canal Cine7');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL CINE', 'Cine8', 10, 20, 'Canal Cine8');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL CINE', 'Cine9', 10, 20, 'Canal Cine9');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL CINE', 'Cine10', 10, 20, 'Canal Cine10');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL DEPORTE', 'Deporte1', 10, 20, 'Canal Deporte1');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL DEPORTE', 'Deporte2', 10, 20, 'Canal Deporte2');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL DEPORTE', 'Deporte3', 10, 20, 'Canal Deporte3');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL DEPORTE', 'Deporte4', 10, 20, 'Canal Deporte4');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL DEPORTE', 'Deporte5', 10, 20, 'Canal Deporte5');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL DEPORTE', 'Deporte6', 10, 20, 'Canal Deporte6');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL DEPORTE', 'Deporte7', 10, 20, 'Canal Deporte7');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL DEPORTE', 'Deporte8', 10, 20, 'Canal Deporte8');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL DEPORTE', 'Deporte9', 10, 20, 'Canal Deporte9');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL MUNDO', 'Mundo1', 10, 20, 'Canal Mundo1');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL MUNDO', 'Mundo2', 10, 20, 'Canal Mundo2');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL MUNDO', 'Mundo3', 10, 20, 'Canal Mundo3');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL MUNDO', 'Mundo4', 10, 20, 'Canal Mundo4');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL MUNDO', 'Mundo5', 10, 20, 'Canal Mundo5');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL MUNDO', 'Mundo6', 10, 20, 'Canal Mundo6');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL MUNDO', 'Mundo7', 10, 20, 'Canal Mundo7');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL MUNDO', 'Mundo8', 10, 20, 'Canal Mundo8');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL MUNDO', 'Mundo9', 10, 20, 'Canal Mundo9');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL MUNDO', 'Mundo10', 10, 20, 'Canal Mundo10');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL MUNDO', 'Mundo11', 10, 20, 'Canal Mundo11');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL MUNDO', 'Mundo12', 10, 20, 'Canal Mundo12');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL MUNDO', 'Mundo13', 10, 20, 'Canal Mundo13');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL MUNDO', 'Mundo14', 10, 20, 'Canal Mundo14');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL MUNDO', 'Mundo15', 10, 20, 'Canal Mundo15');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL MUNDO', 'Mundo16', 10, 20, 'Canal Mundo16');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL MUNDO', 'Mundo17', 10, 20, 'Canal Mundo17');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL MUNDO', 'Mundo18', 10, 20, 'Canal Mundo18');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL MUNDO', 'Mundo19', 10, 20, 'Canal Mundo19');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL MUNDO', 'Mundo20', 10, 20, 'Canal Mundo20');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio1', 10, 20, 'Canal Radio1');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio2', 10, 20, 'Canal Radio2');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio3', 10, 20, 'Canal Radio3');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio4', 10, 20, 'Canal Radio4');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio5', 10, 20, 'Canal Radio5');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio6', 10, 20, 'Canal Radio6');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio7', 10, 20, 'Canal Radio7');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio8', 10, 20, 'Canal Radio8');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio9', 10, 20, 'Canal Radio9');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio10', 10, 20, 'Canal Radio10');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio11', 10, 20, 'Canal Radio11');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio12', 10, 20, 'Canal Radio12');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio13', 10, 20, 'Canal Radio13');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio14', 10, 20, 'Canal Radio14');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio15', 10, 20, 'Canal Radio15');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio16', 10, 20, 'Canal Radio16');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio17', 10, 20, 'Canal Radio17');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio18', 10, 20, 'Canal Radio18');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio19', 10, 20, 'Canal Radio19');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio20', 10, 20, 'Canal Radio20');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio21', 10, 20, 'Canal Radio21');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio22', 10, 20, 'Canal Radio22');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio23', 10, 20, 'Canal Radio23');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio24', 10, 20, 'Canal Radio24');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio25', 10, 20, 'Canal Radio25');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio26', 10, 20, 'Canal Radio26');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio27', 10, 20, 'Canal Radio27');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio28', 10, 20, 'Canal Radio28');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio29', 10, 20, 'Canal Radio29');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio30', 10, 20, 'Canal Radio30');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio31', 10, 20, 'Canal Radio31');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio32', 10, 20, 'Canal Radio32');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio33', 10, 20, 'Canal Radio33');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio34', 10, 20, 'Canal Radio34');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio35', 10, 20, 'Canal Radio35');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio36', 10, 20, 'Canal Radio36');
INSERT INTO SERVICIO VALUES(nextval('CODIGO_SERVICIO'),'CANAL RADIO', 'Radio37', 10, 20, 'Canal Radio37');
DROP SEQUENCE CODIGO_SERVICIO;

--Incluimos el servicio adicional pay per view. --
INSERT INTO SERV_ADICIONAL VALUES('1',1, 'POSTPAGO', 12);
--Incluimos el servicio adicional TV BRASIL. --
INSERT INTO SERV_ADICIONAL VALUES('2',1, 'TODOS', 42);
--Incluimos el servicio adicional SPN. --
INSERT INTO SERV_ADICIONAL VALUES('3',1, 'TODOS', 30);
--Incluimos el servicio adicional NOTICIASMUNDIAL. --
INSERT INTO SERV_ADICIONAL VALUES('4',1, 'TODOS', 35);


-- Agregamos informacion de los paquetes disponibles en TVCABLE -- 
INSERT INTO PAQUETE VALUES(1,'BRONCE');
INSERT INTO PAQUETE VALUES(2,'PLATA');


-- Agregamos los servicios que va a incluir cada paquete --

-- Paquete incluido en el PLAN TV CABLE BRONCE:
-- Incluye 14 canales de tipo nacional
CREATE SEQUENCE CODIGO_SERVICIO_PQT START WITH 12 INCREMENT BY 1;
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
DROP SEQUENCE CODIGO_SERVICIO_PQT;

-- Incluye 28 canales de tipo variedad
CREATE SEQUENCE CODIGO_SERVICIO_PQT START WITH 26 INCREMENT BY 1;
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
DROP SEQUENCE CODIGO_SERVICIO_PQT;

-- Incluye 4 canales de tipo cine
CREATE SEQUENCE CODIGO_SERVICIO_PQT START WITH 54 INCREMENT BY 1;
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
DROP SEQUENCE CODIGO_SERVICIO_PQT;


-- Incluye 4 canales de tipo deporte
CREATE SEQUENCE CODIGO_SERVICIO_PQT START WITH 64 INCREMENT BY 1;
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
DROP SEQUENCE CODIGO_SERVICIO_PQT;


-- Incluye 9 canales de tipo mundo
CREATE SEQUENCE CODIGO_SERVICIO_PQT START WITH 73 INCREMENT BY 1;
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
DROP SEQUENCE CODIGO_SERVICIO_PQT;

-- Incluye 7 canales de tipo radio
CREATE SEQUENCE CODIGO_SERVICIO_PQT START WITH 93 INCREMENT BY 1;
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
DROP SEQUENCE CODIGO_SERVICIO_PQT;

-- Incluye 4 canales de tipo kid 
CREATE SEQUENCE CODIGO_SERVICIO_PQT START WITH 5 INCREMENT BY 1;
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(1,nextval('CODIGO_SERVICIO_PQT'),1);
DROP SEQUENCE CODIGO_SERVICIO_PQT;

-- Paquete incluido en el PLAN TV CABLE PLATA
-- Incluye 14 canales de tipo nacional
CREATE SEQUENCE CODIGO_SERVICIO_PQT START WITH 12 INCREMENT BY 1;
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
DROP SEQUENCE CODIGO_SERVICIO_PQT;

-- Incluye 28 canales de tipo variedad
CREATE SEQUENCE CODIGO_SERVICIO_PQT START WITH 26 INCREMENT BY 1;
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
DROP SEQUENCE CODIGO_SERVICIO_PQT;

-- Incluye 7 canales de tipo kid 
CREATE SEQUENCE CODIGO_SERVICIO_PQT START WITH 5 INCREMENT BY 1;
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
DROP SEQUENCE CODIGO_SERVICIO_PQT;

-- Incluye 10 canales de tipo cine
CREATE SEQUENCE CODIGO_SERVICIO_PQT START WITH 54 INCREMENT BY 1;
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
DROP SEQUENCE CODIGO_SERVICIO_PQT;

-- Incluye 9 canales de tipo deporte
CREATE SEQUENCE CODIGO_SERVICIO_PQT START WITH 64 INCREMENT BY 1;
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
DROP SEQUENCE CODIGO_SERVICIO_PQT;

-- Incluye 20 canales de tipo mundo
CREATE SEQUENCE CODIGO_SERVICIO_PQT START WITH 73 INCREMENT BY 1;
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
DROP SEQUENCE CODIGO_SERVICIO_PQT;

-- Incluye 37 canales de tipo radio
CREATE SEQUENCE CODIGO_SERVICIO_PQT START WITH 93 INCREMENT BY 1;
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
INSERT INTO INCLUYE_SERVICIO VALUES(2,nextval('CODIGO_SERVICIO_PQT'),1);
DROP SEQUENCE CODIGO_SERVICIO_PQT;


-- Agregamos informacion sobre los paquetes que ofrece cada plan --

-- El Plan TVCABLE BRONCE (PREPAGO) Incluye el paquete BRONCE
INSERT INTO OFRECE_PAQUETE VALUES(1,1);
-- El Plan TVCABLE BRONCE (POSTPAGO) Incluye el paquete BRONCE
INSERT INTO OFRECE_PAQUETE VALUES(2,1);
-- El Plan TVCABLE PLATA (PREPAGO) Incluye el paquete PLATA
INSERT INTO OFRECE_PAQUETE VALUES(3,2);
-- El Plan TVCABLE PLATA (POSTPAGO) Incluye el paquete PLATA
INSERT INTO OFRECE_PAQUETE VALUES(4,2);



-- REQUERIMIENTOS DESCRITOS EN LA TAREA 2 --


-- ******* i) 15 clientes registrados y afiliados a planes de servicio *********

-- Agregamos clientes a la base de datos TVCABLE

--Sin tarjeta
INSERT INTO CLIENTE VALUES(23555789,'Fernando DAgostino','Nowhere - Bioshock Field',NULL,NULL,NULL,NULL);
--Con tarjeta
INSERT INTO CLIENTE VALUES(23608027,'Andres Jimenez','Sunrise Garden',131313135,'MERCANTIL','CREDITO',to_date('13-04-2016', 'DD-MM-YYYY'));
--Con tarjeta
INSERT INTO CLIENTE VALUES(25777209,'Arturo Voltattorni','Guacara Hills - Madison Square',889988997,'BANCARIBE','DEBITO', to_date('08-09-2022', 'DD-MM-YYYY'));

-- 9 clientes sin tarjeta

CREATE SEQUENCE CODIGO_CLIENTE START WITH 20000000 INCREMENT BY 1;
INSERT INTO CLIENTE VALUES(nextval('CODIGO_CLIENTE'),'Maria Ines','La concepcion',NULL,NULL,NULL,NULL);
INSERT INTO CLIENTE VALUES(nextval('CODIGO_CLIENTE'),'Petra Ines','La concepcion',NULL,NULL,NULL,NULL);
INSERT INTO CLIENTE VALUES(nextval('CODIGO_CLIENTE'),'Oscar Valero','Carabobo - Valencia',NULL,NULL,NULL,NULL);
INSERT INTO CLIENTE VALUES(nextval('CODIGO_CLIENTE'),'Hector Padron','Miranda - Los Teques',NULL,NULL,NULL,NULL);
INSERT INTO CLIENTE VALUES(nextval('CODIGO_CLIENTE'),'Kyra Goncalves','Caracas',NULL,NULL,NULL,NULL);
INSERT INTO CLIENTE VALUES(nextval('CODIGO_CLIENTE'),'Martina Valenzuela','Miranda - Las Minas',NULL,NULL,NULL,NULL);
INSERT INTO CLIENTE VALUES(nextval('CODIGO_CLIENTE'),'Octavio Perez','Baruta',NULL,NULL,NULL,NULL);
INSERT INTO CLIENTE VALUES(nextval('CODIGO_CLIENTE'),'Iris Varela','Miraflores',NULL,NULL,NULL,NULL);
INSERT INTO CLIENTE VALUES(nextval('CODIGO_CLIENTE'),'Augusto Villanueva','Holanda - La Guaira',NULL,NULL,NULL,NULL);

-- 7 clientes con tarjeta
CREATE SEQUENCE NUMERO_TARJETA START WITH 1 INCREMENT BY 1;
-- DEBITO
INSERT INTO CLIENTE VALUES(nextval('CODIGO_CLIENTE'),'Gisela Martino','Guacara',
nextval('NUMERO_TARJETA'),'VENEZUELA','DEBITO', to_date('08-09-2023', 'DD-MM-YYYY'));
INSERT INTO CLIENTE VALUES(nextval('CODIGO_CLIENTE'),'Esperanza Quintero','Venezuela City',
nextval('NUMERO_TARJETA'),'BANCARIBE','DEBITO', to_date('08-09-2023', 'DD-MM-YYYY'));
INSERT INTO CLIENTE VALUES(nextval('CODIGO_CLIENTE'),'Giselo Martino','Texas de Caracas',
nextval('NUMERO_TARJETA'),'MERCANTIL','DEBITO', to_date('11-05-2023', 'DD-MM-YYYY'));
INSERT INTO CLIENTE VALUES(nextval('CODIGO_CLIENTE'),'Lesther Diaz','Magallanes Plaza',
nextval('NUMERO_TARJETA'),'BANCARIBE','DEBITO', to_date('08-09-2023', 'DD-MM-YYYY'));

-- CREDITO
INSERT INTO CLIENTE VALUES(nextval('CODIGO_CLIENTE'),'Ovidio Lozada','Guacara',
nextval('NUMERO_TARJETA'),'BANCARIBE','CREDITO', to_date('05-07-2018', 'DD-MM-YYYY'));
INSERT INTO CLIENTE VALUES(nextval('CODIGO_CLIENTE'),'Gustavo Arocha','Miranda - Los Teques',
nextval('NUMERO_TARJETA'),'MERCANTIL','CREDITO', to_date('08-09-2019', 'DD-MM-YYYY'));
INSERT INTO CLIENTE VALUES(nextval('CODIGO_CLIENTE'),'Pedro Monascal','Caracas - Sartenejas',
nextval('NUMERO_TARJETA'),'VENEZUELA','CREDITO', to_date('21-06-2021', 'DD-MM-YYYY'));

DROP SEQUENCE CODIGO_CLIENTE;
DROP SEQUENCE NUMERO_TARJETA;


-- ******* ii) Exista al menos un cliente que posea dos productos, uno afiliado
-- a un plan prepago y el otro a un plan postpago *********

-- Insercion del cliente que cumplira con el requerimiento ii)
INSERT INTO CLIENTE VALUES (28500000,'Cliente Requerimiento ii)','USB - Sartenejas',
999999999999,'VENEZUELA','CREDITO', to_date('17-08-2029', 'DD-MM-YYYY'));

-- Cliente Requerimiento ii afilia el codificador p1 al Plan Postpago #4 TVPLATA
INSERT INTO PRODUCTO VALUES ('p1',28500000,4,'Modelo 2',CURRENT_DATE,'CREDITO',20);
-- Cliente Requerimiento ii afilia el codificador p2 al Plan Prepago #1 TVBRONCE                            
INSERT INTO PRODUCTO VALUES ('p2',28500000,1,'Modelo 3',CURRENT_DATE,'EFECTIVO',20);
                                 
   
-- ******* iii) Exista un paquete de servicios sin suscriptores *********   

-- Insercion del paquete Requerimiento iii. No tendra ningun suscriptor asociado.                                 
INSERT INTO PAQUETE VALUES(3,'Requerimiento iii)');                                
-- Insercion de algunos servicios dentro del paquete
INSERT INTO INCLUYE_SERVICIO VALUES(3,5,1);  -- SERVICIO  #5 CARTOON NETWORK
INSERT INTO INCLUYE_SERVICIO VALUES(3,10,1); -- SERVICIO #10 FOXKID
INSERT INTO INCLUYE_SERVICIO VALUES(3,15,1); -- SERVICIO #15 GLOBOVISION
                                 
                                 
-- ******* iv) Exista al menos un cliente afiliado solo a un plan *********                                   

-- Insercion del cliente que cumplira con el requerimiento iv)
INSERT INTO CLIENTE VALUES (28500001,'Cliente Requerimiento iv)','USB - Sartenejas',
NULL,NULL,NULL,NULL);

-- Cliente Requerimiento iv) afilia sus codificadores c1, c2, c3 y c4 a un mismo 
-- plan (PLAN TVBRONCE PREPAGO)
INSERT INTO PRODUCTO VALUES ('c1',28500001,1,'Modelo 1',CURRENT_DATE,'EFECTIVO',20);  
INSERT INTO PRODUCTO VALUES ('c2',28500001,1,'Modelo 2',CURRENT_DATE,'EFECTIVO',20);  
INSERT INTO PRODUCTO VALUES ('c3',28500001,1,'Modelo 3',CURRENT_DATE,'EFECTIVO',20);  
INSERT INTO PRODUCTO VALUES ('c4',28500001,1,'Modelo 1',CURRENT_DATE,'EFECTIVO',20);  

                                 
-- ******* v) Exista al menos un cliente afiliado a un plan y servicios adicionales

-- Insercion del cliente que cumplira con el requerimiento v)
INSERT INTO CLIENTE VALUES (28500002,'Cliente Requerimiento v)','USB - Sartenejas',
NULL,NULL,NULL,NULL);                 
-- Cliente Requerimiento v) afilia el codificador p3 al Plan Prepago #1 TVBRONCE                              
INSERT INTO PRODUCTO VALUES ('p3',28500002,1,'Modelo 1',CURRENT_DATE,'EFECTIVO',20);                                 
-- Cliente Requerimiento v) contrata los servicios adicionales SPN y 
-- NOTICIASMUNDIAL respectivamente
INSERT INTO CONTRATA_ADICIONAL VALUES('p3',3,CURRENT_DATE);
INSERT INTO CONTRATA_ADICIONAL VALUES('p3',4,CURRENT_DATE);                 
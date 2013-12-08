LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;
USE ieee.numeric_std.all;

ENTITY reloj IS

	PORT(
		--4 display 7 Segmentos
		HEX3 	:OUT std_logic_vecTOr(0 TO 7); --Numero mas significativo
		HEX2 	:OUT std_logic_vecTOr(0 TO 7);
		HEX1 	:OUT std_logic_vecTOr(0 TO 7);
		HEX0 	:OUT std_logic_vecTOr(0 TO 7); --Numero menos significativo
		
		
		--Switches
		SW	:IN std_logic_vecTOr(9 DOWNTO 0); 
		
		--Clock
		CLOCK_50	:IN std_logic; --	
		
		--botones
		KEY	:IN std_logic_vecTOr(2 DOWNTO 0)--Uso un boton como reset
	
		);

END ENTITY reloj;

ARCHITECTURE implementation OF reloj IS


	--COMPONENTe que mapea numeros con su codIFicacion en 7 segmentos.
	COMPONENT segmenTOs7 IS
		PORT(
			num: IN integer;
			salida: OUT std_logic_vecTOr(0 TO 6));
	END COMPONENT segmenTOs7;




	
	TYPE TIPO_ESTADO IS (
								INICIO,  --Modo mostrar Hora
								S1, 	--Modo Cronometro 
								S2 		--Modo Setear Hora
								);
								
	TYPE TIPO_ESTADO_CRON IS (
								RUN,  	--Modo CorriENDo
								PAUSE,	--Modo Pausado
								RESET		--Modo Reset
								);	
								
	SIGNAL EA 	:TIPO_ESTADO := INICIO; --Estado Actual
	SIGNAL ES	:TIPO_ESTADO:=INICIO;	--Estado Siguiente
	
	SIGNAL ESTADO_CRON : TIPO_ESTADO_CRON :=PAUSE;	--Estado del Cronometro
	
	SIGNAL CLOCK_CT: std_logic := '0'; --SeÃ±al de Clock de perÃ­odo 0.01s (centesimas)
	
	SIGNAL U_CC,D_CC,U_SS,D_SS,U_MM,D_MM,U_HH,D_HH		:integer :=0; --Variables para llevar la hora
	SIGNAL U_CC_CRON,D_CC_CRON,U_SS_CRON,D_SS_CRON		:integer :=0; --Variables para llevar el cronometro
	SIGNAL switch0,switch1,boton1,boton2					:std_logic;   --Variables que se mapean con los switches y los botones
	SIGNAL primerDig,segundoDig,tercerDig,cuartoDig		:integer :=0; --Lo que este en estas variables es lo que se muestra en el display 7 seg
	
	SIGNAL count	: integer := 1;
	
	SIGNAL estadoBT1,estadoBT2: std_logic := '0'; --Variables para mantener el estado de los botones
	

	

	
BEGIN		

	HEX0(7)<='1'; --Apago el punto
	HEX1(7)<='1'; --Apago el punto
	HEX2(7)<='0'; --Prendo el punto divisor
	HEX3(7)<='1'; --Apago el punto
	
	--Mapeo el valor de los botones/switches a estas señales auxiliares
	switch0 <= SW(0);
	switch1 <= SW(1);
	boton1 <= KEY(0);
	boton2 <= KEY(1);
	

	
	
		
CLK1:	PROCESS(CLOCK_50) --Convierte el clock de 50MHz a 100Hz. Teniendo un periodo de 0,01s
	
	BEGIN
		IF(rising_edge(CLOCK_50)) THEN 
			EA <= ES;
			count <=count+1;
			IF(count = 250000) THEN -- Aca va 250000
				CLOCK_CT <= not CLOCK_CT; --Paso 1 ms
				count <=1; --Reseteo
			END IF;
		END IF;
			
END PROCESS CLK1;

		
		
CLK: PROCESS (CLOCK_CT) 


	BEGIN
		IF(rising_edge(CLOCK_CT)) THEN
		
		--Si voy a un estado que no sea el del cronomentro pauso la cuenta del cronometro.
			IF (EA/=S1) THEN
				ESTADO_CRON<=PAUSE;
			END IF;
		
			--Si estoy en modo cronometro y se presiona algun boton -->Actualizo estado cronometro
			IF (EA = S1) THEN
				IF (boton1 = '0') AND (estadoBT1 = '0') THEN --Si se pulsa el boton de reset se va a estado Reset
					ESTADO_CRON <= RESET;
					estadoBT1 <= '1';
				ELSE
					IF (boton2 = '0') AND (estadoBT2 = '0') THEN --Si se pulsa el boton de Start/Pause se va al estado opuesto
						estadoBT2<='1';
						IF (ESTADO_CRON = PAUSE) THEN
							ESTADO_CRON <= RUN;
						ELSE
							ESTADO_CRON<=PAUSE;
						END IF;
					END IF;
				END IF;
			END IF;
			
			--Maquina de estados para el cronometro
			IF (EA = S1) THEN
				CASE ESTADO_CRON IS
				
					--Reset pone a cero los contadores y pausa el cronometro
					WHEN RESET =>
								U_CC_CRON<=0;
								D_CC_CRON<=0;
								U_SS_CRON<=0;
								D_SS_CRON<=0;
								ESTADO_CRON <= PAUSE;
								
					--En Run aumento variables
					WHEN RUN =>
								U_CC_CRON<=U_CC_CRON+1;
								IF (U_CC_CRON = 9) THEN
								U_CC_CRON<=0;
								D_CC_CRON<=D_CC_CRON+1;
									IF (D_CC_CRON = 9) THEN
										D_CC_CRON<=0;
										U_SS_CRON<=U_SS_CRON+1;
										IF (U_SS_CRON = 9) THEN
											U_SS_CRON<=0;
											D_SS_CRON<=D_SS_CRON+1;
											IF (D_SS_CRON = 5)THEN
												D_SS_CRON<=0;
											END IF;
										END IF;
									END IF;
								END IF;	
					
					WHEN PAUSE => 
								U_CC_CRON<=U_CC_CRON;
								D_CC_CRON<=D_CC_CRON;
								U_SS_CRON<=U_SS_CRON;
								D_SS_CRON<=D_SS_CRON;
					
					WHEN OTHERS =>
								U_CC_CRON<=U_CC_CRON+1;
								IF (U_CC_CRON = 9) THEN
								U_CC_CRON<=0;
								D_CC_CRON<=D_CC_CRON+1;
									IF (D_CC_CRON = 9) THEN
										D_CC_CRON<=0;
										U_SS_CRON<=U_SS_CRON+1;
										IF (U_SS_CRON = 9) THEN
											U_SS_CRON<=0;
											D_SS_CRON<=D_SS_CRON+1;
											IF (D_SS_CRON = 5)THEN
												D_SS_CRON<=0;
											END IF;
										END IF;
									END IF;
								END IF;
					
				END CASE;
				
			END IF;
		
			--Si se suelta el boton1 lo habilito para que se pulse de nuevo
			IF (boton1 = '1') THEN
				estadoBT1<='0';
			END IF;
		
			--Si se suelta el boton2 lo habilito para que se pulse de nuevo
			IF (boton2 = '1') THEN
				estadoBT2<='0';
			END IF;
			
			--Actualizo la hora
			U_CC<=U_CC+1;
			IF (U_CC = 9) THEN
				U_CC<=0;
				D_CC<=D_CC+1;
				IF (D_CC = 9) THEN
					D_CC<=0;
					U_SS<=U_SS+1;
					IF (U_SS = 9) THEN
						U_SS<=0;
						D_SS<=D_SS+1;
						IF (D_SS = 5)THEN
							D_SS<=0;
							U_MM<=U_MM+1;
							IF (U_MM = 9) THEN
								U_MM<=0;
								D_MM<=D_MM+1;
								IF (D_MM = 5) THEN
									D_MM<=0;
									U_HH<=U_HH+1;
									IF (D_HH = 2) THEN
										IF (U_HH = 3) THEN
											U_HH<=0;
											D_HH<=0;
										END IF;
									ELSE
										IF (U_HH = 9)THEN
											U_HH<=0;
											D_HH<=D_HH+1;
										END IF;
									END IF;
								END IF;		
							END IF;
						END IF;
					END IF;
				END IF;
			END IF;
			--END actualizar hora
		
		
			--Si se pulsa el boton de aumentar minuto estado en modo setear Hora
			IF ((EA = S2) AND (boton1 = '0') AND  (estadoBT1='0')) THEN
				estadoBT1<='1'; 
				U_MM<=U_MM+1;
				IF (U_MM = 9) THEN
					U_MM<=0;
					D_MM<=D_MM+1;
					IF (D_MM = 5) THEN
						D_MM<=0;
						U_HH<=U_HH+1;
						IF (D_HH = 2) THEN
							IF (U_HH = 3) THEN
								U_HH<=0;
								D_HH<=0;
							END IF;
						ELSE
							IF (U_HH = 9)THEN
								U_HH<=0;
								D_HH<=D_HH+1;
							END IF;
						END IF;
					END IF;
				END IF;	
			END IF;
			--END aumenta minuto	
			
			--Si se pulsa el boton de aumentar hora estado en modo setear Hora
			IF ((EA = S2) AND (boton2 = '0') AND (estadoBT2='0')) THEN
				estadoBT2<='1';
				U_HH<=U_HH+1;
				IF (D_HH = 2) THEN
					IF (U_HH = 3) THEN
						U_HH<=0;
						D_HH<=0;
					END IF;
				ELSE
					IF (U_HH = 9)THEN
						U_HH<=0;
						D_HH<=D_HH+1;
					END IF;
				END IF;
			END IF;
			--END aumenta hora
		
		
		END IF; --END del if del rising edge del CLOCK_CT	

END PROCESS CLK;
	
				
--Maquina de  Estados		
COM: PROCESS (EA,switch0,switch1)	
	BEGIN
		CASE EA IS
		
			WHEN INICIO =>--Modo Mostar Hora
			
						--Muestro en el display la hora actual
						primerDig<=D_HH;
						segundoDig<=U_HH;
						tercerDig<=D_MM;
						cuartoDig<=U_MM;
						
						IF (switch0 = '1') THEN --Si Switch0 se pone en 1 --> Modo cronometro (Le doy prioridad a este modo antes del setear hora)
							ES <= S1;
						ELSE --Sino el Switch0 esta en 0 --> Modo Hora
							IF (switch1 = '1') THEN --Si el Swtich1 esta en 1 -->Modo Setear Hora
								ES <= S2;
							ELSE --Si el Swtich1 esta en 0 -->Modo Mostrar Hora
								ES <= INICIO;
							END IF;	
						END IF;
				
			WHEN S2 => --Modo Setear Hora
					
						--Muestro en el display la hora actual
						primerDig<=D_HH;
						segundoDig<=U_HH;
						tercerDig<=D_MM;
						cuartoDig<=U_MM;
						
						IF (switch0 = '0' AND switch1= '0') THEN --Puse modo Hora y mostrar hora
							ES<=INICIO; 
						ELSE
							IF (switch0 = '1' AND switch1= '0') THEN --Modo mostrar hora y modo cronomentro. Si pongo modo cronomentro y no salgo de setear hora no va al cronometro.
									ES<=S1; --Voy al modo cronometro
							ELSE	
									ES<=S2; --Voy al modo Setear Hora
							END IF;
						END IF;
				
			WHEN S1 => --Modo Cronometro
						
						--Muestro en el display la cuenta del cronometro
						primerDig<=D_SS_CRON;
						segundoDig<=U_SS_CRON;
						tercerDig<=D_CC_CRON;
						cuartoDig<=U_CC_CRON;
						
						IF ((switch0 = '0' ) AND (switch1 = '0')) THEN --Modo Hora - Mostrar Hora
							ES<=INICIO; 
						ELSE
							IF ((switch0 = '0' ) AND (switch1 = '1')) THEN --Modo Hora - Modo Setear Hora
								ES<= S2; 
							ELSE --switch0 esta en '1'
								ES<=S1; --Modo Cronometro
							END IF;
						END IF;
					
				
			WHEN OTHERS =>
					ES<= INICIO;
				
						
		END CASE;		
		
END PROCESS COM;
	
--Mapea los digitos a mostrar con cada display 7 segmentos.	
D1: segmenTOs7 PORT MAP (primerDig,HEX3(0 TO 6));
D2: segmenTOs7 PORT MAP (segundoDig,HEX2(0 TO 6));
D3: segmenTOs7 PORT MAP (tercerDig,HEX1(0 TO 6));
D4: segmenTOs7 PORT MAP (cuartoDig,HEX0(0 TO 6));
		
END ARCHITECTURE implementation;
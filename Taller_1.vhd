library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
entity reloj is

	port(
		--4 Display 7 Segmentos
		HEX3 	:out std_logic_vector(0 to 7); --Numero mas significativo
		HEX2 	:out std_logic_vector(0 to 7);
		HEX1 	:out std_logic_vector(0 to 7);
		HEX0 	:out std_logic_vector(0 to 7); --Numero menos significativo
		
		
		--Switches
		SW	:in std_logic_vector(9 downto 0); --Uso un boton como reset
		--switch0 	:in std_logic; --Derecha. Cambia modo hora/cronometro
		--switch1	:in std_logic; --Izquierda. Setear/mostrar hora
		
		CLOCK_50	:in std_logic; --	
		
		--Botones
		KEY	:in std_logic_vector(2 downto 0); --Uso un boton como reset
		--boton1	:in std_logic; 
		--boton2	:in std_logic;
		
		
		U_S1,D_S1,U_M1,estado : out integer;
		
		clk_out :out std_logic
		
		);
end entity reloj;

architecture implementation of reloj is

	component segmentos7 IS
		port(
			num: in integer;
			salida: out std_logic_vector(0 to 6));
	end component segmentos7;




	
	type TIPO_ESTADO is (
								INICIO,  --Modo mostrar Hora
								S1, 		--Modo Cronometro 
								S2 		--Modo Setear Hora
								);
								
	type TIPO_ESTADO_CRON is (
								RUN,
								PAUSE,
								RESET
								);	
								
	signal EA 	:TIPO_ESTADO := INICIO; 
	signal ES	:TIPO_ESTADO:=INICIO;
	signal ESTADO_CRON : TIPO_ESTADO_CRON := RESET;
	signal aux,aux2,aux3,aux4 : std_logic:='0';
	signal CLOCK_MS,CLOCK_10 		: std_logic := '0';
	
	signal U_CC,D_CC,U_SS,D_SS,U_MM,D_MM,U_HH,D_HH		:integer :=0;
	signal U_CC_CRON,D_CC_CRON,U_SS_CRON,D_SS_CRON		:integer :=0;
signal sumaD_S,sumaU_M,sumaD_M,sumaU_H,sumaD_H	: std_logic := '0';
	signal switch0,switch1,boton1,boton2	: std_logic;
	signal primerDig,segundoDig,tercerDig,cuartoDig	: integer :=0;
	signal stop				: integer := 0;--Para parar el reloj
	signal count	: integer := 1;
	

	

	
begin		

	HEX0(7)<='1'; --Apago el punto
	HEX1(7)<='1'; --Apago el punto
	HEX2(7)<='1'; --Apago el punto
	HEX3(7)<='1'; --Apago el punto
	
	switch0 <= SW(0);
	switch1 <= SW(1);
	boton1 <= KEY(0);
	boton2 <= KEY(1);
	
	clk_out<=aux;
	
	
		
CLK1:	process(CLOCK_50) --Convierte el clock de 50MHz a 10Hz. Teniendo un periodo de 0,1s
	
	begin
			

		if(rising_edge(CLOCK_50)) then 
				EA <= ES;
				count <=count+1;
				if(count = 250000) then -- Aca va 250000
					CLOCK_MS <= not CLOCK_MS; --Paso 1 ms
					count <=1; --Reseteo
				end if;
			end if;
			
end process CLK1;

		
		
CLK: process (CLOCK_MS,boton2,boton1) --boton2 y boton1 son entradas asincronas


	begin
	
	
		if(rising_edge(CLOCK_MS)) then
			
			if (EA = S1) then
			if (boton1 = '0') then
				ESTADO_CRON <= RESET;
			else
				if (boton2 = '0') then
					if (ESTADO_CRON = PAUSE) then
						ESTADO_CRON <= RUN;
					else
						ESTADO_CRON<=PAUSE;
					end if;
				end if;
			end if;
		end if;
		
		if (EA = S1) then
			case ESTADO_CRON is
				
				WHEN RESET =>
					
					U_CC_CRON<=0;
					D_CC_CRON<=0;
					U_SS_CRON<=0;
					D_SS_CRON<=0;
					ESTADO_CRON <= PAUSE;
					
				WHEN RUN =>
					U_CC_CRON<=U_CC_CRON+1;
					if (U_CC_CRON = 9) then
					U_CC_CRON<=0;
					D_CC_CRON<=D_CC_CRON+1;
						if (D_CC_CRON = 9) then
							D_CC_CRON<=0;
							U_SS_CRON<=U_SS_CRON+1;
							if (U_SS_CRON = 9) then
								U_SS_CRON<=0;
								D_SS_CRON<=D_SS_CRON+1;
								if (D_SS_CRON = 5)then
									D_SS_CRON<=0;
								end if;
							end if;
						end if;
					end if;	
					
				WHEN PAUSE=>
					
				WHEN OTHERS =>
					U_CC_CRON<=U_CC_CRON+1;
					if (U_CC_CRON = 9) then
					U_CC_CRON<=0;
					D_CC_CRON<=D_CC_CRON+1;
						if (D_CC_CRON = 9) then
							D_CC_CRON<=0;
							U_SS_CRON<=U_SS_CRON+1;
							if (U_SS_CRON = 9) then
								U_SS_CRON<=0;
								D_SS_CRON<=D_SS_CRON+1;
								if (D_SS_CRON = 5)then
									D_SS_CRON<=0;
								end if;
							end if;
						end if;
					end if;
					
			end case;
				
		end if;
		
		
			--Actualizo la hora
			U_CC<=U_CC+1;
			if (U_CC = 9) then
				U_CC<=0;
				D_CC<=D_CC+1;
				if (D_CC = 9) then
					D_CC<=0;
					U_SS<=U_SS+1;
					if (U_SS = 9) then
						U_SS<=0;
						D_SS<=D_SS+1;
						if (D_SS = 5)then
							D_SS<=0;
							U_MM<=U_MM+1;
							if (U_MM = 9) then
								U_MM<=0;
								D_MM<=D_MM+1;
								if (D_MM = 5) then
									D_MM<=0;
									U_HH<=U_HH+1;
									if (D_HH = 2) then
										if (U_HH = 3) then
											U_HH<=0;
											D_HH<=0;
										end if;
									else
										if (U_HH = 9)then
											U_HH<=0;
											D_HH<=D_HH+1;
										end if;
									end if;
								end if;		
							end if;
						end if;
					end if;
				end if;
			end if;
		--End actualizar hora
		
		
		--Boton aumenta minuto
		if ((EA = S2) and (boton1 = '0')) then
			--Primero pregunto x distinto de 9??
			U_MM<=U_MM+1;
			if (U_MM = 9) then
				U_MM<=0;
				D_MM<=D_MM+1;
				if (D_MM = 5) then
					D_MM<=0;
					U_HH<=U_HH+1;
					if (D_HH = 2) then
						if (U_HH = 3) then
							U_HH<=0;
							D_HH<=0;
						end if;
					else
						if (U_HH = 9)then
							U_HH<=0;
							D_HH<=D_HH+1;
						end if;
					end if;
				end if;
			end if;	
		end if;
		--End aumenta minuto	
		
		--Boton aumentar hora
		if ((EA = S2) and (boton2 = '0')) then
			U_HH<=U_HH+1;
			if (D_HH = 2) then
				if (U_HH = 3) then
					U_HH<=0;
					D_HH<=0;
				end if;
			else
				if (U_HH = 9)then
					U_HH<=0;
					D_HH<=D_HH+1;
				end if;
			end if;
		end if;
		--End aumenta hora
		
		
		
		
					--clk_out<=sumaU_M;
	end if; --End del if del rising edge del CLOCK_MS	
						

				
end process CLK;
	
				
		
COM: process (EA,switch0,switch1,boton2,boton1)	
	begin
			
				
		case EA is
		
			WHEN INICIO =>
				
				estado<=0;
				primerDig<=D_HH;
				segundoDig<=U_HH;
				tercerDig<=D_MM;
				cuartoDig<=U_MM;
				
				if (switch0 = '1') then --switch0 se pone en modo cronometro (le doy prioridad a este modo antes del setear hora) Si pasa a la vez
					ES <= S1;
				else --SW en 0 (Modo  Hora)
					if (switch1 = '1') then --switch1 se pone en modo Setear Hora
						ES <= S2;
					else --Modo mostrar Hora
						ES <= INICIO;
					end if;	
					
				end if;
				
			WHEN S2 =>
					estado<=1;
					primerDig<=D_HH;
				segundoDig<=U_HH;
				tercerDig<=D_MM;
				cuartoDig<=U_MM;
					if (switch0 = '0' and switch1= '0') then --Puse modo Hora y mostrar hora
						ES<=INICIO; 
					else
						if (switch0 = '1' and switch1= '0') then --Modo mostrar hora y modo cronomentro. Si pongo modo cronomentro y no salgo de setear hora no va al cronometro.
							ES<=S1;
						else	
							ES<=S2;
						end if;
					end if;
				
			WHEN S1 =>
				primerDig<=D_SS_CRON;
				segundoDig<=U_SS_CRON;
				tercerDig<=D_CC_CRON;
				cuartoDig<=U_CC_CRON;
				
				if ((switch0 = '0' ) AND (switch1 = '0')) then
					ES<=INICIO; --Modo mostrar Hora
				else
					if ((switch0 = '0' ) AND (switch1 = '1')) then
						ES<= S2; --Modo setear Hora
					else --switch0 esta en '1'
						ES<=S1;
					end if;
				end if;
					
				
				
			
			
					
					
						
				
				WHEN OTHERS =>
					ES<= INICIO;
				--WHEN S1 =>
				--	if (switch0 = '0') --switch0 se pone en modo Hora
				--		ES <= INICIO;
				--	elsif
						
						
				
		end case;		
		
end process COM;
	
		D1: segmentos7 port map (primerDig,HEX3(0 to 6));
		D2: segmentos7 port map (segundoDig,HEX2(0 to 6));
		D3: segmentos7 port map (tercerDig,HEX1(0 to 6));
		D4: segmentos7 port map (cuartoDig,HEX0(0 to 6));
		
		


end architecture implementation;
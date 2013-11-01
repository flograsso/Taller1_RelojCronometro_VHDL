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
		SW0 	:in std_logic; --Derecha. Cambia modo hora/cronometro
		SW1	:in std_logic; --Izquierda. Setear/mostrar hora
		
		CLOCK_50	:in std_logic; --	
		
		--Botones
		KEY1	:in std_logic; 
		KEY2	:in std_logic;
		
		clk_out :out std_logic
		);
end entity reloj;

architecture implementation of reloj is

	component segmentos7 IS
		port(
			num: in integer;
			salida: out std_logic_vector(0 to 6));
	end component segmentos7;



	type TIPO_ESTADO is (INICIO,  --Modo mostrar Hora
								S1, 		--Modo Cronometro 
								S2 		--Modo Setear Hora
								);
	signal EA, ES	:TIPO_ESTADO;

	signal CLOCK_10 		: std_logic := '0';
	signal count			: integer := 1;
	signal hora,minuto,segundo,centesima:integer :=0;
	signal switch0,switch1,boton1,boton2	: std_logic;
	signal primerDig,segundoDig,tercerDig,cuartoDig	: integer := 0;
	
	

	
begin		

	HEX0(7)<='1'; --Apago el punto
	HEX1(7)<='1'; --Apago el punto
	HEX2(7)<='1'; --Apago el punto
	HEX3(7)<='1'; --Apago el punto
	
	switch0 <= SW0;
	switch1 <= SW1;
	boton1 <= KEY1;
	boton2 <= KEY2;
	
	
		
CLK1:	process(CLOCK_50) --Convierte el clock de 50MHz a 10Hz. Teniendo un periodo de 0,1s
		begin
			if(rising_edge(CLOCK_50)) then 
				count <=count+1;
				if(count = 10) then -- Aca va 2500000
					CLOCK_10 <= not CLOCK_10;
					count <=1; --Reseteo
				end if;
			end if;
			clk_out<=CLOCK_10;
end process CLK1;

		
		
CLK: process (CLOCK_10)
	begin
		if(rising_edge(CLOCK_10)) then
			centesima <= centesima + 1;
			if (centesima = 99)	then
				centesima<= 0;
				segundo<= segundo + 1;
				if (segundo = 59) then
					segundo <= 0;
					minuto<=minuto+1;
					if (minuto = 59) then
						minuto<=0;
						hora<=hora+1;
						if (hora = 23) then
							hora <= 0;
						end if;
					end if;
				end if; 
			end if;
			EA <= ES;
		end if;	
end process CLK;
	
				
		
COM: process (EA,switch0,switch1,boton1,boton2)	
	begin
				
				
		case EA is
			WHEN INICIO =>
				
				primerDig<=(minuto / 10);
				if (hora > 9) then
					segundoDig<=(minuto rem 10);
				else
					segundoDig<=(minuto);
				end if;
				
				tercerDig<=(centesima / 10);
				if (centesima >9) then
					cuartoDig<=(centesima rem 10);
				else 
					cuartoDig<=(centesima);
				end if;
				
				if (switch0 = '1') then --SW0 se pone en modo cronometro (le doy prioridad a este modo antes del setear hora) Si pasa a la vez
					ES <= S1;
				elsif (switch1 = '1') then --SW1 se pone en modo Setear Hora
					ES <= S2;
				else
					ES <= INICIO;
				end if;
				
				WHEN OTHERS =>
					ES<= INICIO;
				--WHEN S1 =>
				--	if (switch0 = '0') --SW0 se pone en modo Hora
				--		ES <= INICIO;
				--	elsif
						
						
				
		end case;		
		
end process COM;
	
		D1: segmentos7 port map (primerDig,HEX3(0 to 6));
		D2: segmentos7 port map (segundoDig,HEX2(0 to 6));
		D3: segmentos7 port map (tercerDig,HEX1(0 to 6));
		D4: segmentos7 port map (cuartoDig,HEX0(0 to 6));
		
		


end architecture implementation;
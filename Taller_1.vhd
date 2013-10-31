library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity reloj is
	port(
		--4 Display 7 Segmentos
		HEX3 	:out std_logic_vector(7 downto 0); --Numero mas significativo
		HEX2 	:out std_logic_vector(7 downto 0);
		HEX1 	:out std_logic_vector(7 downto 0);
		HEX0 	:out std_logic_vector(7 downto 0); --Numero menos significativo
		
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

	signal CLOCK_10 		: std_logic := '0';
	signal count 			: integer := 1;
	signal hora,minuto,segundo,centesima	:integer :=0;
	
	
begin		
		
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
		end if;	
		HEX0 <=conv_std_logic_vector(centesima,8);	
		HEX1 <=conv_std_logic_vector(segundo,8);	
		HEX2 <=conv_std_logic_vector(minuto,8);	
		HEX3 <=conv_std_logic_vector(hora,8);	
				
end process CLK;

end architecture implementation;
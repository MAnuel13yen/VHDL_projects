library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--entidad
entity clock1s is
port(
	clock50mhz: in std_logic;--rejos de entrada de 50MHz
	reset: in std_logic; --señal de reenicio activa en 1
	clock_1s: out std_logic); --salida del reloj dividido
end entity;

architecture behavioral of clock1s is
constant max_counter: integer:=50000000-1; --2-1(2 ciclos para cambiar) para visualizar en la simulacion --50_000_000-1(1 segundo) para visualizar en el FPGA
signal counter: integer:=0;
signal counter_registro: std_logic:='0';

begin
process(clock50mhz, reset)
begin
if reset='1' then
	counter<=0;
	counter_registro<='0';
	elsif rising_edge(clock50mhz) then
			if counter=max_counter then
				counter<=0;
				counter_registro<=not counter_registro;
			else 
			   counter<=counter+1;
	end if;
end if;
clock_1s<=counter_registro;
end process;
end architecture;
	
	
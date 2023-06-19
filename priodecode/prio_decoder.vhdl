library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity prio_decoder is
    port(
        signal k: in std_logic_vector(6 downto 0);
        signal o: out std_logic_vector(2 downto 0)
    );
end prio_decoder;

architecture behave of prio_decoder is
begin
    process(k)
    begin
        if k = (k'range => '0') then 
            o <= std_logic_vector(to_unsigned(0, 3));
        elsif k = "0000001" then
            o <=  std_logic_vector(to_unsigned(1, 3));
        elsif k = "0000011" then
            o <=  std_logic_vector(to_unsigned(2, 3));
        elsif k = "0000111" then
            o <=  std_logic_vector(to_unsigned(3, 3));
        elsif k = "0001111" then
            o <=  std_logic_vector(to_unsigned(4, 3));
        elsif k = "0011111" then
            o <=  std_logic_vector(to_unsigned(5, 3));
        elsif k = "0111111" then
            o <=  std_logic_vector(to_unsigned(6, 3));
        elsif k = (k'range => '1') then
            o <=  std_logic_vector(to_unsigned(7, 3));
        end if;
    end process;
end behave;
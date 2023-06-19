library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity prio_decoder_tb is
end prio_decoder_tb;

architecture test of prio_decoder_tb is
    component prio_decoder
        port
            (
                signal k: in std_logic_vector(6 downto 0);
                signal o: out std_logic_vector(2 downto 0)
            );
    end component;
    signal k: std_logic_vector(6 downto 0);
    signal o: std_logic_vector(2 downto 0);
begin
    pd: prio_decoder port map 
        (k => k, o => o);
    process
    begin
        wait for 1 ns;
        k <= (k'range =>  '0');
        wait for 1 ns;
        k <= "0000001";
        wait for 1 ns;
        k <= "0000011";
        wait for 1 ns;
        k <= "0000111";
        wait for 1 ns;
        k <= "0001111";
        wait for 1 ns;
        k <= "0011111";
        wait for 1 ns;
        k <= "0111111";
        wait for 1 ns;
        k <= "1111111";
        wait for 1 ns;
        assert false report "Testbench beendet";
        wait;
    end process;
end test;
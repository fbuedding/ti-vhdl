-------------------------------------------------------------------------------------
-- Projekt: Vorlesung "Technische Informatik"
-- Dateiname: hello.vhdl
-- Beschreibung: Erste Schritte mit VHDL am Beispiel "Hello World"
-- Version: 1.0
--------------------------------------------------------------------------

use std.textio.all;

entity hello_world is
end hello_world;

architecture behaviour of hello_world is
begin
    process
        variable l : line;
        begin
            write (l, String'("Hello world!"));
            writeline (output, l);
            wait;
        end process;
end behaviour;
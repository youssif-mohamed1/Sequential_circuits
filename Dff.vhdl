library ieee;
use ieee.std_logic_1164.all;

entity Dff is 
port(
    D,C:in std_logic;
    y,ybar:out std_logic
);
end Dff;
architecture equations of Dff is
    signal Dbar,Qn2,Qbarn2:std_logic;
    begin
        
       Qn2<= Qn2 when(c='0') else 
       '0' when(D='0' and c='1') else '1'; 
       
       Qbarn2<=not Qn2;
       y<=Qn2;
       ybar<=Qbarn2;

    end equations; 
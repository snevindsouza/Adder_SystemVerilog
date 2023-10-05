package adder_pkg; 
class HalfAdder; 
    // Member variables 
    bit ha; 
    bit hb; 
    bit hsum; 
    bit hcout; 
    // Constructor 
    function new(bit a1, bit b1); 
        ha = a1; 
        hb = b1; 
    endfunction 
    // Member function to perform the half-adder operation 
    function void hadd(); 
        hsum = ha ^ hb; 
        hcout = ha & hb; 
    endfunction 
endclass 

class FullAdder; 
    // Member variables 
    bit fa; 
    bit fb; 
    bit fcin; 
    bit fsum; 
    bit fcout; 
    // Constructor 
    function new(bit a1, bit b1, bit cin1); 
        fa = a1; 
        fb = b1; 
        fcin = cin1; 
    endfunction 
    // Member function to perform the full-adder operation 
    function void fadd(); 
        fsum = fa ^ fb ^ fcin; 
        fcout = (fa&fb)|(fb&fcin)|(fcin&fa); 
    endfunction 
endclass 
endpackage 
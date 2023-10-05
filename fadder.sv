module fadder(input fa,fb,fcin, output reg fsum,fcout);
    assign fsum = fa ^ fb ^ fcin; 
    assign fcout = (fa&fb)|(fb&fcin)|(fcin&fa); 
endmodule 
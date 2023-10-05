module hadder(input ha,hb,output reg hsum,hcout);
    assign hsum = ha ^ hb;
    assign hcout = ha & hb; 
endmodule 
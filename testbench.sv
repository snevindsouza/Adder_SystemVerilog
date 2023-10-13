module testbench;
    import adder_pkg::*;
    FullAdder F;
    HalfAdder H;
    reg a,b,c;
    wire hsum,hcout,fsum,fcout;

    hadder dut1(.ha(a),.hb(b),.hsum(hsum),.hcout(hcout));
    fadder dut2(.fa(a),.fb(b),.fcin(c),.fsum(fsum),.fcout(fcout));
    
    initial begin
        repeat(10) begin  //repeat 10 times = 10 random inputs.
            a=$random;    //generate random values
            b=$random;
            c=$random;
            varify(a,b,c);
            $display("a, b, c = %b, %b, %b",a,b,c);
            $display("hsum, hcout, fsum, fcout = %b, %b, %b, %b",H.hsum,H.hcout,F.fsum,F.fcout);
        end
        $finish;
    end

    task varify;
        input a,b,c;
        begin
            H = new(a, b);   
            H.hadd();
            F = new(a, b, c);
            F.fadd();    
            #1;
        end
    endtask     

endmodule

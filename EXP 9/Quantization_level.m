
clc;
%% quantization levels graph

close all;
Words = {'0000'; '0001'; '0010';'0011';'0100';'0101';'0110';'0111';... 
         '1000'; '1001'; '1010';'1011';'1100';'1101';'1110';'1111';};
y =[0    1  2  3  4  5  6  7  8  9  10  11  12  13  14  15 ];

x1=[-2.5	-2.16	-1.82	-1.49  -1.16	-0.83	-0.51	-0.16...
      0.17	 0.5  	0.84	 1.17   1.5	     1.84	 2.17	 2.5];
h = stairs(x1,y,'LineWidth',1.4);grid on;
set(gca,'ytick',linspace(min(ylim),max(ylim),16),'yticklabel',Words)
xlabel('Input voltage');
ylabel('CodeWord');
title('Quantization levels: 4-bit linear');
% linspace(min,max,n), StepSize == s = (max-min)/(n-1)
% min, min+s, min+2*s, min+3*s, ...., max

%%
x2 = [-2.5	-1.24	-0.61	-0.3	-0.14	-0.06	-0.02...
      0	    0.001	 0.03	0.05     0.09	 0.17	 0.33...
      0.64	1.27 ];
  
figure(2)  
h = stairs(x2,y,'LineWidth',1.4);grid on;
set(gca,'ytick',linspace(min(ylim),max(ylim),16),'yticklabel',Words)
xlabel('Input voltage');
ylabel('Codeword');
title('Quantization levels: 4-bit companding');  

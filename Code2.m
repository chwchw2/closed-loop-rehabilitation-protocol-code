% Waveform Generator
fgen = visa('AGILENT',"USB0::0x0957::0x2807::MY59000746::0");
set (fgen,'timeout', 30);
fopen(fgen);

fprintf (fgen, '*IDN?');
idn = fscanf (fgen);
fprintf (idn)
fprintf ('\n\n')

fprintf (fgen, '*RST');
fprintf (fgen, '*CLS');
pause (1);

Set initial parameters
fprintf(fgen,'SOURce1:DATA:VOLatile:CLEar');
fprintf(fgen,'SOURce1:FUNCtion Pulse')
fprintf(fgen,'SOURce1:FUNCtion:Pulse:WIDTh 1 ms')
fprintf(fgen,'SOURCE1:VOLT 50 mv')
fprintf(fgen,'SOURCE1:freq 0.33 hz')
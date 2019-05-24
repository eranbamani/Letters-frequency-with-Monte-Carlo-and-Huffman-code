%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               Final Project                    %
%        Monte Carlo Estimation Algorithms       %
%           Huffman compression Algorithm        %
%                                                %
% Authors: Eran Bamani and Daniel Ditesheim      %     
%                   19/05/19                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
format long
close all
%
%-------------------------------------------
% #############################################
% ################Examples#####################
% % Monte-Carlo Algorithm Examples
% Example 1 - Card
% numr = 100000;
% Card_Prob = CardP(numr);

% % Example 2 - Estimate_Pi
% L = 2;  D = 5;
% t = 1;
% pi_est = EstimatePi(L,D,t);

% Example 3 - Estimation_sqrt(2)
% nn = 1e7;
% sqrt2_est = EstimationSqrt2(nn);

% #------------------------------------------------------------------------
% % Huffman Compression-Decompression Algorithm Examples
% Example 1 - Data compression-decompression
% data = read_file('data.txt');    
% Huffman_ComprExmp(data)

% Example 2 - Huffman_Tree
% Huffman_Tree()

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Algorithm%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% str = 'Please insert a number? ';
% n = input(str,'s');
% filename = 'Text.txt';
% [message] = read_file(filename);
% [message,len_m] = clean_txt(message);
% Huffman_Tree(message)
% 
n = 100000;
% Monte Carlo
[s,binary_s,Count,Total_bits,Total_bits_Used,prob_Lett,str] = Monte_Carlo(n);

% Huffman compression
[Total_bits_Huffman,Total_bits_Used_Huffman] = Huffman_comp(n,prob_Lett,Count,str);
% 
disp('Total_bits: ')
disp(Total_bits)

disp('Total_bits_Used: ')
disp(Total_bits_Used)
%----------------------------
disp('Total_bits after Huffman compression: ')
disp(Total_bits_Huffman)

disp('Total_bits_Used after Huffman compression: ')
disp(Total_bits_Used_Huffman)
%----------------------------
efficiency = (5000/7000)*100;
char = num2str(efficiency);
ch = '%';
ss = strcat('efficiency:  ' , " " , char , ch);
disp(ss)
%----------------------------
Error = 0.000231;
char2 = num2str(Error);
ch2 = '%';
ss2 = strcat('Error:  ' , " " , char2 , ch2);
disp(ss2)


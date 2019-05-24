% Monte Carlo function 
% Author: Eran Bamani 
% 15.5.19
% ======================================================
function [s,binary_s,Count,Total_bits,Total_bits_Used,prob_Lett,data] = Monte_Carlo(n)

% Generate data
s = 'a':'z';
str = s(randi(numel(s)));
for i=1:n
    str = s(randi(numel(s)));
    data(i) = str;
end
disp('The string is: ')
disp(data)
Count = Count_Alphabet(data);
num_bits = ceil(log2(length(Count)));
binary_s = dec2bin(s);
code_length = size(binary_s,2);

for i = 1:length(binary_s)
    disp('binary: ')
	display(strcat(s(i),' -->  ',num2str(binary_s(i,1:code_length))));
end

for j=1:length(Count)
    
    prob_Lett(j) = Count(j)/n; 
    
end

Total_bits = Count.*code_length;
Total_bits_Used = sum(Total_bits);

for i = 1:length(Count)
    disp('Probability of letters: ')
	display(strcat(s(i),' -->  ',num2str(prob_Lett(i))));
end

for k=1:length(Count)
    
    g = prob_Lett(k);
    Entropy_Lett(k) = -(g*log2(g));
    disp('Entropy of letters: ')
    display(strcat(s(k),' -->  ',num2str(Entropy_Lett(k))));
    
end
Entropy_Total = sum(-(prob_Lett.*log2(prob_Lett)));    
disp('Total Entropy: ')
disp(Entropy_Total)
% -------------------------------------------------------------------------
% Plot
figure;
y1 = prob_Lett(1:6);
x1=['a','b','c','d','e','f'];
bar(y1)
set(gca,'xticklabel',x1.')

figure;
y2 = prob_Lett(7:12);
x2 = ['g','h','i','j','k','l'];
bar(y2)
set(gca,'xticklabel',x2.')

figure;
y3 = prob_Lett(13:18);
x3 = ['m','n','o','p','q','r'];
bar(y3)
set(gca,'xticklabel',x3.')

figure;
y4 = prob_Lett(19:24);
x4 = ['s','t','u','v','w','x'];
bar(y4)
set(gca,'xticklabel',x4.')

figure;
y5 = prob_Lett(25:26);
x5 = ['y','z'];
bar(y5)
set(gca,'xticklabel',x5.')


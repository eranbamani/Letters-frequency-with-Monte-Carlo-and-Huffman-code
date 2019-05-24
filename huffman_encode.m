% Huffman Encode
% Author: Eran Bamani 
% 18.5.19
function [ code_word ] = huffman_encode( p )

% Preprocessing
len_prob = length(p);
code_word = cell(1,len_prob);
vect = zeros(len_prob,len_prob);
% 
t = p;

for i = 1:len_prob-1
    [~ ,kk]=sort(t);
    vect(kk(1),i) = 10;
    vect(kk(2),i) = 11;
    t(kk(2)) = t(kk(2))+t(kk(1));
    t(kk(1)) = 100;
end

i=len_prob-1;
rows=find(vect(:,i)==10);
code_word(rows)=strcat(code_word(rows),'1');
rows=find(vect(:,i)==11);
code_word(rows)=strcat(code_word(rows),'0');
for i=len_prob-2:-1:1
    row11=find(vect(:,i)==11);
    row10=vect(:,i)==10;
    code_word(row10)=strcat(code_word(row11),'1');
    code_word(row11)=strcat(code_word(row11),'0');
end
end
    
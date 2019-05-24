% Huffman comp
% Author: Eran Bamani 
% 18.5.19
function [Total_bits_Huffman,Total_bits_Used_Huffman] = Huffman_comp(n,prob_Lett,Count,str)


[ code_word ] = huffman_encode( prob_Lett );

for i = 1:length(code_word)
    
    cW(i) = code_word(1,i);
    m_char = char(cW(i));
    len_M = size(m_char,2);
end
Total_bits_Huffman = Count.*len_M;
Total_bits_Used_Huffman = sum(Total_bits_Huffman);


end


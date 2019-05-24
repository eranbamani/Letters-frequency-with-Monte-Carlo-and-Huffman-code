% Clean Text Function
% Author: Eran Bamani 
% 14.5.19
function [message,len_m] = clean_txt(message)

m = erasePunctuation(message);

for j=1:length(m)
    if (m(j)== ' ')
        new_str = erase(m,m(j));
        break
    end
      
end
message = new_str;
len_m = length(message);

end


% Count Alphabet in text
% Author: Eran Bamani 
% 18.5.19
function Count = Count_Alphabet(data)
count_A = 0; count_B = 0; count_C = 0; count_D = 0; count_E = 0; count_F = 0;
count_G = 0; count_H = 0; count_I = 0; count_J = 0; count_K = 0; count_L = 0; 
count_M = 0; count_N = 0; count_O = 0; count_P = 0; count_Q = 0; count_R = 0;
count_S = 0; count_T = 0; count_U = 0; count_V = 0; count_W = 0; count_X = 0;
count_Y = 0; count_Z = 0;

for i=1:length(data)
    
    if data(i) == 'a'
        count_A = count_A+1;
    end
    
    if data(i) == 'b'
        count_B = count_B+1;
    end
        
       
    if data(i) == 'c'
        count_C = count_C+1;
    end
    
    if data(i) == 'd'
        count_D = count_D+1;
    end
            
    if data(i) == 'e'
        count_E = count_E+1;
    end
    
    if data(i) == 'f'
        count_F = count_F+1;
    end
            
    if data(i) == 'g'
        count_G = count_G+1;
    end
    
    if data(i) == 'h'
        count_H = count_H+1;
    end
            
    if data(i) == 'i'
        count_I = count_I+1;
    end
    
    if data(i) == 'j'
        count_J = count_J+1;
    end
            
    if data(i) == 'k'
        count_K = count_K+1;
    end
    
    if data(i) == 'l'
        count_L = count_L+1;
    end
            
    if data(i) == 'm'
        count_M = count_M+1;
    end
    
    if data(i) == 'n'
        count_N = count_N+1;
    end
        
    if data(i) == 'o'
        count_O = count_O+1;
    end
            
    if data(i) == 'p'
        count_P = count_P+1;
    end
    
    if data(i) == 'q'
        count_Q = count_Q+1;
    end
            
    if data(i) == 'r'
        count_R = count_R+1;
    end
    
    if data(i) == 's'
        count_S = count_S+1;
    end
        
    if data(i) == 't'
        count_T = count_T+1;
    end
            
    if data(i) == 'u'
        count_U = count_U+1;
    end
    
    if data(i) == 'v'
        count_V = count_V+1;
    end
    
    if data(i) == 'w'
        count_W = count_W+1;
    end
    
    if data(i) == 'x'
        count_X = count_X+1;
    end
        
       
    if data(i) == 'y'
        count_Y = count_Y+1;
    end
    
    if data(i) == 'z'
        count_Z = count_Z+1;
        
    end
Count = [count_A count_B count_C count_D count_E count_F count_G count_H count_I count_J count_K count_L count_M count_N count_O count_P count_Q count_R count_S  count_T count_U count_V count_W count_X count_Y count_Z];
end

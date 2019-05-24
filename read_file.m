% Read file function
% Author: Eran Bamani 
% 14.5.19
function [txt] = read_file(file_name)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
f=fopen(file_name,'r');
txt=fscanf(f,'%c');
f_close(f);
end


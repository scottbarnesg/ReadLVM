%% ReadLVM Example
% 
% Scott Barnes | Smart Systems Lab | The George Washington University
% 
clc; clear; close all;
filepath = 'C:\Users\scott\Documents\GW\Courses\Engineering Experimentation\Lab 9';
filetype = '.lvm';
prefix = 'lab';
index = [15, 15];
data = ReadLVM(filepath, filetype, prefix, index);
%% ReadLVM: Reads data from LVM files
% 
% Scott Barnes | Smart Systems Lab | The George Washington University
% 
%% Variables:
% filepath: Path to file(s)
% filetype: Data type of file (.LVM, .txt, etc...)
% prefix: Base name of files
% index: Numerical values appended to file prefix [Index1, Index2]
%% Formatting
% Files to be read should be formatted as follows:
% PrefixIndex.Filetype
% Example1.lvm -> Example10.lvm
%% Data Type
% If file has headers, returns struct
% If file does not have headers, returns array.
function data = ReadLVM(filepath, filetype, prefix, index)
    addpath(filepath);
    for i = index(1):index(2)
        filename = strcat(prefix, num2str(i), filetype);
        read = importdata(filename);
        if size(read) == [0, 0]
            print('Error: Data not found for index %d', i);
            data = [];
            return
        end
        len(i+1-index(1)) = size(read,1);
        data(1:size(read,1),1:size(read,2),i+1-index(1)) = read;
    end
end
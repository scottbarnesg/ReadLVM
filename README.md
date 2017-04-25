ReadLVM: Reads data from LVM files
Scott Barnes | Smart Systems Lab | The George Washington University

Variables:
filepath: Path to file(s)
filetype: Data type of file (.LVM, .txt, etc...)
prefix: Base name of files
index: Numerical values appended to file prefix [Index1, Index2]

Formatting:
Files to be read should be formatted as follows:
PrefixIndex.Filetype
Example1.lvm -> Example10.lvm

Data Types:
If file has headers, returns struct
If file does not have headers, returns array
If data not found, returns empty array

function [ output_args ] = Work( min,max,name )
%Work Computes the conversion and formats it to write
minC = (min-32).*(5/9);
maxC = (max-32).*(5/9);


data = [min minC max maxC];


nrows = 2;
ncols = 2;

filename = name;
fid = fopen(filename,'w');


fprintf(fid,'%d %d\n',data);

fclose(fid);



end


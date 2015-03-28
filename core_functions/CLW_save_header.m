function filename=CLW_save_header(path,header)
%filename
filename=header.name;
%save header and data files
[p,n,e]=fileparts(filename);
%add path
if isempty(path);
else
    if path(end)==filesep;
        path=path(1:end-1);
    end;
    n=[path filesep n];
end;
%save header
save([n '.lw6'],'-MAT','header');
%filename
filename=n;





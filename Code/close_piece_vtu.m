function close_piece_vtu(file)
str_close_vtu = cat(2, '</UnstructuredGrid> \n', ...
    '</VTKFile> \n');

fprintf(file, str_close_vtu );
fclose (file);
end
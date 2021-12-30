% This scripts generates the VTU file with line elements.
% Simple geometry data and some random dislacement and cell data is
% cosidered for working and visualization purpose.
pnts = [0,1,2,3,4;
        0,2,1,2,0;
        0,0,0,0,0];

cells = size(pnts,2)-1;
p_data = randn(3, size(pnts,2)); % Point Data (3, number of points)
c_data = randn(1,cells); % Cell Data (1, number of cells)
% The VTU file with above data will be store here.s
filename = '../VTU_files/Line.vtu';
% Topology information
[conct, offset, types] = topo_line(pnts);
write_VTU(p_data, c_data, pnts, conct, offset, types, filename)

%get atlitude at a particular point on the map

function [ land_value ] = getLandValue( x, y )

	%assumption - 1st column of data_set is x coordinate, 2nd column is y
	%coordinate and 3rd column is z coordinate
    
    %chooseDataSet function yet to be implemented
	data_set_number = chooseDataSet(x, y)

    statusOfTriangulationObject = exist(triangulationSetExists(data_set_number), 'var');
    
    if statusOfTriangulationObject==1
        tri = triangulationSet(data_set_number)
    else
        tri = delaunayTriangulation(data_set(:, 1), data_set(:, 2));
    end
    
    land_value = triangulationDelaunay(tri, x, y);

end

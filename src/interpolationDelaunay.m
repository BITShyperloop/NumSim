function [ land_value ] = interpolationDelaunay( data_set, x, y )

    %assumption - 1st column of data_set is x coordinate, 2nd column is y
    %coordinate and 3rd column is z coordinate

    tri = delaunayTriangulation(data_set(:, 1), data_set(:, 2));
    
    ti = pointLocation(tri, x, y); %find the triangle containing (x,y) point
    
    triangleNumber = tri.ConnectivityList(ti, :);
    p0 = tri.Points(triangleNumber(1), :);
    p0(3) = data_set(triangleNumber(1),3);
    p1 = tri.Points(triangleNumber(2), :);
    p1(3) = data_set(triangleNumber(2),3);
    p2 = tri.Points(triangleNumber(3), :);
    p2(3) = data_set(triangleNumber(3),3);
        
    land_value = interpolationPlaneEquation(p0,p1,p2, [x y]);

end


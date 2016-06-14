function [ z_value ] = interpolationPlaneEquation( p0,p1,p2,pq )

    %pq is the query point
    %p0, p1, p2 are the vertices of the triangle containing pq

    normal = cross(p0-p1, p0-p2);

    z_value = ((normal(1)*(pq(1)-p0(1)) + normal(2)*(pq(2)-p0(2)))/normal(3)) + p0(3);

end

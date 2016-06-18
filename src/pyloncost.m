function p = pyloncost(d,c,k,numpylons,cpp) % numpylons = number of pylons per unit length
										     % cpp = cost per pylon
	p = bsplength(d,c,k)*cpp*numpylons;
end
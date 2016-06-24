function l = bsplength(d,c,k)
	stepsize = 0.0001;%Precision of u can be changed later
	u = 0:stepsize:1; 
	[fdc,fdk] = bspderiv(d,c,k);
	fdc = fdc/max(fdc);
	fp = bspeval(d-1,fdc,fdk,u);
	n = columns(fp);
	count = 0.0;
	%Line-segment approximation due to small step size.
	for i=1:n
		v = fp(:,i);
		count += stepsize*sqrt(v'*v);
	end
	l = count;
end
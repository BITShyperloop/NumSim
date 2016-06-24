function k = bspcurv(d,c,k) %Generates the curvature for each point in u
	stepsize = 0.0001;
	u = 0:0.0001:(1+stepsize);
	[fdc,fdk] = bspderiv(d,c,k);
	fdc = fdc/max(fdc);
	Ti = bspeval(d-1,fdc,fdk,u);
	n = length(u)-1;
	k = zeros(1,n);
	Tf = circshift(Ti,[0,1]);
	raw = (Tf-Ti)./(sum(Ti.^2,1));
	k = raw(1:n);
end
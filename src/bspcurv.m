function k = bspcurv(d,c,k) %Generates the curvature for each point in u
	stepsize = 0.00001;
	u = 0:0.0001:(1+stepsize);
	[fdc,fdk] = bspderiv(d,c,k);
	fdc = fdc/max(fdc);
	T = bspevall(d-1,fdc,fdk,u);
	n = length(u)-1;
	k = zeros(1,n);
	for i=1:n
		v_sq = T(:,i)'*T(:,i);
		T_in = T(:,i);
		T_fin = T(:,i+1);
		dT = (T_fin - T_in)*1/stepsize;
		k(1,i) = 1/(v_sq)*sqrt(dT'*dT);
	end
end
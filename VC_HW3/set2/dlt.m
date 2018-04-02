function P = dlt(u, X)

	n = size(u,1);
	A = zeros(n*2,12);
	P = zeros(3,4);

	for i=1:n
		A(i*2-1,:) = [ zeros(1,4) -X(i,:) u(i,2)*X(i,:) ];
		A(i*2,  :) = [ X(i,:) zeros(1,4) -u(i,1)*X(i,:) ];
	end

	[U, S, V] = svd(A);
	tmp_P = V(:,12);
	P = zeros(3,4);
	P(1,:) = tmp_P(1:4)';
	P(2,:) = tmp_P(5:8)';
	P(3,:) = tmp_P(9:12)';

end
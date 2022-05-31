function t =  parasailsols(theta1guess, theta2guess, theta3guess, xguess,w)
syms t1 t2 t3 x 
i1 = (x-(1/2)*cos(t2)-(1/3)*cos(t1)-(1/6)*cos(t3))^2/w^2+1;
i2 = (x+(1/6)*cos(t1)-(1/6)*cos(t3))^2/w^2+1; 
i3 = (x+(1/2)*cos(t2)+(1/3)*cos(t3)+(1/6)*cos(t1))^2/w^2+1;
eq1 = 2*i1*cos(t1)^2-i2*cos(t2)^2*cos(t2-t1)-i3*cos(t3)^2*cos(t3-t1);
eq2 = i1*cos(t1)^2*cos(t2-t1)-i3*cos(t3)^2*cos(t3-t2);
eq3 = i1*cos(t1)^2*cos(t3-t1)+i2*cos(t2)^2*cos(t3-t2)-2*i3*cos(t3)^2;
eqx = -i1*cos(t1)^2*sin(t1)-i2*cos(t2)^2*sin(t2)-i3*cos(t3)^2*sin(t3);
range = [theta1guess, theta2guess, theta3guess, xguess];
sols = vpasolve([eq1==0, eq2==0, eq3==0, eqx==0],[t1 t2, t3 x], range);
t = [sols.t1 sols.t2 sols.t3 sols.x];
end
function a =  paraposmat(t,w)
t10 = (t(1));
t20 = (t(2));
t30 = (t(3));
x0 = t(4);
a = zeros(4,4);
a(1,1) = (sin(t10 - t20)*cos(t20)^2*(x0 + cos(t10)/6 - cos(t30)/6)^2)/w^2 - (4*cos(t10)*sin(t10)*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6)^2)/w^2 - (4*cos(t10)^2*sin(t10)*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6))/(3*w^2) + (sin(t10 - t30)*cos(t30)^2*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3)^2)/w^2 + (cos(t10 - t20)*cos(t20)^2*sin(t10)*(x0 + cos(t10)/6 - cos(t30)/6))/(3*w^2) + (cos(t10 - t30)*cos(t30)^2*sin(t10)*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3))/(3*w^2);
a(1,2) = (2*cos(t10 - t20)*cos(t20)*sin(t20)*(x0 + cos(t10)/6 - cos(t30)/6)^2)/w^2 - (2*cos(t10)^2*sin(t20)*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6))/w^2 - (sin(t10 - t20)*cos(t20)^2*(x0 + cos(t10)/6 - cos(t30)/6)^2)/w^2 + (cos(t10 - t30)*cos(t30)^2*sin(t20)*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3))/w^2;
a(1,3) = (2*cos(t10 - t30)*cos(t30)*sin(t30)*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3)^2)/w^2 - (sin(t10 - t30)*cos(t30)^2*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3)^2)/w^2 - (cos(t10 - t20)*cos(t20)^2*sin(t30)*(x0 + cos(t10)/6 - cos(t30)/6))/(3*w^2) - (2*cos(t10)^2*sin(t30)*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6))/(3*w^2) + (2*cos(t10 - t30)*cos(t30)^2*sin(t30)*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3))/(3*w^2);
a(1,4) = - (4*cos(t10)^2*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6))/w^2 - (2*cos(t10 - t20)*cos(t20)^2*(x0 + cos(t10)/6 - cos(t30)/6))/w^2 - (2*cos(t10 - t30)*cos(t30)^2*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3))/w^2;
a(2,1) = (cos(t20 - t30)*cos(t30)^2*sin(t10)*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3))/(3*w^2) - (2*cos(t10 - t20)*cos(t10)*sin(t10)*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6)^2)/w^2 - (2*cos(t10 - t20)*cos(t10)^2*sin(t10)*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6))/(3*w^2) - (sin(t10 - t20)*cos(t10)^2*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6)^2)/w^2;
a(2,2) = (sin(t20 - t30)*cos(t30)^2*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3)^2)/w^2 + (sin(t10 - t20)*cos(t10)^2*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6)^2)/w^2 - (cos(t10 - t20)*cos(t10)^2*sin(t20)*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6))/w^2 + (cos(t20 - t30)*cos(t30)^2*sin(t20)*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3))/w^2;
a(2,3) = (2*cos(t20 - t30)*cos(t30)*sin(t30)*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3)^2)/w^2 - (cos(t10 - t20)*cos(t10)^2*sin(t30)*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6))/(3*w^2) - (sin(t20 - t30)*cos(t30)^2*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3)^2)/w^2 + (2*cos(t20 - t30)*cos(t30)^2*sin(t30)*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3))/(3*w^2);
a(2,4) = - (2*cos(t10 - t20)*cos(t10)^2*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6))/w^2 - (2*cos(t20 - t30)*cos(t30)^2*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3))/w^2;
a(3,1) = (2*cos(t30)^2*sin(t10)*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3))/(3*w^2) - (sin(t10 - t30)*cos(t10)^2*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6)^2)/w^2 - (2*cos(t10 - t30)*cos(t10)*sin(t10)*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6)^2)/w^2 - (2*cos(t10 - t30)*cos(t10)^2*sin(t10)*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6))/(3*w^2) - (cos(t20 - t30)*cos(t20)^2*sin(t10)*(x0 + cos(t10)/6 - cos(t30)/6))/(3*w^2);
a(3,2) = (2*cos(t30)^2*sin(t20)*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3))/w^2 - (sin(t20 - t30)*cos(t20)^2*(x0 + cos(t10)/6 - cos(t30)/6)^2)/w^2 - (cos(t10 - t30)*cos(t10)^2*sin(t20)*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6))/w^2 - (2*cos(t20 - t30)*cos(t20)*sin(t20)*(x0 + cos(t10)/6 - cos(t30)/6)^2)/w^2;
a(3,3) = (sin(t20 - t30)*cos(t20)^2*(x0 + cos(t10)/6 - cos(t30)/6)^2)/w^2 + (sin(t10 - t30)*cos(t10)^2*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6)^2)/w^2 + (4*cos(t30)*sin(t30)*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3)^2)/w^2 + (4*cos(t30)^2*sin(t30)*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3))/(3*w^2) - (cos(t10 - t30)*cos(t10)^2*sin(t30)*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6))/(3*w^2) + (cos(t20 - t30)*cos(t20)^2*sin(t30)*(x0 + cos(t10)/6 - cos(t30)/6))/(3*w^2);
a(3,4) = (2*cos(t20 - t30)*cos(t20)^2*(x0 + cos(t10)/6 - cos(t30)/6))/w^2 - (2*cos(t10 - t30)*cos(t10)^2*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6))/w^2 - (4*cos(t30)^2*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3))/w^2;
a(4,1) = (2*cos(t10)*sin(t10)^2*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6)^2)/w^2 - (cos(t10)^3*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6)^2)/w^2 + (2*cos(t10)^2*sin(t10)^2*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6))/(3*w^2) + (cos(t20)^2*sin(t10)*sin(t20)*(x0 + cos(t10)/6 - cos(t30)/6))/(3*w^2) + (cos(t30)^2*sin(t10)*sin(t30)*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3))/(3*w^2);
a(4,2) = (2*cos(t20)*sin(t20)^2*(x0 + cos(t10)/6 - cos(t30)/6)^2)/w^2 - (cos(t20)^3*(x0 + cos(t10)/6 - cos(t30)/6)^2)/w^2 + (cos(t10)^2*sin(t10)*sin(t20)*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6))/w^2 + (cos(t30)^2*sin(t20)*sin(t30)*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3))/w^2;
a(4,3) = (2*cos(t30)*sin(t30)^2*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3)^2)/w^2 - (cos(t30)^3*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3)^2)/w^2 + (2*cos(t30)^2*sin(t30)^2*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3))/(3*w^2) + (cos(t10)^2*sin(t10)*sin(t30)*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6))/(3*w^2) - (cos(t20)^2*sin(t20)*sin(t30)*(x0 + cos(t10)/6 - cos(t30)/6))/(3*w^2);
a(4,4) = (2*cos(t10)^2*sin(t10)*(cos(t10)/3 - x0 + cos(t20)/2 + cos(t30)/6))/w^2 - (2*cos(t20)^2*sin(t20)*(x0 + cos(t10)/6 - cos(t30)/6))/w^2 - (2*cos(t30)^2*sin(t30)*(x0 + cos(t10)/6 + cos(t20)/2 + cos(t30)/3))/w^2;
a([1:3],[1:3]) = a([1:3],[1:3])/3;

end


 









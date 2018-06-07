%In the case of strong damping, weak inertia
for i=1:10000
for j=1:10
omega(:,i)=omega(:,i)+1/(sqrt(gamma^2-4*D(j,j)))*(exp(phi(j,1)*i/100)-exp(phi(j,2)*i/100))*V(:,j);
end
end
plot(real(omega)')

%In the case of strong inertia, weak damping 
for i=1:10000
for j=1:10
omega(:,i)=omega(:,i)+2/(sqrt(-gamma^2+4*D(j,j)))*exp(-gamma\2*i/100)*sin(sqrt(-gamma^2+4*D(j,j))/2*i/100);
end
end

plot(real(omega)')
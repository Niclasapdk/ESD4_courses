%% 1
%L
clear; close all;
[File1,Path1] = uigetfile('*.csv', 'bruh');
FullFile1 = fullfile(Path1,File1);
table1 = readtable(FullFile1);

plot(table1.Var1,table1.Var3);
grid on;

%% 2
close all; clear;
R = 2.08;
RPM = [250 950 1680 2420 3130 3560];
U = [2.5 5 7.5 10 12.5 14];
current = [0.9 1.2 1.4 1.5 1.6 1.7];
for i = 1:length(RPM)
    angular(i) = (RPM(i) * 2 * pi)/60;
end

for k = 1:length(U)
    Ke(k) = (U(k)-(R*current(k)))/(angular(k));
end
fprintf('Angular %d,\n', angular);
fprintf('Ke %d,\n', Ke);
%% 3
close all; clear;
R = 2.08;
RPM = [250 950 1680 2420 3130 3560];
U = [2.5 5 7.5 10 12.5 14];
current = [0.9 1.2 1.4 1.5 1.6 1.7];
for i = 1:length(RPM)
    angular(i) = (RPM(i) * 2 * pi)/60;
end
torquevol = 5.001;
torqueconstant = 10;
Nmvol = [30E-3 60E-3 200E-3 500E-3 770E-3 1.1 1.37 1.68 2 2.3 2.56 2.76 2.88 3.22];
for i = 1:length(Nmvol)
   Kt(i) = (Nmvol(i)/ torquevol) * torqueconstant
end
fprintf('Kt %d,\n',Kt)
newKt = [0.259 1.539 3.359 4.599 5.758 6.428];
plot(angular,newKt);
xlabel('\omega','FontSize',14);
ylabel('K_t','FontSize',14);
b = polyfit(angular, newKt, 1);
slope = b(1)
grid on;
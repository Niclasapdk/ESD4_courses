# Bestemmelse af motor parametere

### Resistance (R)

Spændingen skrues langsom op til lige inden motoren starter.
Herefter aflæses spændingen og strømmen til motoren for at beregne modstanden af motoren.

$U = 2.5\mathrm{V} $
$I = 1.2\mathrm{A}$
Det resultere til:
$R = \frac{U}{I} = 2.08\Omega$

### Inductance (L)

Spænd bolten så motoren forbliver i stilstand.

Giv en $14\mathrm{V}$ step voltage til motoren aflæs strømkurven(grønne kurve) ved brug af tang amperet koblet til oscilloscopet.

**Scope indstillinger og måling:**
![](induction_time_constant.png)

Aflæs maks strømmen ($22A$) udfra grafen og herefter udregn strømmen ved $63.2\mathrm{\%}$ som er $13.9\mathrm{A}$.

Derefter ses tidskontanten udfra grafen ved $13.9\mathrm{A}$ at den er $21.6\mu S$.
Herefter kan man udregne $L$ som er $44.93\mu H$ hvilket er givet af: $\tau = \frac{L}{R}\Leftrightarrow L = \tau\cdot R$ 


```Matlab
%% 1
%L
clear; close all;
[File1,Path1] = uigetfile('*.csv', '');
FullFile1 = fullfile(Path1,File1);
table1 = readtable(FullFile1);

plot(table1.Var1,table1.Var3);
grid on;
```
### Ke

Lad motoren køre frit ved forskellige spændinger og aflæs rotationer ved hjælp af tachometer.

Angular velocity er givet som:
$$\omega = RPM \cdot 2\cdot \frac{\pi}{60}$$

$K_e$ er givet som:

$$K_e = \frac{U-Ri}{\omega}$$

Tachometeret giver RPM som kan omregnes til $\omega$ og spændingen er givet fra strømforsyningen.
Resultaterne for $K_e$ kan se i tabellen:


| Voltage [V]| Current [A] | RPM | Angular velocity [rad/s]|$K_e$|
|---------|---------|----------|-|-|
|2.5|0.9|250|26.18|2.398783e-02|
|5|1.2|950| 99.48|2.516994e-02|
|7.5|1.4|1680| 175.92|2.607867e-02|
|10|1.5|2420| 253.421|2.714841e-02|
|12.5|1.6|3130|327.77 |2.798279e-02|
|14|1.7|3560| 372.49 |2.806849e-02|

Matlab beregninger:
```Matlab
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
```

### Kt and B

Indstil bolten så det bremser motoren og derefter aflæs spændingen fra torquemeter gradvist ved forskellige spændings intervaller fra strømforsyningen til motoren.

Newton meter relation til spænding for motoren: $10\mathrm{Nm} = 5.001\mathrm{V}$

$K_t$ findes som:

$$\frac{\mathrm{meassured\:\: voltage}}{\mathrm{torquemeter\:\: voltage}}\cdot\mathrm{torquemeter\:\: Nm}$$

Nu skal de to tabeller bruges sammen så der skal tages $K_t$(y-axis) fra den nedenstående og plottes med angular velocity for den overstående tabels(x-axis) og med dette kan $B$ findes som hældningen af den funktion.

| Voltage [V] | Current [A] | Newton/meter voltage |$K_t$ torque [Nm]|
|---------|---------|----------------------|-|
|1|0.3|30mV|0.059|
|2|0.9|60mV|0.119|
|3|2.1|200mV|0.399|
|4|4.1|500mV|0.999|
|5|6|770mV|1.539|
|6|8.4|1.1V|2.199|
|7|10.6|1.37V|2.739|
|8|12.7|1.68V|3.359|
|9|14.6|2V|3.999|
|10|16.8|2.3V|4.599|
|11|18.6|2.56V|5.118|
|12|20.1|2.76V|5.518|
|13|20.5|2.88V|5.758|
|14|24.2|3.22V|6.438|


Her er de data som er blevet brugt til grafen for $B$.

|Angular velocity|$K_t$|
|-|-|
|26,18	|0,259|
|99,48	|1,539|
|175,92|	3,359|
|253,421|	4,599|
|327,77|	5,758|
|372,49|	6,428|

Plot:
![](b_plot.png)
Hældningen blev fundet til at være: $B = 0.017$

Liste over fundne data:

* $R=2.08\Omega$, $L=44.93\mu H$
  
|$K_t$|$K_e$|
|-|-|
|0.059|2.398783e-02|
|0.119|2.516994e-02|
|0.399|2.607867e-02|
|0.999|2.714841e-02|
|1.539|2.798279e-02|
|2.199|2.806849e-02|
|2.739|-|
|3.359|-|
|3.999|-|
|4.599|-|
|5.118|-|
|5.518|-|
|5.758|-|
|6.438|-|

Matlab beregninger:
```Matlab
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
```
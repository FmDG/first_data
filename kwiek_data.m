%% Section One - Reading Data

% Site 1014A (1177m depth)
data1014 = readtable("data/kwiek_1999A.csv");

% Site 1018A (2476m depth)
data1018 = readtable('data/kwiek_1999B.csv');

% Site 849 (3851m depth)
data849 = readtable("data/mix_1995.csv");

% Site 1208 (cibs, uvi)
data_1208_cibs = readtable("data/venti_2012.csv");
data_1208_uvig = readtable("data/woodard_2016.csv");

% Site 1209 (cibs, uvi)
data_1209_cibs = readtable("data/ford_1209_cib.csv");
data_1209_uvig = readtable('data/ford_1209_uvi.csv');

%% Section Two - Preparing Data

data1014_rm = rmmissing(data1014);
data1018_rm = rmmissing(data1018);
data849 = rmmissing(data849);

data_1209_uvig = rmmissing(data_1209_uvi);
data_1209_cibs = rmmissing(data_1209_cibs);



figure_num = 1;


%% Section Three - Plot d18O

% Decides on the ages for the graphs
ages = [2000, 3800];


%d18O Figure
figure(figure_num)
figure_num = figure_num + 1;

% Uvig Subplot
subplot(2,1,1);

plot(data1014.age_ka, data1014.Uvig_d18O, 'color', 'r', 'LineWidth', 1, 'Marker', '+')
hold on
plot(data1018.age_ka, data1018.Uvig_d18O, 'color', 'b', 'LineWidth', 1, 'Marker', '+')
ylabel("\delta^{18}O", 'fontweight', 'bold')
% ylim([2,5])
h = gca;  % Handle to currently active axes
set(h, 'YDir', 'reverse', 'TickDir', 'out');
xlim([ages(1), ages(2)]);
xlabel("Age (ka)", 'fontweight', 'bold');
title('Uvigerina \delta^{18}O')
legend("ODP 1014 (1177m)", "ODP 1018 (2476m)")

% Cib Subplot
subplot(2,1,2);

plot(data1014_rm.age_ka, data1014_rm.Cib_d18O, 'color', 'r', 'LineWidth', 1, 'Marker', '+')
hold on
plot(data1018_rm.age_ka, data1018_rm.Cib_d18O, 'color', 'b', 'LineWidth', 1, 'Marker', '+')
plot(data849.age_ka, data849.d18O, 'color', [0.25, 0.5, 0.1], 'LineWidth', 1, 'Marker', '+')
ylabel("\delta^{18}O", 'fontweight', 'bold')
% ylim([2,5])
h = gca;  % Handle to currently active axes
set(h, 'YDir', 'reverse', 'TickDir', 'out');
xlim([ages(1), ages(2)]);
xlabel("Age (ka)", 'fontweight', 'bold');
title('Cibicidoides \delta^{18}O')
legend("ODP 1014 (1177m)", "ODP 1018 (2476m)", "ODP 849 (3851m)")

%% Section Four - d13C Figure

% Decides on the ages for the graphs
ages = [2000, 3800];

%d13C Figure
figure(figure_num)
figure_num = figure_num + 1;

% Uvig Subplot
subplot(2,1,1);

plot(data1014.age_ka, data1014.Uvig_d13C, 'color', 'r', 'LineWidth', 1, 'Marker', '+')
hold on
plot(data1018.age_ka, data1018.Uvig_d13C, 'color', 'b', 'LineWidth', 1, 'Marker', '+')
ylabel("\delta^{13}C", 'fontweight', 'bold')
h = gca;  % Handle to currently active axes
set(h, 'TickDir', 'out');
xlim([ages(1), ages(2)]);
xlabel("Age (ka)", 'fontweight', 'bold');
title('Uvigerina \delta^{13}C')
legend("ODP 1014 (1177m)", "ODP 1018 (2476m)")

% Cib Subplot
subplot(2,1,2);

plot(data1014_rm.age_ka, data1014_rm.Cib_d13C, 'color', 'r', 'LineWidth', 1, 'Marker', '+')
hold on
plot(data1018_rm.age_ka, data1018_rm.Cib_d13C, 'color', 'b', 'LineWidth', 1, 'Marker', '+')
plot(data849.age_ka, data849.d13C, 'Color', [0.25, 0.5, 0.1], 'LineWidth', 1, 'Marker', '+')
ylabel("\delta^{13}C", 'fontweight', 'bold')
h = gca;  % Handle to currently active axes
set(h, 'TickDir', 'out');
xlim([ages(1), ages(2)]);
xlabel("Age (ka)", 'fontweight', 'bold');
title('Cibicidoides \delta^{13}C')
legend("ODP 1014 (1177m)", "ODP 1018 (2476m)", "ODP 849 (3851m)")


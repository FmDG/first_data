%% Section One - Reading Data

% Site U1313
lang = readtable("data/lang_2016.csv");
lang_c = readtable("data/lang_2014.csv");
jakob = readtable("data/jakob_2020.csv");
bolton = readtable("data/bolton_2011.csv");
naafs = readtable("data/naafs_2020.csv");
% Site 925
wilkens = readtable("data/wilkens_2017.csv");

%% Section Two - Processing Data

% Remove missing rows, sort the dataset by age, and make sure every value
% is unique:
% lang = rmmissing(lang);
% lang = sortrows(lang, "age_ka");
% [~, ia] = unique(lang);
% lang = lang(ia , :);

figure_num = 1;
% Makes the colours used for the plots
colours = colormap(hsv(8));

%% Section Three - Plotting the Full Comparison Data

figure(figure_num)
figure_num = figure_num + 1;

subplot(3,1,1);

% Decides on the ages for the graphs
ages = [2400, 3400];

% U1313 and 925 d18O
plot(naafs.age_ka, naafs.d18O, 'color', colours(1, :), 'LineWidth', 1, 'Marker', '+')
hold on
plot(wilkens.age_ka, wilkens.d18O, 'color', colours(6, :), 'LineWidth', 1, 'Marker', '+')
ylabel("\delta^{18}O", 'fontweight', 'bold')
ylim([2,5])
h = gca;  % Handle to currently active axes
set(h, 'YDir', 'reverse', 'TickDir', 'out');
xlim([ages(1), ages(2)]);
xlabel("Age (ka)", 'fontweight', 'bold');
title('Corrected \delta^{18}O')
legend("U1313", "925")

% U1313 and 925 d13C
subplot(3,1,2);
plot(lang_c.age_ka, lang_c.d13C, 'color', colours(1, :), 'LineWidth', 1, 'Marker', '+')
hold on
plot(wilkens.age_ka, wilkens.d13C, 'color', colours(6, :), 'LineWidth', 1, 'Marker', '+')
ylabel("\delta^{13}C", 'fontweight', 'bold')
h = gca;  % Handle to currently active axes
set(h,'TickDir', 'out');
xlim([ages(1), ages(2)]);
xlabel("Age (ka)", 'fontweight', 'bold');
title('Corrected \delta^{13}C')
legend("U1313", "925")

% U1313 Mg/Ca

subplot(3,1,3);

plot(jakob.age_ka, jakob.MgCa, 'color', colours(1, :), 'LineWidth', 1, 'Marker', '+')
ylabel("Mg/Ca", 'fontweight', 'bold')
h = gca;  % Handle to currently active axes
set(h, 'TickDir', 'out');
xlim([ages(1), ages(2)]);
xlabel("Age (ka)", 'fontweight', 'bold');
title('Mg/Ca')
legend("U1313")


%% Section Four - Plotting the iNHG Data


figure(figure_num)
figure_num = figure_num + 1;

subplot(3,1,1);

% Decides on the ages for the graphs
ages = [2600, 2800];

% U1313 and 925 d18O
plot(naafs.age_ka, naafs.d18O, 'color', colours(1, :), 'LineWidth', 1, 'Marker', '+')
hold on
plot(wilkens.age_ka, wilkens.d18O, 'color', colours(6, :), 'LineWidth', 1, 'Marker', '+')
ylabel("\delta^{18}O", 'fontweight', 'bold')
ylim([2,5])
h = gca;  % Handle to currently active axes
set(h, 'YDir', 'reverse', 'TickDir', 'out');
xlim([ages(1), ages(2)]);
xlabel("Age (ka)", 'fontweight', 'bold');
title('Corrected \delta^{18}O')
legend("U1313", "925")


% U1313 and 925 d13C
subplot(3,1,2);
plot(lang_c.age_ka, lang_c.d13C, 'color', colours(1, :), 'LineWidth', 1, 'Marker', '+')
hold on
plot(wilkens.age_ka, wilkens.d13C, 'color', colours(6, :), 'LineWidth', 1, 'Marker', '+')
ylabel("\delta^{13}C", 'fontweight', 'bold')
h = gca;  % Handle to currently active axes
set(h,'TickDir', 'out');
xlim([ages(1), ages(2)]);
xlabel("Age (ka)", 'fontweight', 'bold');
title('Corrected \delta^{13}C')
legend("U1313", "925")


% U1313 Mg/Ca

subplot(3,1,3);

plot(jakob.age_ka, jakob.MgCa, 'color', colours(1, :), 'LineWidth', 1, 'Marker', '+')
ylabel("Mg/Ca", 'fontweight', 'bold')
h = gca;  % Handle to currently active axes
set(h, 'TickDir', 'out');
xlim([ages(1), ages(2)]);
xlabel("Age (ka)", 'fontweight', 'bold');
title('Mg/Ca')
legend("U1313")

%% Section Five - Plotting the U1313 Data

figure(figure_num)
figure_num = figure_num + 1;


% Decides on the ages for the graphs
ages = [2400, 3400];

subplot(2,1,1);

yyaxis left;

plot(lang.age_ka, lang.eNd, 'color', colours(1, :), 'LineWidth', 1, 'Marker', '+')
xlim([ages(1), ages(2)]);
ylabel("\epsilon_{Nd}", 'Color', colours(1, :), 'fontweight', 'bold')
h = gca;  % Handle to currently active axes
set(h, 'YColor', colours(1, :));

yyaxis right
plot(lang_c.age_ka, lang_c.d13C, 'color', colours(7, :), 'LineWidth', 1, 'Marker', '+')
xlim([ages(1), ages(2)]);
ylabel("\delta^{13}C", 'Color', colours(7, :), 'fontweight', 'bold')
h = gca;  % Handle to currently active axes
set(h, 'YColor', colours(7, :));
subplot(2,1,2);

yyaxis left;

plot(jakob.age_ka, jakob.MgCa, 'color', colours(5, :), 'LineWidth', 1, 'Marker', '+')
xlim([ages(1), ages(2)]);
ylabel("Mg/Ca", 'Color', colours(5, :), 'fontweight', 'bold')
h = gca;  % Handle to currently active axes
set(h, 'YColor', colours(5, :));


yyaxis right
plot(lang_c.age_ka, lang_c.d13C, 'color', colours(7, :), 'LineWidth', 1, 'Marker', '+')
xlim([ages(1), ages(2)]);
ylabel("\delta^{13}C", 'Color', colours(7, :), 'fontweight', 'bold')
h = gca;  % Handle to currently active axes
set(h, 'YColor', colours(7, :));


figure(figure_num)
figure_num = figure_num + 1;


% Decides on the ages for the graphs
ages = [2400, 3400];

subplot(2,1,1);

yyaxis left;

plot(lang.age_ka, lang.eNd, 'color', colours(1, :), 'LineWidth', 1, 'Marker', '+')
xlim([ages(1), ages(2)]);
ylabel("\epsilon_{Nd}", 'Color', colours(1, :), 'fontweight', 'bold')
h = gca;  % Handle to currently active axes
set(h, 'YColor', colours(1, :));

yyaxis right
plot(naafs.age_ka, naafs.d18O, 'color', colours(7, :), 'LineWidth', 1, 'Marker', '+')
xlim([ages(1), ages(2)]);
ylabel("\delta^{18}O", 'Color', colours(7, :), 'fontweight', 'bold')
h = gca;  % Handle to currently active axes
set(h, 'YDir', 'reverse', 'YColor', colours(7, :));

subplot(2,1,2);

yyaxis left;

plot(jakob.age_ka, jakob.MgCa, 'color', colours(5, :), 'LineWidth', 1, 'Marker', '+')
xlim([ages(1), ages(2)]);
ylabel("Mg/Ca", 'Color', colours(5, :), 'fontweight', 'bold')
h = gca;  % Handle to currently active axes
set(h, 'YColor', colours(5, :));

yyaxis right
plot(naafs.age_ka, naafs.d18O, 'color', colours(7, :), 'LineWidth', 1, 'Marker', '+')
xlim([ages(1), ages(2)]);
ylabel("\delta^{18}O", 'Color', colours(7, :), 'fontweight', 'bold')
h = gca;  % Handle to currently active axes
set(h, 'YDir', 'reverse', 'YColor', colours(7, :));

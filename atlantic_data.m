%% Section One - Reading Data

% Site U1313
lang = readtable("data/lang_2016.csv");
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

%% Section Three - Plotting the Data

figure(figure_num)
figure_num = figure_num + 1;

subplot(3,1,1);

% Decides on the ages for the graphs
ages = [2600, 3300];

% U1313 and 925 d18O
plot(naafs.age_ka, naafs.d18O, 'color', colours(1, :), 'LineWidth', 1, 'Marker', '+')
hold on
plot(wilkens.age_ka, wilkens.d18O, 'color', colours(3, :), 'LineWidth', 1, 'Marker', '+')
ylabel("\delta^{18}O", 'fontweight', 'bold')
ylim([2,5])
h = gca;  % Handle to currently active axes
set(h, 'YDir', 'reverse', 'TickDir', 'out');
xlim([ages(1), ages(2)]);
xlabel("Age (ka)", 'fontweight', 'bold');
title('Corrected \delta^{18}O')
legend("U1313", "925")


% U1313 Nd
subplot(3,1,2);

plot(lang.age_ka, lang.eNd, 'color', colours(1, :), 'LineWidth', 1, 'Marker', '+')
ylabel("\epsilon_{Nd}", 'fontweight', 'bold')
h = gca;  % Handle to currently active axes
set(h, 'TickDir', 'out');
xlim([ages(1), ages(2)]);
xlabel("Age (ka)", 'fontweight', 'bold');
title('Corrected \epsilon_{Nd}')
legend("U1313")

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


figure(figure_num)
figure_num = figure_num + 1;

subplot(3,1,1);

% Decides on the ages for the graphs
ages = [2600, 2800];

% U1313 and 925 d18O
plot(naafs.age_ka, naafs.d18O, 'color', colours(1, :), 'LineWidth', 1, 'Marker', '+')
hold on
plot(wilkens.age_ka, wilkens.d18O, 'color', colours(3, :), 'LineWidth', 1, 'Marker', '+')
ylabel("\delta^{18}O", 'fontweight', 'bold')
ylim([2,5])
h = gca;  % Handle to currently active axes
set(h, 'YDir', 'reverse', 'TickDir', 'out');
xlim([ages(1), ages(2)]);
xlabel("Age (ka)", 'fontweight', 'bold');
title('Corrected \delta^{18}O')
legend("U1313", "925")


% U1313 Nd
subplot(3,1,2);

plot(lang.age_ka, lang.eNd, 'color', colours(1, :), 'LineWidth', 1, 'Marker', '+')
ylabel("\epsilon_{Nd}", 'fontweight', 'bold')
h = gca;  % Handle to currently active axes
set(h, 'TickDir', 'out');
xlim([ages(1), ages(2)]);
xlabel("Age (ka)", 'fontweight', 'bold');
title('Corrected \epsilon_{Nd}')
legend("U1313")

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

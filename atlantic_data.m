%% Section One - Reading Data

lang = readtable("data/lang_2016.csv");
jakob = readtable("data/jakob_2020.csv");
wilkens = readtable("data/wilkens_2017.csv");

%% Section Two - Processing Data

% Remove missing rows, sort the dataset by age, and make sure every value
% is unique:
% cib_1209 = rmmissing(cib_1209);
% cib_1209 = sortrows(cib_1209, "age_ka");
% [~, ia] = unique(cib_1209);
% cib_1209 = cib_1209(ia , :);

%% Section Three - Plotting the Data

% Makes the colours used for the plots
colours = colormap(hsv(3));

figure(figure_no)
figure_no = figure_no + 1;

ages = [2600, 3200];

% Cibicidoides wuellerstorfi d18O
plot(data_u1308.age_ka, data_u1308.d18O, 'color', colours(1, :), 'LineWidth', 1, 'Marker', '+')
hold on
plot(data_u1313.age_ka, data_u1313.d18O, 'color', colours(3, :), 'LineWidth', 1, 'Marker', '+')
ylabel("\delta^{18}O", 'fontweight', 'bold')
ylim([2,5])
h = gca;  % Handle to currently active axes
set(h, 'YDir', 'reverse', 'TickDir', 'out');
xlim([ages(1), ages(2)]);
xlabel("Age (ka)", 'fontweight', 'bold');
title('\delta^{18}O from C. wuellerstorfi')
legend("U1308", "U1313")
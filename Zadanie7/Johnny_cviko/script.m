data = [0       0       28.5;
        550     0       28.7;
        800     0       29;
        800     860     31.5;
        500     860     31.1;
        0       860     30.5;
        0       1700    29;
        370     1700    29.5;
        900     1700    30.2]
figure
title("Plosne zobrazenie prejdenych suradnic")
xlabel("X [px]")
ylabel("Y [px]")
grid on
posunX = (max(data(:,1)) - min(data(:,1)))*0.1
posunY = (max(data(:,2)) - min(data(:,2)))*0.1
posunX1 = (max(data(:,1)) - min(data(:,1)))*0.01
posunY1 = (max(data(:,2)) - min(data(:,2)))*0.025
axis([min(data(:,1))-posunX max(data(:,1))+posunX min(data(:,2))-posunY max(data(:,2))+posunY])
%min(data(:,2))
hold on
for i = 1 : size(data,1)
    %dim = [data(i,1)+10 data(i,2)+10 .3 .3]
    str = "T = " + data(i,3) + " C"
    plot(data(i,1), data(i,2), '*k');
    %annotation('textbox', dim, 'String', str, 'FitBoxToText', 'on')
    text(data(i,1)+posunX1, data(i,2)+posunY1, str)
    if i ~= size(data,1)
        line([data(i,1), data(i+1,1)],[data(i,2), data(i+1,2)])
    end
end
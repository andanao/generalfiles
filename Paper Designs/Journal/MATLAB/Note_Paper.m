close all; clear all;

%% Figure Shit
scale = 1.2;
fig = figure('units', 'pixels','position', [1200 200 850/scale 1100/scale]);
fig.Color = [.95 .95 .95];
fig.PaperPosition = [0 0 8.5 11];
% fig.MenuBar = 'none'; fig.ToolBar = 'none';
hold on
%% Actual Plot
width = 5;
height=8.2;

spacing = .25;  %change to .17 ish

marg = 1.5*spacing; 
right = width-marg;
top = height-(marg+1.5*spacing);
bottom = marg;
left = marg;

lineheights = bottom:spacing:top;
line_mat = zeros(length(lineheights),4);
line_mat(:,1) = left;
line_mat(:,2) = right;
line_mat(:,3:4)= [lineheights; lineheights]';
line_mat = line_mat+1;

%tab in lines 1 and 4
line_mat(end,1) = line_mat(end,1)+(right-left)/8;
line_mat(end-3,1) = line_mat(end,1);

top = max(max(lineheights));

plot(1+[0,width,width,0,0],1+[0,0,height,height,0],'-.k.','LineWidth',.25) %page outline
plot(line_mat(:,1:2)',line_mat(:,3:4)','-k.','LineWidth',2) %actual writing lines

plot(1+[left,right/2],1+[top+1*spacing,top+1*spacing],'-k.','LineWidth',2) %date line

%extended lines for multi page entries
plot(1+[left,right],1+[top+1*spacing,top+1*spacing],':k.','LineWidth',1)
plot(1+[left,right],1+[top,top],':k.','LineWidth',1)
plot(1+[left,right],1+[top-3*spacing,top-3*spacing],':k.','LineWidth',1)

plot(1+[left,left;right,right]',[1+bottom,line_mat(end-1,end);1+bottom,line_mat(end,end)]',':k.','LineWidth',1) %block end lines

%% Setting the Figure to be nice


axis([0 8.5 0 11])
hAxes = gca;
hAxes.XRuler.Axle.LineStyle = 'none';  
hAxes.Position = [0 0 1 1];
axis off;
name = strcat('The Author-',datestr(now,'yyyy-mm-dd'),'.pdf');

saveas(fig,name) 
open(name)


% close all

close all; clear all;

%% Figure Shit
scale = 1.2;
fig = figure('units', 'pixels','position', [0 32 850/scale 1100/scale]);
fig.Color = [.95 .95 .95];
fig.PaperPosition = [0 0 8.5 11];
% fig.MenuBar = 'none'; fig.ToolBar = 'none';
hold on
%% Actual Plot
spacing = .175;  %change to .17 ish
marg = spacing+.05; 
right = 8.5-marg;
top = 11-marg-3*spacing;
bottom = marg;
left = marg;


x = marg:spacing:right;
y = marg:spacing:top;
points = zeros(length(x)*length(y),2);
ind = 1;

printvec('marg L',x(1),'')
printvec('marg R',8.5-x(end),'')
for i = 1:length(x);
    for j = 1:length(y)
        points(ind,:) = [x(i), y(j)];
        ind = ind+1;
    end
end


col = [200, 200, 220]/235;
tcol = [200, 200, 240]/255;
right = max(x);

%determine nice way to make subtle indents

%fix the way this header is made
plot([marg, right],[top+spacing top+spacing],'Color',tcol) 
plot([marg right],[top+2*spacing top+2*spacing],':','Color',tcol)
plot([x(9) x(9)],[top+spacing 11-marg],'Color',tcol)
plot([x(end-8) x(end-8)],[top+spacing 11-marg],'Color',tcol)

plot([marg right],[top+3*spacing top+3*spacing],'Color',col)
plot([marg marg],[top+3*spacing top+spacing],'Color',col)
plot([right right],[top+3*spacing top+spacing],'Color',col)


txt = text(right-1.37,top+1.5*spacing,'Adrian Danao-Schroeder'); %Move this down to the line below it
txt.Margin = 3;
txt.FontSize = 8.75;
txt.Color = [200, 200, 240]/555;
%% Setting the Figure to be nice

pl = plot(points(:,1),points(:,2),'.');
pl.MarkerSize = 4; 
pl.Color = col;
axis([0 8.5 0 11])
hAxes = gca;
hAxes.XRuler.Axle.LineStyle = 'none';  
hAxes.Position = [0 0 1 1];
axis off;
name = strcat('Note Paper-',datestr(now,'yyyy-mm-dd'),'.pdf');

saveas(fig,name)
open(name)


close all

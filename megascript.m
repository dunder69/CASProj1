%This script produces all the plots we used in our paper. Give it a couple
%minutes to load everything.

clear;

%Figure 1a
[xpoints,ypoints] = dymap2d(.2,.25,.05,.05,35);
plot(xpoints);
title('Fixed Point Behavior','FontSize', 16);
xlabel('t','FontSize', 16);
ylabel('x_t Values','FontSize', 14);
yyaxis right
plot(ypoints,'--');
ylabel('y_t Values','FontSize', 14);
clear;

%Figure 1b
figure;
[xpoints,ypoints] = dymap2d(.8,.3,.1,.1,50);
plot(xpoints);
title('Limit Cycle Behavior','FontSize', 16);
xlabel('t','FontSize', 16);
ylabel('x_t Values','FontSize', 14);
yyaxis right
plot(ypoints,'--');
ylabel('y_t Values','FontSize', 14);
clear;

%Figure 1c
figure;
[xpoints,ypoints] = dymap2d(1.425,.3,.29999999999999,.3,6000);
plot(xpoints);
title('Complex Behavior','FontSize', 16);
xlabel('t','FontSize', 16);
ylabel('x_t Values','FontSize', 14);
yyaxis right
plot(ypoints,'--');
ylabel('y_t Values','FontSize', 14);
clear;



%Figure 2a and b. Initial values are selected randomly, so it is unlikely
%that this will produce the exact graph in our paper.
figure;
fig2ab;
clear; 


%Figure 3a and b (Zoom in for 3b)
figure;
bifurcationplot();
clear;


%Figure 4
figure;
lyapunov_graph;
clear;

%Figure 5 a and b (Zoom in for 5b)
figure;
henon_strage_attractor;
clear;

%Figure 6 (Will need to rotate this manually to get figure in paper)
figure;
dynamflow3dPlot([1.0 1.0 1.0],500);
clear;

%Figure7
figure;
lyapunov3dgraph;
clear;

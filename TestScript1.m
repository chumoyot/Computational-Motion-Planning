%
%

%% Define a small map
map = false(10);

% Add an obstacle
map (1:2, 7) = true;
map (4, 7:10) = true;
map (1:3, 5) = true;
map(5,2:5) = true;
map (1:3, 2) = true;
map (6:10, 2) = true;
map (7, 1) = true;
map (7:10, 5) = true;

start_coords = [9, 7];
dest_coords  = [1, 1];

%%
close all;
[route, numExpanded] = DijkstraGrid (map, start_coords, dest_coords);
% Uncomment following line to run Astar
% [route, numExpanded] = AStarGrid (map, start_coords, dest_coords);

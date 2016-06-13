%% Track layout optimizer
% BITS Hyperloop team

%% Section 1: Global constant declarations

N = 100;  % Number of control vertices for candidate B Splines
K = 3;    % Degree of candidate B Splines (cubic curves are standard in modelling)

debug_level = 0; % Zero = no debug, increases from there


%% Section 2: Initialize data store

% @akulsareen

%% Section 3: Initialize GA and solve
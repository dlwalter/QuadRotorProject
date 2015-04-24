%% startVars.m - Initialize variables
% This script initializes variables and buses required for the model to
% work. Mask block parameters are defined by structures that define the
% location of the block, ie. If the Initial Condition parameter is located
% under Vehicle/Nonlinear/Integrator the variable is set to
% Vehicle.Nonlinear.Integrator.initialCondition = 0;

%   Copyright 2013 The MathWorks, Inc.

% Register variables in the workspace before the project is loaded
initVars = who;

% Variants Conditions
Variants.Command = 0;
Variants.Sensors = 0;
Variants.Environment = 0;
Variants.Vehicle = 1;
Variants.Visualization = 0;
Variants.Actuators = 3;

% Add enum structure for the Variants
 Simulink.defineIntEnumType('Variants',{'Command','Vehicle','Environment',...
     'Sensors','Visualization','Actuators'},[0;0;0;0;0;0]);
 
% Bus definitions 
asbBusDefinitionCommand; 
asbBusDefinitionSensors;
asbBusDefinitionEnvironment;
asbBusDefinitionStates;

% Sampling rate
Ts= 0.01;

% Mass properties
mass = 0.078;
inertia = 1.0e-03*[0.3523 0.0001 0;... 
                   0.0001 0.3522 0;...
                   0      0 0.6788];

% Geometric properties
thrustArm = 0.10795;

% Initial contitions
initDate = [2013 1 1 0 0 0];
initPosLLA = [0 0 100];
initPosNED = [0 0 -100];
initVb = [0 0 0];
initEuler = [0 0 0];
initAngRates = [0 0 0];

%% Custom Variables
% Add your variables here:
% myvariable = 0;

%SPI Variables
Ts = 1/1e5;  % Run ARM process at 100KHz


%conv_accl = 


% Register variables after the project is loaded and store the variables in
% initVars so they can be cleared later on the project shutdown.
endVars = who;
initVars = setdiff(endVars,initVars);
clear endVars;



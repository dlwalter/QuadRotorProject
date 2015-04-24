
clear all;
close all;
clc;
load Buses.mat;
load INSdataHoneywell.mat;

%% Timing Information
fSensor  = 2460;                        % Hz
dtSensor = 1/fSensor;
fS     = 1000;                           % Hz
tS     = 1/fS;                          % sec
tStart = 0;                             % sec
t_initialize = tS;
tStop  = 15000;                         % sec
tTotalSamples = (tStop-tStart) / tS;    % []

%% Constants

% Unit Constants

convert = struct;
convert.hrTosec           = 3600;                          % min / hr
convert.secTohr           = 1/convert.hrTosec;             % sec / hr
convert.degTorad          = pi/180;                        % rad / deg
convert.radTodeg          = 1/convert.degTorad;            % deg / rad
convert.rpsTodph          = convert.radTodeg/convert.secTohr;
convert.dphTorps          = 1/convert.rpsTodph;
convert.gTomss            = 9.80665;                       % g       /(m/s/s)
convert.mssTog            = 1/convert.gTomss;              % (m/s/s) / g
convert.mgTomss           = convert.gTomss*1e-3;           % mg      /(m/s/s)
convert.mssTomg           = convert.mssTog*1e+3;           % (m/s/s) / mg
convert.ugTomss           = convert.gTomss*1e-6;           % ug      /(m/s/s)
convert.mssToug           = convert.mssTog*1e+6;           % (m/s/s) / ug
convert.tSTosec           = tS;                            % sec
convert.secTotS           = tS;                            % sec
convert.ppmTopp1          = 1e-6;                          % ppm to parts per one
convert.pp1Toppm          = 1/convert.ppmTopp1;            % ppm to parts per one
convert.uradTorad         = 1/1e6;                         % rad / urad
convert.radTourad         = 1/convert.uradTorad;           % urad / rad
convert.ftTomtr           = 0.3048;                        % mtr / ft
convert.mtrToft           = 1/convert.ftTomtr;             % ft / mtr
convert.hzToradPerSec     = 2*pi;                          % rads/sec / Hz
convert.radPerSectohz     = 1/convert.hzToradPerSec;       % Hz / rads/sec 


% Earth Constants

earthConstants.radiusEquator  = 6378137;                     % m        Equatorial axis
earthConstants.radiusPolar    = 6356752.3;                   % m        Polar axis
earthConstants.earthRateE     = [0;0;7.2921150e-5];          % rad/sec  Earth Rate
earthConstants.gEquator       = 9.78032533;                  % m/s      Gravity at equator
earthConstants.gPolar         = 9.8321849378;                % m/s      Gravity at pole
earthConstants.e              = 0.081819190842622;           % n/a      Eccentricity
earthConstants.gm             = 3986004.418e8;               % m^3/s^2  Gravitional Field Constant
earthConstants.f              = 1.0/298.257223563;           % n/a      flatting
earthConstants.gStd           = 9.80665;                     % m/s/s    Standard gravity

earthRadii.radius = 0;
earthRadii.meridional = 0;
earthRadii.normal = 0;
earthRadii.curvatureL = [0 0 0; 0 0 0; 0 0 0];

transportRateL = [0;0;0];
earthRateL = [0;0;0];
gravityL = -[0;0;earthConstants.gStd];
coriolisL = [0;0;0];
centripetalL = [0;0;0];



%% Initial Navigation

initialHeading      = 0;
initialLatitude     = 34.042872 * convert.degTorad;     %N
initialLongitude    = 118.696816 * convert.degTorad;    %W
initialAltitude     = 147.882;                          %m
declination         = -12.4;                            %deg

% Initialize NavData
initialRoll = 0;
initialPitch = 0;
initialYaw = 0;
initialVelocityL = [0;0;0];






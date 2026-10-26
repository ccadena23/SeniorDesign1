function [] = moveTo(starting, ending)
% moveTo is a function that moves a washer from one position
% to another, using the electromagnet and DC motor. 
% starting -- position [in degrees] where washer currently is
% ending -- position [in degrees] where washer will move to

% NOTE:
% 1) the degrees of 'starting' and 'ending' must be absolute, not relative
% 2) the motor model (in simulink) must already be running

% move to starting position
set_param('SpringMotorModel/desiredPosition', 'Value', int2str(starting));

% turn magnet on
set_param('SpringMotorModel/magnet', 'Value', int2str(3.3));

% move to ending position
set_param('SpringMotorModel/desiredPosition', 'Value', int2str(ending));

% turn magnet off
set_param('SpringMotorModel/magnet', 'Value', int2str(0));

end
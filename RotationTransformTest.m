clc;
clear all;
%Rotation(3x1) -> Matrix(3x3) -> Quntenion(4x1) -> Matrix(3x3) ->
%Rotation(3x1)

% Rotation vector of x,y,z axis.
Rv = [13 20 50];

% 3x3 matrix of R vector (Results of the Rm1 and Rm2 is similar.)
Rm1 = rodrigues(Rv*pi/180)
Rm2 = mRotMat(Rv)

% Quntenion vector of R matrix
Rq1 = matrix2quaternion(Rm1)
Rq2 = matrix2quaternion(Rm2)

% R matrix of Q vector
Rm1_1 = quaternion2matrix(Rq1)
Rm2_2 = quaternion2matrix(Rq1)

% R vector of R matrix
Rv_1 = rodrigues(Rm1_1(1:3,1:3)) * 180/pi
Rv_2 = rodrigues(Rm2_2(1:3,1:3)) * 180/pi




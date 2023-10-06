%%function T2=mensa_t2(Splus,Sminus,TR,TE)
%Function provides the T2 map based on dual-echo steady-state (DESS) or
%MENSA acquisition
%The function provides T2 values based on the units for TR and TE
% Splus: first echo (SSFP-FID)
% Sminus: second echo (SSFP-Echo)
% TR: Repetition time, in units of msec
% TE: Echo time, in units of msec
% T2: Output T2 values, in units of msec
% Copyright Hospital for Special Surgery, October 2023
%%
function T2=mensa_t2(Splus,Sminus,TR,TE)
T2=2*(TR-TE)./(-log(Sminus./Splus));
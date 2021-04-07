%% direct Kinematics

a_dk =  [-pi/4
   pi/3
   -pi/6
    pi/2
   pi/3
   pi/4];

o_dk = direct_transform(a_dk, false)

%pos = niryo_one(a_dk, false, false);

%% inverse Kinematics

o_ik = [295.6437
 -262.7272
  199.6873
   -1.8925
    2.7352
    0.8861];

[a_ik, offset, has_solutions] = inverse_transform(o_dk');
% for i= 1:18
% o_dk = direct_transform(a_ik(:,i), false)
% end

%%
if ~has_solutions
    disp("There are no available solutions!");
    return
end

disp("Found at least " + num2str(size(a_ik,2)) + " option.");
disp("Best inverse kinematic solution with " + num2str(offset(1)) + " norm error.");

disp("Best solution :");
disp(a_ik(:,1));


%%
% niryo_one(a_ik(:,1), false, true)
% niryo_one(a_ik(:,3), false, true)
% niryo_one(a_ik(:,5), false, true)
% niryo_one(a_ik(:,7), false, true)

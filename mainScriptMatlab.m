%%
rosinit; %Conection to master node
%%
velPub = rospublisher('/turtle1/cmd_vel', 'geometry_msgs/Twist'); %Publisher creation
velMsg = rosmessage(velPub); %Message creation
%%
velMsg.Linear.X = 1; %Message value
send(velPub, velMsg); %Send
pause(1)
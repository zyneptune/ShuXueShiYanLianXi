clear
close all
%% init setting
Y = ginput(5);
xx = 0:0.001:1;
yy = spline(Y(:,1),Y(:,2),xx);
yy(1) = 5;
yy(1001) = 5;
plot(xx,yy);  % 山
hold on;
v = [0.3 ,0]; %starting speed

ball_pos = [0.001,5]; % Starting position of the ball
ep = 0; %当速度小于ep时认为运动停止
t = 0.01;%时间间隔
speed_loss = 1-0.9^(0.5);
A = [0,-1;1,0]; %逆时针旋转90
%%
%motion
k = 0;
while norm(v)>= 0
    [ball_pos,v] = coll(ball_pos,v,t,[xx;yy]');
    plot(xx,yy);
    k = k+1;
%     if k == 10
%         energy = v*v' + 2 * 9.8 *ball_pos(2);
%         k =0;
%     end
    hold on;
    comet(ball_pos(1),ball_pos(2));
    hold off;
    pause(0.01)
end



%     next_ball_pos = ball_pos + v.*t;
%     tra = [ball_pos;next_ball_pos];
%     
%     %判断是否碰撞
%     if tra(1,1)<= tra(2,1)
%         p = floor(1000*tra(1,1))+1;
%         q =floor(1000*tra(2,1))+1;
%     else
%         p = floor(1000*tra(2,1))+1;
%         q =floor(1000*tra(1,1))+1;
%     end
%     
%     if p < 1
%         p = 1;
%     end
%     if q>1001
%         q = 1001;
%     end
%     
%     n = 0;
%     cro = [0 0];
% %     internal = 1;
%     k = 0;
%     
%     for i = p:q-1
%         
%         L = [xx(i),yy(i);xx(i+1),yy(i+1)];
%         [n,~] = ifintersect(tra,L);
% %         if p ==0 && i ==1
% %             [n,cro] = ifintersect(tra,[xx(1),yy(1);xx(2),yy(2)]);
% %         end
% %         if q ==101 && i ==100
% %             [n,cro] = ifintersect(tra,[xx(100),yy(100);xx(101),yy(101)]);
% %         end
%         
%         if  n == 1
%             [~,cro] = ifintersect(tra,L);
%             break;
%         end
%     end
%     
%     % 运动
%     if n == 0
%         ball_pos = next_ball_pos;
%         v=v+[0,-9.8].*t;  
%     else
%         
% %         ax = (L(2,:)-L(1,:))';
% %         ax = ax ./ norm(ax);
% %         H = diag([1,1]) - 2.* ax * ax';
% %         left_time = t - norm(cro'-ball_pos)/norm(v);
% %         v = -(H * v')';
% %         v = v - speed_loss * (v * (A*ax)).*(A*ax)';
% %         ball_pos = cro' + v.*left_time;
% %         plot(cro(1),cro(2),'*');
% %        v=v+[0,-9.8].*t;  
%     end
function [ ball_pos,v] = coll( ball_pos,v,t,mountain )
%COLL ≈ˆ◊≤
    if t > 0
    xx = mountain(:,1);
    yy = mountain(:,2);
    next_ball_pos = ball_pos + v.*t;
    tra = [ball_pos;next_ball_pos];
    A = [0,-1;1,0];
    speed_loss = 1-0.9^(0.5);
    %≈–∂œ «∑Ò≈ˆ◊≤
    if tra(1,1)<= tra(2,1)
        p = floor(1000*tra(1,1))+1;
        q =floor(1000*tra(2,1))+1;
    else
        p = floor(1000*tra(2,1))+1;
        q =floor(1000*tra(1,1))+1;
    end
    
    if p < 1
        p = 1;
    end
    if q>1001
        q = 1001;
    end
    
    n = 0;
    for i = p:q
        
        L = [xx(i),yy(i);xx(i+1),yy(i+1)];
        [n,~] = ifintersect(tra,L);
        
        if  n == 1
            [~,cro] = ifintersect(tra,L);
            break;
        end
    end
    
    % ‘À∂Ø
    if n == 0
        ball_pos = next_ball_pos;
    else
        ax = (L(2,:)-L(1,:))';
        ax = ax ./ norm(ax);
        H = diag([1,1]) - 2.* ax * ax';
        left_time = t - norm(cro'-ball_pos)/norm(v);
        v = -(H * v')';
        v = v - speed_loss * (v * (A*ax)).*(A*ax)';
        %
        t = t - 0.001;
        [ball_pos,v] = coll(cro'+0.001.*v,v,left_time,mountain);
    end
    
    v=v+[0,-9.8].*t; 
    end
end


function  points = tmouse(action)
% TMOUSE ����չʾ�����Handle Graphics���趨����¼�(Mouse
% Events)�ķ�Ӧָ��(Callbacks)
%������������ƶ��ǳ���ʱ��������ɻ������ߡ�
global x y x0 y0
if nargin == 0, action = 'start'; end

points =[0,0];
switch(action)
    % ����ͼ���Ӵ�
    case 'start',
    axis([1 150 1 200]);% �趨ͼ�᷶Χ
    %axis off;
    box on
    box on;% ��ͼ�����ͼ��
    title('���ڴ����а�ס��겢д��','fontsize',20,'color','Blue');
    % �趨��갴ť������ʱ�ķ�Ӧָ��Ϊ��tmouse down��
    set(gcf, 'WindowButtonDownFcn', 'tmouse down');
    % ��갴ť������ʱ�ķ�Ӧָ��
    case 'down',
    % �趨����ƶ�ʱ�ķ�Ӧָ��Ϊ��tmouse move��
    set(gcf, 'WindowButtonMotionFcn', 'tmouse move');
    % �趨��갴ť���ͷ�ʱ�ķ�Ӧָ��Ϊ��tmouse up��
    set(gcf, 'WindowButtonUpFcn', 'tmouse up');
    currPt = get(gca, 'CurrentPoint');
     x0 = currPt(1,1);
     y0 = currPt(1,2);
        % ����ƶ�ʱ�ķ�Ӧָ��
    case 'move',
    currPt = get(gca, 'CurrentPoint');
    x = currPt(1,1);
    y = currPt(1,2);
     %line(x, y, 'marker', '.','markerSize',28, 'LineStyle','-','LineWidth',4,'Color','Red');
     %    line(x,y, 'marker', '.','markerSize',20, 'LineStyle','-','LineWidth',10,'Color','Red');
     %%������ƶ��ǳ���ʱ���ϱߵĳ���ֻ�ܻ�һЩ����ĵ㣬���³�����Ϊ�˰�ǰ�����ڵĵ���������
     %%������ѧ��y=kx+bֱ�߷���ʵ�֡�
      x_gap=0.1 ;%����x��������
      y_gap=0.1;%����y��������
      if x>x0
          step_x=x_gap;
      else
          step_x=-x_gap;
      end
      if y>y0
          step_y=y_gap;
      else
          step_y=-y_gap;
      end
     X=x0:step_x:x ;        %%����x�ı仯��Χ�Ͳ���
                                %%���¶���y�ı仯��Χ�Ͳ���
     if abs(x-x0)<0.01              %%ֱ��ƽ����y��
         Y=y0:step_y:y;     %%б�ʲ�����ʱ,yֵ�̶�
     else
        Y=(y-y0)*(X-x0)/(x-x0)+y0;   %��б�ʴ��ڣ�k=(y-y0)/(x-x0)~=0
     end
      line( X ,Y, 'marker', '.','markerSize',8, 'LineStyle','-','LineWidth',3,'Color','K');%%��һ��ֱ�ߣ��������Ծ�ƶ�ʱ
           
    % end
     x0=x;                          %��ס��ǰ������
      y0=y;                         %��ס��ǰ������
    % plot(x,y, 'marker', '.');
        %'EraseMode', 'xor',
    % ��ӡ��Mouse is moving!��ѶϢ���������λ��
     fprintf('Mouse is moving! Current location = (%g, %g)\n', currPt(1,1), currPt(1,2));
     points(1,:) = [currPt(1,1), currPt(1,2) ];
     
    % ��갴ť���ͷ�ʱ�ķ�Ӧָ��
    case 'up',
    % �������ƶ�ʱ�ķ�Ӧָ��
    set(gcf, 'WindowButtonMotionFcn', '');
    % �����갴ť���ͷ�ʱ�ķ�Ӧָ��
    set(gcf, 'WindowButtonUpFcn', '');
    % ��ӡ��Mouse up!��ѶϢ
    fprintf('Mouse up!\n');

end 

% GUI

%%
%图形对象句柄
%
x = 1:100;
y = sin(x);
h = plot(x,y);

%此处h的值为句柄
%更改颜色
set(h,'Color',[0 1 0]);
% get(h); %可以得到对象属性
% AlignVertexCenters: 'off'
%             Annotation: [1x1 matlab.graphics.eventdata.Annotation]
%           BeingDeleted: 'off'
%             BusyAction: 'queue'
%          ButtonDownFcn: ''
%               Children: [0x0 GraphicsPlaceholder]
%               Clipping: 'on'
%                  Color: [0 1 0]
%              CreateFcn: ''
%              DeleteFcn: ''
%            DisplayName: ''
%       HandleVisibility: 'on'
%                HitTest: 'on'
%          Interruptible: 'on'
%               LineJoin: 'round'
%              LineStyle: '-'
%              LineWidth: 0.5000
%                 Marker: 'none'
%        MarkerEdgeColor: 'auto'
%        MarkerFaceColor: 'none'
%             MarkerSize: 6
%                 Parent: [1x1 Axes]
%          PickableParts: 'visible'
%               Selected: 'off'
%     SelectionHighlight: 'on'
%                    Tag: ''
%                   Type: 'line'
%          UIContextMenu: [0x0 GraphicsPlaceholder]
%               UserData: []
%                Visible: 'on'
%                  XData: [1x100 double]
%              XDataMode: 'manual'
%            XDataSource: ''
%                  YData: [1x100 double]
%            YDataSource: ''
%                  ZData: [1x0 double]
%            ZDataSource: ''

%%
%层次
%从root开始，构成层次关系
%root -> figure -> Uicontrol & Axes & Uimenu -> ......
%Ep: root -> figure -> Axes -> image

%%
%句柄 图形对象的id handle
%h = plot(x1,y1,x2,y2,...,xn,yn) 会生成n个句柄
%屏幕句柄0 当前图形窗口gcf 当前坐标轴 gca 当前对象 gco
%get(h_obj,'PropertyName') 返回对象属性值
%get(h_obj)返回对象属性
%set(h_obj,'PropertyName','PropertyValue')
set(h,'LineWidth',1)

%delete(h_obj) 删除对象 同时会删除子对象

%%
%GUIDE
%guide()
% GUI

%%
%ͼ�ζ�����
%
x = 1:100;
y = sin(x);
h = plot(x,y);

%�˴�h��ֵΪ���
%������ɫ
set(h,'Color',[0 1 0]);
% get(h); %���Եõ���������
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
%���
%��root��ʼ�����ɲ�ι�ϵ
%root -> figure -> Uicontrol & Axes & Uimenu -> ......
%Ep: root -> figure -> Axes -> image

%%
%��� ͼ�ζ����id handle
%h = plot(x1,y1,x2,y2,...,xn,yn) ������n�����
%��Ļ���0 ��ǰͼ�δ���gcf ��ǰ������ gca ��ǰ���� gco
%get(h_obj,'PropertyName') ���ض�������ֵ
%get(h_obj)���ض�������
%set(h_obj,'PropertyName','PropertyValue')
set(h,'LineWidth',1)

%delete(h_obj) ɾ������ ͬʱ��ɾ���Ӷ���

%%
%GUIDE
%guide()
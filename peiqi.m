clc;clear;close all;
%======================================
%  Author：好玩的MATLAB
%  Email : 2377389590@qq.com
%  Date  :2022-5-31
%--------------------------------------
ax=gca;
ax.XLim=[-5 5];
ax.YLim=[0 10];
hold on;
% ================猪尾巴==========================
% 使用阿基米德螺旋线变形方式绘制
theta = -pi:0.01*pi:pi;
r =0.2*theta;
x = r.*cos(theta);
y = -r.*sin(theta);
plot(x-2.6871,y+2.7277,'color',[0.98 0.68 0.87],'LineWidth',3)
pause(0.5)
%=================== 左手============================
line([-3.2 -1.7],[3.5 4.3],'Color',[0.85 0.55 0.73],'LineStyle','-','LineWidth',5,'LineJoin','round')
line([-3.3 -2.7],[3.9 3.8],'Color',[0.85 0.55 0.73],'LineStyle','-','LineWidth',5,'LineJoin','round')
line([-3 -2.7],[3.2 3.8],'Color',[0.85 0.55 0.73],'LineStyle','-','LineWidth',5,'LineJoin','round')
pause(0.5)
% ===================右手=============================
line([2.4 1.1],[3.3 4.3],'Color',[0.85 0.55 0.73],'LineStyle','-','LineWidth',5,'LineJoin','round')
line([2 2],[3.53 3.1],'Color',[0.85 0.55 0.73],'LineStyle','-','LineWidth',5,'LineJoin','round')
line([2 2.4],[3.5 3.7],'Color',[0.85 0.55 0.73],'LineStyle','-','LineWidth',5,'LineJoin','round')
pause(0.5)
% ===================左腿===============================
line([-1.4448 -1.4686],[1.8487 0.9921],'Color',[0.85 0.55 0.73],'LineStyle','-','LineWidth',8,'LineJoin','round')
pause(0.5)
% ==================右腿==============================
line([0.4349 0.4349],[1.85 1.0159],'Color',[0.85 0.55 0.73],'LineStyle','-','LineWidth',8,'LineJoin','round')
pause(0.5)
% ==================左脚===============================
EllipseAndCircle(0.6,0.2,-1.1,1,[0,2*pi],0,[0 0 0],2,'fill',[0 0 0],1);
pause(0.5)
% ==================右脚==============================
EllipseAndCircle(0.6,0.2,0.8,1,[0,2*pi],0,[0 0 0],2,'fill',[0 0 0],1);
pause(0.5)
%===================身体==============================
EllipseAndCircle(2.35,5,-0.27,0.4,[0.3,2.861],0,[ 0.71 0.2 0.3],4,'fill',[1 0.35 0.37],1);
pause(0.5)
% ==================耳朵===============================
EllipseAndCircle(0.4,0.63,2.5,8,[0,2*pi],-0.4,[0.85 0.55 0.73],3,'fill',[0.98 0.68 0.87],1);
EllipseAndCircle(0.4,0.63,3.5,7,[0,2*pi],-0.7,[0.85 0.55 0.73],3,'fill',[0.98 0.68 0.87],1);
pause(0.5)
% =================头和嘴巴=========================
EllipseAndCircle(1.9,1.8,-0.27,6,[0,2*pi],0,[0.98 0.68 0.87],2,'fill',[0.98 0.68 0.87],1);
EllipseAndCircle(0.8,0.6,1.8,5.5,[pi,2*pi],-0.3,[ 0.7 0.4 0.58],4,'fill',[0.98 0.68 0.87],1);%嘴巴
EllipseAndCircle(1.3,2.4,-6.5,2.7,[0,2*pi],1.2,[0.98 0.68 0.87],2,'fill',[0.98 0.68 0.87],1);
pause(0.5)
% ==================鼻子=============================
EllipseAndCircle(0.52,0.8,4.58,6.5,[0,2*pi],-0.37,[0.85 0.55 0.73],3,'fill',[0.98 0.68 0.87],1);
EllipseAndCircle(0.1,0.1,1.67,7.67,[0,2*pi],0,[0.85 0.55 0.73],2,'fill',[0.85 0.55 0.73],1);
EllipseAndCircle(0.1,0.1,2.1,7.8,[0,2*pi],0,[0.85 0.55 0.73],2,'fill',[0.85 0.55 0.73],1);
% ==================眼睛=============================
EllipseAndCircle(0.33,0.33,0.22,7.8,[0,2*pi],0,[0.85 0.55 0.73],2,'fill',[1 1 1],1);
EllipseAndCircle(0.33,0.33,-0.6,7.4,[0,2*pi],0,[0.85 0.55 0.73],2,'fill',[1 1 1],1);
EllipseAndCircle(0.1,0.1,-0.5,7.4,[0,2*pi],0,[0 0 0],2,'fill',[0 0 0],1);
EllipseAndCircle(0.1,0.1,0.32,7.8,[0,2*pi],0,[0 0 0],2,'fill',[0 0 0],1);
pause(0.5)
% ==================腮红==============================
EllipseAndCircle(0.6,0.6,-1.4,6,[0,2*pi],0,[ 1 0.55 0.8],4,'fill',[1 0.55 0.8],1);

function XY=EllipseAndCircle(varargin)
% author:2377389590@qq.com
% EllipseAndCircle(a,b,x,y,Angle,Rotate,LineColor,LineWidth,PlotType,FillColor,Alpha)
%                a、b ：为长短半径
%                x，y ：圆心坐标
%                Angle ：开始/结束角度
%                Rotate：旋转角度
%                LineColor：线条颜色
%                LineWidth:线宽
%                FillColor ：填充的颜色
%                Alpha：透明度
a=varargin{1};b=varargin{2};
x=varargin{3};y=varargin{4};
Angle=varargin{5};Rotate=varargin{6};
LineColor=varargin{7};
LineWidth=varargin{8};
theta=Angle(1):pi/100:Angle(2);
X=x+a*cos(theta); Y=y+b*sin(theta);
XY=[X;Y]'*[cos(Rotate),-sin(Rotate);sin(Rotate),cos(Rotate)];
if length(varargin)==8||strcmp(varargin{9},'plot' )
    plot(XY(:,1),XY(:,2),'-','color',LineColor,'linewidth',LineWidth);
elseif length(varargin)==11||strcmp(varargin{9},'fill' )
    try
        FillColor=varargin{10};
        Alpha=varargin{11};
        fill(XY(:,1),XY(:,2),FillColor,'LineWidth',LineWidth,'FaceAlpha',Alpha,'edgecolor',LineColor)
    catch
        disp('参数输入错误1')
    end
else
    disp('参数输入错误2')
end
end
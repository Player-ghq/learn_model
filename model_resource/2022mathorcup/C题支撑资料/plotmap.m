function plotmap

line_bold = 0;
linex_lim = 79.6;
liney_lim = 26.5;

entry = 5.8;
entry1 = 3.7;
Speed_bumps = 0.5;
parklot_longth = 5.1;
parklot_longth1 = 5.4;
parklot_width = 2.4;
parklot_gap = 0.2;

path_width = 5.5;

color1 = [0 0 0];

%% plot and line   border

f = figure(1);
f.Position = [0 0 1500 500];
% f.Color = [0 0 0];
axis([-linex_lim*0.05 linex_lim*1.05 -liney_lim*0.05 liney_lim*1.05 ]);
% axis.Color = [0 0 0];


line([entry, linex_lim],         [liney_lim, liney_lim]    ,'LineWidth',1.2 ,'Color',[0 0 0]);
line([linex_lim, linex_lim],         [0, liney_lim]            ,'LineWidth',1.2 ,'Color',[0 0 0]);
line([0,0] ,                   [0,liney_lim]               ,'LineWidth',1.2 ,'Color',[0 0 0]);
line([entry, linex_lim],           [0, 0]                      ,'LineWidth',1.2 ,'Color',[0 0 0]);



%% parking lot

for i = 1:27
    x1 = entry + (i-1)* parklot_width;
    y1 = entry +  i* parklot_width;
    
    
    %% down
    line([x1 ,y1] ,[parklot_longth+parklot_gap,parklot_longth+parklot_gap],'Color',[0.8500 0.3250 0.0980]);
    line([x1 ,y1] ,[0,0] ,'Color',[0.8500 0.3250 0.0980]);
    line([y1, y1], [0,parklot_longth+parklot_gap],'Color',[0.8500 0.3250 0.0980]);
    line([x1, x1], [0,parklot_longth+parklot_gap],'Color',[0.8500 0.3250 0.0980]);
    
    line([x1 ,y1] ,[0,0] ,'Color',color1);
    line([x1 ,y1] ,[parklot_longth,parklot_longth],'Color',color1);
    
    line([y1, y1], [parklot_longth,0] ,'Color',color1);
    line([x1, x1], [parklot_longth,0] ,'Color',color1);
    
    
    %% up
    line([x1 ,y1] ,[liney_lim-parklot_longth-parklot_gap,liney_lim-parklot_longth-parklot_gap],'Color',[0.8500 0.3250 0.0980]);
    line([x1 ,y1] ,[liney_lim,liney_lim] ,'Color',[0.8500 0.3250 0.0980]);
    line([y1, y1], [liney_lim,liney_lim-parklot_longth-parklot_gap],'Color',[0.8500 0.3250 0.0980]);
    line([x1, x1], [liney_lim,liney_lim-parklot_longth-parklot_gap],'Color',[0.8500 0.3250 0.0980]);
    
     
    line([x1 ,y1] ,[liney_lim-parklot_longth,liney_lim-parklot_longth] ,'Color',color1);
    line([x1 ,y1] ,[liney_lim,liney_lim] ,'Color',color1);
    
    line([y1, y1], [liney_lim,liney_lim-parklot_longth],'Color',color1);
    line([x1, x1], [liney_lim,liney_lim-parklot_longth] ,'Color',color1);
    
    
end
    % baixian
    line([y1,y1+Speed_bumps],[0,0],'LineWidth',1.2, 'Color',[1 1 1]);
    line([y1,y1+Speed_bumps],[liney_lim,liney_lim],'LineWidth',1.2, 'Color',[1 1 1]);
    x1 = y1+Speed_bumps;
    t1 = x1;
    
for i = 1:2
    x1 = t1 + (i-1)* parklot_width;
    y1 = t1 +  i* parklot_width;
    
    %% down
    line([x1 ,y1] ,[parklot_longth+parklot_gap,parklot_longth+parklot_gap],'Color',[0.8500 0.3250 0.0980]);
    line([x1 ,y1] ,[0,0] ,'Color',[0.8500 0.3250 0.0980]);
    line([y1, y1], [0,parklot_longth+parklot_gap],'Color',[0.8500 0.3250 0.0980]);
    line([x1, x1], [0,parklot_longth+parklot_gap],'Color',[0.8500 0.3250 0.0980]);
    
    
    line([x1 ,y1] ,[0,0],'LineWidth',0.8 ,'Color',color1);
    line([x1 ,y1] ,[parklot_longth,parklot_longth] ,'Color',color1);
    
    line([y1, y1], [parklot_longth,0] ,'Color',color1);
    line([x1, x1], [parklot_longth,0] ,'Color',color1);
    
    
    %% up
    line([x1 ,y1] ,[liney_lim-parklot_longth-parklot_gap,liney_lim-parklot_longth-parklot_gap],'Color',[0.8500 0.3250 0.0980]);
    line([x1 ,y1] ,[liney_lim,liney_lim] ,'Color',[0.8500 0.3250 0.0980]);
    line([y1, y1], [liney_lim,liney_lim-parklot_longth-parklot_gap],'Color',[0.8500 0.3250 0.0980]);
    line([x1, x1], [liney_lim,liney_lim-parklot_longth-parklot_gap],'Color',[0.8500 0.3250 0.0980]);
    
    
    
    line([x1 ,y1] ,[liney_lim,liney_lim],'LineWidth',0.8 ,'Color',color1);
    line([x1 ,y1] ,[liney_lim-parklot_longth,liney_lim-parklot_longth],'LineWidth',0.8 ,'Color',color1);
    
    line([y1, y1], [liney_lim-parklot_longth,liney_lim],'LineWidth',0.8 ,'Color',color1);
    line([x1, x1], [liney_lim-parklot_longth,liney_lim],'LineWidth',0.8 ,'Color',color1);


end
    % bai line
    
    line([y1,linex_lim - entry1],[parklot_longth,parklot_longth],'Color',color1);
    line([linex_lim - entry1,linex_lim - entry1],[0,parklot_longth],'Color',color1);
    line([y1,y1],[0,parklot_longth],'Color',color1);
    
    line([linex_lim,linex_lim - entry1],[0,0],'LineWidth',1.2, 'Color',[1 1 1]);
    
    
    %%  mid
    high = path_width + parklot_longth + parklot_width + 2*parklot_gap;
for i = 1:12
    x2 = entry + (i-1)* parklot_longth1;
    y2 = entry +  i* parklot_longth1;
    
    line([x2 ,y2] ,[high,high],'Color',[0.8500 0.3250 0.0980]);
    line([x2 ,y2] ,[high-parklot_width,high-parklot_width] ,'Color',[0.8500 0.3250 0.0980]);
    line([x2 ,y2] ,[high+parklot_width,high+parklot_width] ,'Color',[0.8500 0.3250 0.0980]);
    
    line([y2, y2] ,[high-parklot_width,high+parklot_width],'Color',[0.8500 0.3250 0.0980]);
    line([x2, x2] ,[high-parklot_width,high+parklot_width],'Color',[0.8500 0.3250 0.0980]);

    
    line([x2 ,y2] ,[high,high],'Color',color1);
    line([x2 ,y2] ,[high-parklot_width+parklot_gap,high-parklot_width+parklot_gap] ,'Color',color1);
    line([x2 ,y2] ,[high+parklot_width-parklot_gap,high+parklot_width-parklot_gap] ,'Color',color1);
    
    line([y2, y2] ,[high-parklot_width,high+parklot_width],'Color',color1);
    line([x2, x2] ,[high-parklot_width,high+parklot_width],'Color',color1);

end
%% chaos

    t2 = y2;
    line([t1,t2],[high+parklot_width,high+parklot_width],'Color',color1);
    line([t1,t1],[high-parklot_width,high+parklot_width],'Color',color1);
    line([t1,t2],[high-parklot_width,high-parklot_width],'Color',color1);
    
    line([0,entry],[high+parklot_width,high+parklot_width],'Color',color1);
    line([0,entry],[high-parklot_width,high-parklot_width],'Color',color1);
    
    % speed minus
%     line()
    
    
%% diagonally

    x3 = t1+path_width;
    y3 = high-2*parklot_width-parklot_gap;
    
for i = 1:3

    y3 = y3 + parklot_width;

    line([x3,linex_lim],[y3,y3+3],'Color',color1);
    line([x3,x3],[y3,y3+parklot_width],'Color',[0.8500 0.3250 0.0980]);
    
    if (i ~= 3)
        line([x3+parklot_gap,x3+parklot_gap],[y3+parklot_gap,y3+3],'Color',color1);
    else
        line([x3+parklot_gap,x3+parklot_gap],[y3,y3+3-2*parklot_gap],'Color',color1);
    end
%     line([x3,linex])
end
    y3 = y3 + parklot_width;
    line([x3,linex_lim],[y3,y3+3],'Color',color1);

end


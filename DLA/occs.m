%%
occsFile=load('NO_OCC_NUMEBRS.1.forMatlab');
%occsFile=load('NO_OCC_NUMEBRS.1_10m');
NO=occsFile(:,1:2);
MO=occsFile(:,3:4);

% OneRDM=load('OneRDM.1');j=0;
% for i=1:length(OneRDM)
%     if OneRDM(i,1)==OneRDM(i,2);j=j+1;OneRDMdiagonals(j)=OneRDM(i,3);end 
% end
%%
NOs=figure(1);

axes2 = axes('Parent',NOs,'Position',[0.0774986638161411 0.12214498510427 0.90807055050775 0.857994041708044]);
hold(axes2,'on');
%%
%annotation(NOs,'rectangle',[0.103528821954038 0.250749250749251 0.569247458369412 0.257742257742258],'Color',[1 1 1],'FaceColor',[1 1 1]);
%annotation(NOs,'textbox',[0.103528821954038 0.250749250749251 0.569247458369412 0.257742257742258],...
%    'String',{'','~~~~NO occs from NO\_OCC\_NUMEBRS.1','~~~~MO occs from NO\_OCC\_NUMEBRS.1','~~~~Diagonals of OneRDM.1'},...
%    'LineWidth',2,...
%    'Interpreter','latex',...
%    'FontSize',42,...
%    'FitBoxToText','off');

% plot(1:length(Fe2S2_NOs),Fe2S2_NOs,'b','linewidth',5);
% plot(1:length(Fe4S4_NOs),Fe4S4_NOs,'Color',[0   0.85 0.1],'linewidth',5);
hold('on')
%plotHandle(1)=scatter(NO(:,1),flipud(sort(NO(:,2))),200,'diamond','MarkerEdgeColor','k','MarkerFaceColor','b');
%plotHandle(2)=scatter(NO(:,1),flipud(sort(NO(:,2))),100,'o','MarkerEdgeColor','r','MarkerFaceColor','r');
plotHandle(2)=scatter(NO(:,1),NO(:,2),50,'s','MarkerEdgeColor','g','MarkerFaceColor','g');
%plotHandle(2)=scatter(1:length(MO),sort(MO(:,2),'descend'),200,'o','MarkerEdgeColor','k','MarkerFaceColor','r');
%plotHandle(3)=scatter(1:length(OneRDMdiagonals),sort(OneRDMdiagonals,'descend'),200,'square','MarkerEdgeColor','k','MarkerFaceColor','g');

% scatter(7.5,0.36,500,'diamond','MarkerEdgeColor','k','MarkerFaceColor','b');
% scatter(7.5,0.27,500,'o','MarkerEdgeColor','k','MarkerFaceColor','r');
% scatter(7.5,0.178,500,'square','MarkerEdgeColor','k','MarkerFaceColor',[0   0.85 0.1]);

axis([0 160 -0.1 1.1]);

box('on');grid('on');grid(gca,'minor');
set(gca,'XMinorTick','on','YMinorTick','on','LineWidth',2,'FontSize',30);
ax = gca;
ax.XAxis.TickLabelFormat = '%.0f';
ax.YAxis.TickLabelFormat = '%.1f';
ax.YRuler.Exponent = 0;

xlabel('Orbital Index','Interpreter','latex','FontSize',48);
ylabel('Occupation Number','Interpreter','latex','FontSize',48),
yticklabels('auto');

set(gcf, 'Color', 'w');
set(gcf,'renderer','Painters');

%[legendHandle,legendHandle2]=legend(plotHandle,'[Fe_2S_2] CAS(30e,20o)','[Fe_4S_4] CAS(54e,36o)','FeMoco  CAS(54e,54o)','CAS(113e,76o)');
%set(findobj(legendHandle2,'-property','MarkerSize'),'MarkerSize',15)
%set(legendHandle,'Interpreter','latex','FontSize',42,'LineWidth',2,'Position',[0.4 0.2 0.3 0.19])
%legendmarkeradjust(20);

%export_fig Noccs -pdf -eps -png

%%
MO=occsFile(:,3:4);
MO=sortrows(MO);
MO=MO(:,2);
MOspatial=sum(reshape(MO,2,[]));

DMRG2000=[
    1.9998353992
1.9995847264
1.9995144995
1.997777602
1.9968765147
1.9965884421
1.9962889841
1.995286516
1.994493205
1.9943171584
1.993702814
1.993602146
1.9931002837
1.9928519085
1.9915682883
1.9906437538
1.9892567496
1.9882497263
1.9877597929
1.9859704206
1.9846687423
1.9832343085
1.9818296734
1.9813948376
1.9793613552
1.9777509579
1.9774197089
1.9771114886
1.9751277102
1.9715266894
1.967775711
1.9612614559
1.9557001
1.9494822753
1.9409408773
1.9377847417
1.9181012325
1.9004579499
1.8775936122
1.8624377773
1.8215404471
1.4375718466
1.3923254453
1.376496847
1.2956589855
1.1925186742
1.1592717617
1.1001543429
1.0902011637
1.0565635902
1.0536360702
1.0437403058
1.0423762667
1.041087211
1.0339581004
1.0299454257
1.0246425942
1.0212383359
1.0167761946
1.0143015799
1.0137334799
1.0022450604
1.0005341273
0.9900026919
0.9764158697
0.9580945673
0.8872741599
0.8587309876
0.7494421073
0.6732697292
0.6548671033
0.6500371719
0.2070146348
0.1822683848
0.0076629827
0.0061716171];

LLDUCspatial=figure(2);
%axes3 = axes('Parent',LLDUCspatial,'Position',[0.0774986638161411 0.12214498510427 0.90807055050775 0.857994041708044]);
%hold(axes3,'on');
hold('on')

plotHandle(1)=scatter(1:length(MOspatial),sort(MOspatial,'descend'),200,'o','MarkerEdgeColor','k','MarkerFaceColor','b');
plotHandle(2)=scatter(1:length(MOspatial),DMRG2000,200,'hexagram','MarkerEdgeColor','k','MarkerFaceColor','r');

axis([0 80 -0.1 2.1]);

box('on');grid('on');grid('minor');
set(gca,'XMinorTick','on','YMinorTick','on','LineWidth',2,'FontSize',30);
ax = gca;
ax.XAxis.TickLabelFormat = '%.0f';
ax.YAxis.TickLabelFormat = '%.1f';
ax.YRuler.Exponent = 0;

xlabel('Orbital Index','Interpreter','latex','FontSize',48);
ylabel('Occupation Number','Interpreter','latex','FontSize',48),
yticklabels('auto');

set(gcf, 'Color', 'w');
set(gcf,'renderer','Painters');

annotation(LLDUCspatial,'rectangle',[0.207008086253369 0.282717282717283 0.344474393530998 0.174825174825175],'Color',[1 1 1],'FaceColor',[1 1 1]);
annotation(LLDUCspatial,'textbox',[0.169297016024119 0.282717282717283 0.382185463760247 0.174825174825175],...
    'String',{'','~~~~DMRG $(D=2000)$','~~~~FCIQMC $(N_w=4\times 10^6)$ '},...
    'LineWidth',2,...
    'Interpreter','latex',...
    'FontSize',42,...
    'FitBoxToText','off');

scatter(6.5,0.65,500,'o','MarkerEdgeColor','k','MarkerFaceColor','b');
scatter(6.5,0.45,500,'hexagram','MarkerEdgeColor','k','MarkerFaceColor','r');
%export_fig SpatialOccs -pdf -eps -png

%%
occsFile=load('NO_OCC_NUMEBRS.1.forMatlab');
MO=occsFile(:,3:4);
MO=sortrows(MO);
MO=MO(:,2);
MOspatial=sum(reshape(MO,2,[]));

LLDUCspatial=figure(2);
%axes3 = axes('Parent',LLDUCspatial,'Position',[0.0774986638161411 0.12214498510427 0.90807055050775 0.857994041708044]);
%hold(axes3,'on');
hold('on')

plotHandle(1)=scatter(1:length(MOspatial),sort(MOspatial,'descend'),200,'o','MarkerEdgeColor','k','MarkerFaceColor','b');
%plotHandle(2)=scatter(1:length(MOspatial),DMRG2000,200,'hexagram','MarkerEdgeColor','k','MarkerFaceColor','r');

axis([0 80 -0.1 2.1]);

box('on');grid('on');grid('minor');
set(gca,'XMinorTick','on','YMinorTick','on','LineWidth',2,'FontSize',30);
ax = gca;
ax.XAxis.TickLabelFormat = '%.0f';
ax.YAxis.TickLabelFormat = '%.1f';
ax.YRuler.Exponent = 0;

xlabel('Orbital Index','Interpreter','latex','FontSize',48);
ylabel('Occupation Number','Interpreter','latex','FontSize',48),
yticklabels('auto');

title('FCIQMC $(N_w = 1 \times 10^6)$','Interpreter','latex','FontSize',48)

set(gcf, 'Color', 'w');
set(gcf,'renderer','Painters');

% annotation(LLDUCspatial,'rectangle',[0.207008086253369 0.282717282717283 0.344474393530998 0.174825174825175],'Color',[1 1 1],'FaceColor',[1 1 1]);
% annotation(LLDUCspatial,'textbox',[0.169297016024119 0.282717282717283 0.382185463760247 0.174825174825175],...
%     'String',{'','~~~~DMRG $(D=2000)$','~~~~FCIQMC $(N_w=4\times 10^6)$ '},...
%     'LineWidth',2,...
%     'Interpreter','latex',...
%     'FontSize',42,...
%     'FitBoxToText','off');

%scatter(6.5,0.65,500,'o','MarkerEdgeColor','k','MarkerFaceColor','b');
%scatter(6.5,0.45,500,'hexagram','MarkerEdgeColor','k','MarkerFaceColor','r');
%export_fig SpatialOccs -pdf -eps -png


%%
molcas=reshape(repmat(molcas./2,2,1),1,[]);
molcas=fliplr(sort(molcas));
for i=0:75;G(1+i*2,:)=NO(i+1,:);end
for i=1:76;G(i*2,:)=NO(i+76,:);end
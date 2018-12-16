clear all; clc;

load data_p.mat

plot(data_p(:,3),data_p(:,4),'-',data_p(:,1),data_p(:,2),'k--','linewidth',2)

xlim([1 7])
ylim([0 2])

% ht = title('$^{\mathrm{nat}}$Ti(p,x)$^{48}$Sc');
hx = xlabel('Neutron Energy (MeV)');
hy = ylabel('Ratio');
hl1 = legend({'GC LD','Oslo LD vs. GC LD'},'FontSize',12,'location','best');
set([hx,hy,hl1],'Interpreter','latex')

export_fig ./fig3.pdf -pdf -transparent

print('./fig3', '-dpng', '-r300');
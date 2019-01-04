function motionsimulation(angle)
global xa ya xb yb xc yc xd yd line_ab line_cb line_cd line_ad
 
set(line_ab,'xdata',[xa(angle,:),xb(angle,:)],'ydata',[ya(angle,:),yb(angle,:)]);
set(line_cb,'xdata',[xc(angle,:),xb(angle,:)],'ydata',[yc(angle,:),yb(angle,:)]);
set(line_cd,'xdata',[xc(angle,:),xd(angle,:)],'ydata',[yc(angle,:),yd(angle,:)]);
set(line_ad,'xdata',[xa(angle,:),xd(angle,:)],'ydata',[ya(angle,:),yd(angle,:)]);


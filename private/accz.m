function trm=accz(ffreqs,dirs,wns,z,depth)

Kz=sinh(z*wns)./sinh(depth*wns);
%include a maximum cuttoff for the velocity response function
Kz(find(Kz<0.1))=0.1;
Kz(isnan(Kz)) = 1;
trm=-(ffreqs.*ffreqs.*Kz)*ones(size(dirs));
function trm=dspz(ffreqs,dirs,wns,z,depth)
    
Kz=sinh(z*wns)./sinh(depth*wns);
%include a maximum cuttoff for the vertical displacement response function
Kz(find(Kz<0.1))=0.1;
Kz(find(isnan(Kz)))=1;
trm=Kz*ones(size(dirs));

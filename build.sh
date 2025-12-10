rm -fr ./dist
sudo setenforce 0
ksflatten -c marconios.ks -o marconios.cfg
sudo livemedia-creator \
    --ks marconios.cfg \
    --no-virt \
    --resultdir ./dist \
    --project MarconiOS \
    --volid MarconiOS \
    --make-iso \
    --iso-only \
    --iso-name MarconiOS.iso \
    --releasever 43
sudo setenforce 1

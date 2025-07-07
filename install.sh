wget -q https://github.com/ceph/ceph/raw/pacific/src/cephadm/cephadm
# si ca ne marche pas copier le fichier dirrectement 

sudo ip route del default
   55  ip route
   56  sudo ./cephadm add-repo --release pacific
   57  ssh mon1
   58  sudo ./cephadm install
1  sudo cephadm bootstrap --mon-ip 10.10.10.101

ceph config set mon public_network 192.168.122.0/24
ceph orch apply mon --unmanaged


121  sudo ssh-copy-id -f -i /etc/ceph/ceph.pub root@mon2
  122  sudo ssh-copy-id -f -i /etc/ceph/ceph.pub root@mon3

ceph orch host add mon2 10.10.10.103 mon 
ceph orch host add mon3 10.10.10.104 mon

ceph orch apply mon "mon1 mon2 mon3"
ceph orch apply mgr "mon1 mon2 mon3"

ip route del default

 12  curl -L "https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_20.04/Release.key" | sudo apt-key add -
   13  echo "deb https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_20.04/ /" | sudo tee /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list

apt install podman


sudo ceph orch host add mon2 --labels=mon



OSD
ceph orch apply osd --all-available-devices
ceph orch device ls

https://10.10.10.102:8443/
ceph dashboard ac-user-create khaled -i passwd-dash administrator



Radosgw:
ceph orch apply -i s3-1-rgw.yaml
radosgw-admin user
radosgw-admin user info --uid khaled
Install s3cmd 
s3cmd --configure (give user secert key adresse)


  rgw_realm: myrealmp
  rgw_zone: zonep


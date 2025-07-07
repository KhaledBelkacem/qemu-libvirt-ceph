#!/bin/sh
ssh cephadm 'sudo ceph osd set noout'
ssh cephadm 'sudo ceph osd set norecover'
ssh cephadm 'sudo ceph osd set norebalance'
ssh cephadm 'sudo ceph osd set nobackfill'
ssh cephadm 'sudo ceph osd set nodown'
ssh cephadm 'sudo ceph osd set pause'


sudo virsh shutdown rgw1
sleep 10
sudo virsh shutdown rgw2
sleep 10
sudo virsh shutdown mon1
sleep 10
sudo virsh shutdown mon2
sleep 10
sudo virsh shutdown mon3
sleep 10
sudo virsh shutdown osd1
sleep 10
sudo virsh shutdown osd2
sleep 10
sudo virsh shutdown osd3
sleep 10
sudo virsh shutdown cephadm

#!/bin/sh

sudo virsh start cephadm
sleep 10
sudo virsh start mon1
sleep 10
sudo virsh start mon2
sleep 10
sudo virsh start mon3
sleep 10
sudo virsh start osd1
sleep 10
sudo virsh start osd2
sleep 10
sudo virsh start osd3
sleep 30 

ssh cephadm 'sudo ceph osd unset pause'
ssh cephadm 'sudo ceph osd unset noout'
ssh cephadm 'sudo ceph osd unset norecover'
ssh cephadm 'sudo ceph osd unset norebalance'
ssh cephadm 'sudo ceph osd unset nobackfill'
ssh cephadm 'sudo ceph osd unset nodown'
ssh cephadm 'sudo ceph osd unset pause'



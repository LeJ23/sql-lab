#!/usr/bin/env bash
cd /tmp
wget https://github.com/etcd-io/etcd/releases/download/v3.6.9/etcd-v3.6.9-linux-amd64.tar.gz
tar xzf etcd-v3.6.9-linux-amd64.tar.gz
cd etcd-v3.6.9-linux-amd64
cp etcd etcdctl etcdutl /usr/local/bin/
chmod +x /usr/local/bin/etcd /usr/local/bin/etcdctl /usr/local/bin/etcdutl
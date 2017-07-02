## Quickstart


1. Clone this repo: `git clone https://github.com/FakeEmperor/mariadb-galera-cluster-tryout`
2. Generate new key pair
   * Use Puttygen on Windows
   * On Linux run:

   ```
   $ ssh-keygen -q -b 2048 -t rsa -C mariadb-coreos.pub -f mariadb-coreos.key
   ```

4. Put your private key in `vagrant/mariadb-coreos.key`.
4. Add public key in `vagrant/user-data` config file.
5. Run `vagrant up`.
6. SSH inside each node, check connection
7. For the first node, run `./init_first_node.sh`
8. For others run: `./init_for_others.sh`
9. Check cluster health by running:

```
$ ./cli.sh
$ SHOW STATUS LIKE '%wsrep%';
```

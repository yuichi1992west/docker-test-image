# Test DockerFile

## dockerfile

```
FROM centos:8
LABEL maintainer="yuichi1992"
RUN dnf -y install vim
RUN dnf -y install mariadb mariadb-server
RUN dnf -y install httpd
RUN echo "test-page" > /var/www/html/index.html
RUN systemctl enable mariadb
RUN systemctl enable httpd
EXPOSE 80
CMD echo "now running..."
```

## result

```
STEP 1: FROM centos:8
STEP 2: LABEL maintainer="yuichi1992"
--> Using cache 9eb932372ea667aabfdd146faa163181bc6dcdbc7c207c6f5886c8d7c7ff293a
STEP 3: FROM 9eb932372ea667aabfdd146faa163181bc6dcdbc7c207c6f5886c8d7c7ff293a
STEP 4: RUN dnf -y install vim
--> Using cache ad9d7a57367b4c3a1a66138b4896b613b8bc2e4c984f5434d53507e36f806f5d
STEP 5: FROM ad9d7a57367b4c3a1a66138b4896b613b8bc2e4c984f5434d53507e36f806f5d
STEP 6: RUN dnf -y install mariadb mariadb-server
--> Using cache a90df2ad5a38a0f08fdabe8ff9f94135d6399de126c295dc19da1628b0336119
STEP 7: FROM a90df2ad5a38a0f08fdabe8ff9f94135d6399de126c295dc19da1628b0336119
STEP 8: RUN dnf -y install httpd
--> Using cache 0ab044066bb29e78a1ad150261f0507147ad13949640df7baea05a0c83053649
STEP 9: FROM 0ab044066bb29e78a1ad150261f0507147ad13949640df7baea05a0c83053649
STEP 10: RUN echo "test-page" > /var/www/html/index.html
--> Using cache 10ffe89ee13a79606b4eb61acf63c920b2a466ca80489deba22fb11719b9da85
STEP 11: FROM 10ffe89ee13a79606b4eb61acf63c920b2a466ca80489deba22fb11719b9da85
STEP 12: RUN systemctl enable mariadb
--> Using cache b3c55ad3f1a2d25ca73bac39ce3479460e4688be762b0722b9945ab96e48923c
STEP 13: FROM b3c55ad3f1a2d25ca73bac39ce3479460e4688be762b0722b9945ab96e48923c
STEP 14: RUN systemctl enable httpd
--> Using cache 53dcfd683dd703e00e42c97c3d48b7a7ca7e578bae2a085873e2420f24f8fb7e
STEP 15: FROM 53dcfd683dd703e00e42c97c3d48b7a7ca7e578bae2a085873e2420f24f8fb7e
STEP 16: EXPOSE 80
--> Using cache 62f9ec464ccd69efd621edf2fcd2190d46d9db6abdccc953183aa65542d8d019
STEP 17: FROM 62f9ec464ccd69efd621edf2fcd2190d46d9db6abdccc953183aa65542d8d019
STEP 18: CMD echo "now running..."
--> Using cache 3c363dc7f774102c1dc169361f4829522fae9a73cae8167d0ab5f233d2df2c05
STEP 19: COMMIT
[root@localhost dockerfile-space]#
[root@localhost dockerfile-space]#
[root@localhost dockerfile-space]# rm -rf /var/cache/yum/* \
> ^C
[root@localhost dockerfile-space]# rm -rf /var/cache/yum/*
[root@localhost dockerfile-space]#  dnf clean all
25 ファイルが削除されました
[root@localhost dockerfile-space]# docker build ./ -t Dockerfile:dockerfile-test2
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
STEP 1: FROM centos:8
^C
[root@localhost dockerfile-space]# docker build ./ -t Dockerfile:dockerfile-test3
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
STEP 1: FROM centos:8
STEP 2: LABEL maintainer="yuichi1992"
--> Using cache 9eb932372ea667aabfdd146faa163181bc6dcdbc7c207c6f5886c8d7c7ff293a
STEP 3: FROM 9eb932372ea667aabfdd146faa163181bc6dcdbc7c207c6f5886c8d7c7ff293a
STEP 4: RUN dnf -y install vim
--> Using cache ad9d7a57367b4c3a1a66138b4896b613b8bc2e4c984f5434d53507e36f806f5d
STEP 5: FROM ad9d7a57367b4c3a1a66138b4896b613b8bc2e4c984f5434d53507e36f806f5d
STEP 6: RUN dnf -y install mariadb mariadb-server
--> Using cache a90df2ad5a38a0f08fdabe8ff9f94135d6399de126c295dc19da1628b0336119
STEP 7: FROM a90df2ad5a38a0f08fdabe8ff9f94135d6399de126c295dc19da1628b0336119
STEP 8: RUN dnf -y install httpd
--> Using cache 0ab044066bb29e78a1ad150261f0507147ad13949640df7baea05a0c83053649
STEP 9: FROM 0ab044066bb29e78a1ad150261f0507147ad13949640df7baea05a0c83053649
STEP 10: RUN echo "test-page" > /var/www/html/index.html
--> Using cache 10ffe89ee13a79606b4eb61acf63c920b2a466ca80489deba22fb11719b9da85
STEP 11: FROM 10ffe89ee13a79606b4eb61acf63c920b2a466ca80489deba22fb11719b9da85
STEP 12: RUN systemctl enable mariadb
--> Using cache b3c55ad3f1a2d25ca73bac39ce3479460e4688be762b0722b9945ab96e48923c
STEP 13: FROM b3c55ad3f1a2d25ca73bac39ce3479460e4688be762b0722b9945ab96e48923c
STEP 14: RUN systemctl enable httpd
--> Using cache 53dcfd683dd703e00e42c97c3d48b7a7ca7e578bae2a085873e2420f24f8fb7e
STEP 15: FROM 53dcfd683dd703e00e42c97c3d48b7a7ca7e578bae2a085873e2420f24f8fb7e
STEP 16: EXPOSE 80
--> Using cache 62f9ec464ccd69efd621edf2fcd2190d46d9db6abdccc953183aa65542d8d019
STEP 17: FROM 62f9ec464ccd69efd621edf2fcd2190d46d9db6abdccc953183aa65542d8d019
STEP 18: CMD echo "now running..."
--> Using cache 3c363dc7f774102c1dc169361f4829522fae9a73cae8167d0ab5f233d2df2c05
STEP 19: COMMIT
[root@localhost dockerfile-space]# docker-compose build --no-cache
bash: docker-compose: コマンドが見つかりませんでした...
ファイルの探索に失敗しました: Cannot update read-only repo
[root@localhost dockerfile-space]#
[root@localhost dockerfile-space]#
[root@localhost dockerfile-space]# docker image
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
NAME:
   podman image - Manage images

USAGE:
   podman image command [command options] [arguments...]

COMMANDS:
     build     Build an image using instructions from Dockerfiles
     history   Show history of a specified image
     import    Import a tarball to create a filesystem image
     exists    Check if an image exists in local storage
     inspect   Displays the configuration of a container or image
     load      Load an image from docker archive
     list, ls  list images in local storage
     prune     Remove unused images
     pull      Pull an image from a registry
     push      Push an image to a specified destination
     rm        removes one or more images from local storage
     save      Save image to an archive
     tag       Add an additional name to a local image
     trust     Manage container image trust policy
     sign      Sign an image

OPTIONS:
   --help, -h  show help

[root@localhost dockerfile-space]# docker images
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
REPOSITORY                    TAG      IMAGE ID       CREATED                  SIZE
docker.io/library/centos      8        470671670cac   Less than a second ago   245 MB
<none>                        <none>   3c363dc7f774   9 minutes ago            605 MB
<none>                        <none>   6a686bb5949e   9 minutes ago            605 MB
<none>                        <none>   3c45839209f7   9 minutes ago            605 MB
localhost/test-podman-image   latest   4c67f61cf642   4 hours ago              707 MB
docker.io/library/centos      latest   0f3e07c0138f   3 months ago             227 MB
[root@localhost dockerfile-space]# docker rmi  3c363dc7f774
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
3c363dc7f774102c1dc169361f4829522fae9a73cae8167d0ab5f233d2df2c05
[root@localhost dockerfile-space]# docker rmi  6a686bb5949e
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
6a686bb5949e35627161d4d1385f1a2363669036604612f9d0cd671779de746a
[root@localhost dockerfile-space]# docker rmi 3c45839209f7
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
62f9ec464ccd69efd621edf2fcd2190d46d9db6abdccc953183aa65542d8d019
53dcfd683dd703e00e42c97c3d48b7a7ca7e578bae2a085873e2420f24f8fb7e
b3c55ad3f1a2d25ca73bac39ce3479460e4688be762b0722b9945ab96e48923c
10ffe89ee13a79606b4eb61acf63c920b2a466ca80489deba22fb11719b9da85
0ab044066bb29e78a1ad150261f0507147ad13949640df7baea05a0c83053649
a90df2ad5a38a0f08fdabe8ff9f94135d6399de126c295dc19da1628b0336119
ad9d7a57367b4c3a1a66138b4896b613b8bc2e4c984f5434d53507e36f806f5d
9eb932372ea667aabfdd146faa163181bc6dcdbc7c207c6f5886c8d7c7ff293a
3c45839209f74de5320bc39f0fbf25968ee733b1a065470288974019cb2298bd
[root@localhost dockerfile-space]#
[root@localhost dockerfile-space]#
[root@localhost dockerfile-space]# docker build ./ -t Dockerfile:dockerfile-test3
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
STEP 1: FROM centos:8
STEP 2: LABEL maintainer="yuichi1992"
--> d3abc3b4a1b52fdb07906dcc91a58259328e4f0e5c655f6de1fa0747b04988e4
STEP 3: FROM d3abc3b4a1b52fdb07906dcc91a58259328e4f0e5c655f6de1fa0747b04988e4
STEP 4: RUN dnf -y install vim
CentOS-8 - AppStream                            523 kB/s | 6.4 MB     00:12
CentOS-8 - Base                                 194 kB/s | 5.0 MB     00:26
CentOS-8 - Extras                               2.3 kB/s | 2.1 kB     00:00
Dependencies resolved.
================================================================================
 Package             Arch        Version                   Repository      Size
================================================================================
Installing:
 vim-enhanced        x86_64      2:8.0.1763-13.el8         AppStream      1.4 M
Installing dependencies:
 gpm-libs            x86_64      1.20.7-15.el8             AppStream       39 k
 vim-common          x86_64      2:8.0.1763-13.el8         AppStream      6.3 M
 vim-filesystem      noarch      2:8.0.1763-13.el8         AppStream       48 k
 which               x86_64      2.21-10.el8               BaseOS          49 k

Transaction Summary
================================================================================
Install  5 Packages

Total download size: 7.8 M
Installed size: 31 M
Downloading Packages:
(1/5): gpm-libs-1.20.7-15.el8.x86_64.rpm        193 kB/s |  39 kB     00:00    .3 kB     --:-- ETA
(2/5): vim-filesystem-8.0.1763-13.el8.noarch.rp 297 kB/s |  48 kB     00:00
(3/5): which-2.21-10.el8.x86_64.rpm             195 kB/s |  49 kB     00:00
(4/5): vim-enhanced-8.0.1763-13.el8.x86_64.rpm  254 kB/s | 1.4 MB     00:05
(5/5): vim-common-8.0.1763-13.el8.x86_64.rpm    372 kB/s | 6.3 MB     00:17
--------------------------------------------------------------------------------
Total                                           425 kB/s | 7.8 MB     00:18
warning: /var/cache/dnf/AppStream-02e86d1c976ab532/packages/gpm-libs-1.20.7-15.el8.x86_64.rpm: Header V3 RSA/SHA256 Signature, key ID 8483c65d: NOKEY
CentOS-8 - AppStream                            1.6 MB/s | 1.6 kB     00:00
Importing GPG key 0x8483C65D:
 Userid     : "CentOS (CentOS Official Signing Key) <security@centos.org>"
 Fingerprint: 99DB 70FA E1D7 CE22 7FB6 4882 05B5 55B3 8483 C65D
 From       : /etc/pki/rpm-gpg/RPM-GPG-KEY-centosofficial
Key imported successfully
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                        1/1
  Installing       : which-2.21-10.el8.x86_64                               1/5
  Installing       : vim-filesystem-2:8.0.1763-13.el8.noarch                2/5
  Installing       : vim-common-2:8.0.1763-13.el8.x86_64                    3/5
  Installing       : gpm-libs-1.20.7-15.el8.x86_64                          4/5
  Running scriptlet: gpm-libs-1.20.7-15.el8.x86_64                          4/5
  Installing       : vim-enhanced-2:8.0.1763-13.el8.x86_64                  5/5
  Running scriptlet: vim-enhanced-2:8.0.1763-13.el8.x86_64                  5/5
  Running scriptlet: vim-common-2:8.0.1763-13.el8.x86_64                    5/5
  Verifying        : gpm-libs-1.20.7-15.el8.x86_64                          1/5
  Verifying        : vim-common-2:8.0.1763-13.el8.x86_64                    2/5
  Verifying        : vim-enhanced-2:8.0.1763-13.el8.x86_64                  3/5
  Verifying        : vim-filesystem-2:8.0.1763-13.el8.noarch                4/5
  Verifying        : which-2.21-10.el8.x86_64                               5/5

Installed:
  vim-enhanced-2:8.0.1763-13.el8.x86_64 gpm-libs-1.20.7-15.el8.x86_64
  vim-common-2:8.0.1763-13.el8.x86_64   vim-filesystem-2:8.0.1763-13.el8.noarch
  which-2.21-10.el8.x86_64

Complete!
--> b662e4a8efe0189d4fe16c1e8b104804b4d6c9c0e88b362d3c38ffb63246a74c
STEP 5: FROM b662e4a8efe0189d4fe16c1e8b104804b4d6c9c0e88b362d3c38ffb63246a74c
STEP 6: RUN dnf -y install mariadb mariadb-server
Last metadata expiration check: 0:00:26 ago on Sun Jan  5 16:12:59 2020.
Dependencies resolved.
================================================================================
 Package                    Arch   Version                      Repo       Size
================================================================================
Installing:
 mariadb                    x86_64 3:10.3.17-1.module_el8.1.0+257+48736ea6
                                                                AppStream 6.1 M
 mariadb-server             x86_64 3:10.3.17-1.module_el8.1.0+257+48736ea6
                                                                AppStream  16 M
Installing dependencies:
 mariadb-common             x86_64 3:10.3.17-1.module_el8.1.0+257+48736ea6
                                                                AppStream  62 k
 mariadb-connector-c        x86_64 3.0.7-1.el8                  AppStream 148 k
 mariadb-connector-c-config noarch 3.0.7-1.el8                  AppStream  13 k
 mariadb-errmsg             x86_64 3:10.3.17-1.module_el8.1.0+257+48736ea6
                                                                AppStream 232 k
 perl-DBD-MySQL             x86_64 4.046-3.module_el8.1.0+203+e45423dc
                                                                AppStream 156 k
 perl-DBI                   x86_64 1.641-3.module_el8.1.0+199+8f0a6bbd
                                                                AppStream 740 k
 perl-Digest                noarch 1.17-395.el8                 AppStream  27 k
 perl-Digest-MD5            x86_64 2.55-396.el8                 AppStream  37 k
 perl-Net-SSLeay            x86_64 1.88-1.el8                   AppStream 379 k
 perl-URI                   noarch 1.73-3.el8                   AppStream 116 k
 perl-libnet                noarch 3.11-3.el8                   AppStream 121 k
 groff-base                 x86_64 1.22.3-18.el8                BaseOS    1.0 M
 libaio                     x86_64 0.3.112-1.el8                BaseOS     33 k
 ncurses                    x86_64 6.1-7.20180224.el8           BaseOS    387 k
 openssl                    x86_64 1:1.1.1c-2.el8               BaseOS    686 k
 perl-Carp                  noarch 1.42-396.el8                 BaseOS     30 k
 perl-Data-Dumper           x86_64 2.167-399.el8                BaseOS     58 k
 perl-Encode                x86_64 4:2.97-3.el8                 BaseOS    1.5 M
 perl-Errno                 x86_64 1.28-416.el8                 BaseOS     76 k
 perl-Exporter              noarch 5.72-396.el8                 BaseOS     34 k
 perl-File-Path             noarch 2.15-2.el8                   BaseOS     38 k
 perl-File-Temp             noarch 0.230.600-1.el8              BaseOS     63 k
 perl-Getopt-Long           noarch 1:2.50-4.el8                 BaseOS     63 k
 perl-HTTP-Tiny             noarch 0.074-1.el8                  BaseOS     58 k
 perl-IO                    x86_64 1.38-416.el8                 BaseOS    141 k
 perl-MIME-Base64           x86_64 3.15-396.el8                 BaseOS     31 k
 perl-Math-BigInt           noarch 1:1.9998.11-7.el8            BaseOS    196 k
 perl-Math-Complex          noarch 1.59-416.el8                 BaseOS    108 k
 perl-PathTools             x86_64 3.74-1.el8                   BaseOS     90 k
 perl-Pod-Escapes           noarch 1:1.07-395.el8               BaseOS     20 k
 perl-Pod-Perldoc           noarch 3.28-396.el8                 BaseOS     86 k
 perl-Pod-Simple            noarch 1:3.35-395.el8               BaseOS    213 k
 perl-Pod-Usage             noarch 4:1.69-395.el8               BaseOS     34 k
 perl-Scalar-List-Utils     x86_64 3:1.49-2.el8                 BaseOS     68 k
 perl-Socket                x86_64 4:2.027-3.el8                BaseOS     59 k
 perl-Storable              x86_64 1:3.11-3.el8                 BaseOS     98 k
 perl-Term-ANSIColor        noarch 4.06-396.el8                 BaseOS     46 k
 perl-Term-Cap              noarch 1.17-395.el8                 BaseOS     23 k
 perl-Text-ParseWords       noarch 3.30-395.el8                 BaseOS     18 k
 perl-Text-Tabs+Wrap        noarch 2013.0523-395.el8            BaseOS     24 k
 perl-Time-Local            noarch 1:1.280-1.el8                BaseOS     34 k
 perl-Unicode-Normalize     x86_64 1.25-396.el8                 BaseOS     82 k
 perl-constant              noarch 1.33-396.el8                 BaseOS     25 k
 perl-interpreter           x86_64 4:5.26.3-416.el8             BaseOS    6.3 M
 perl-libs                  x86_64 4:5.26.3-416.el8             BaseOS    1.6 M
 perl-macros                x86_64 4:5.26.3-416.el8             BaseOS     72 k
 perl-parent                noarch 1:0.237-1.el8                BaseOS     20 k
 perl-podlators             noarch 4.11-1.el8                   BaseOS    118 k
 perl-threads               x86_64 1:2.21-2.el8                 BaseOS     61 k
 perl-threads-shared        x86_64 1.58-2.el8                   BaseOS     48 k
 psmisc                     x86_64 23.1-3.el8                   BaseOS    151 k
Installing weak dependencies:
 mariadb-backup             x86_64 3:10.3.17-1.module_el8.1.0+257+48736ea6
                                                                AppStream 6.0 M
 mariadb-gssapi-server      x86_64 3:10.3.17-1.module_el8.1.0+257+48736ea6
                                                                AppStream  49 k
 mariadb-server-utils       x86_64 3:10.3.17-1.module_el8.1.0+257+48736ea6
                                                                AppStream 1.6 M
 perl-IO-Socket-IP          noarch 0.39-5.el8                   AppStream  47 k
 perl-IO-Socket-SSL         noarch 2.066-3.el8                  AppStream 297 k
 perl-Mozilla-CA            noarch 20160104-7.el8               AppStream  15 k
Enabling module streams:
 mariadb                           10.3
 perl-DBD-MySQL                    4.046
 perl-DBI                          1.641

Transaction Summary
================================================================================
Install  59 Packages

Total download size: 46 M
Installed size: 215 M
Downloading Packages:
(1/59): mariadb-common-10.3.17-1.module_el8.1.0 213 kB/s |  62 kB     00:00
(2/59): mariadb-connector-c-3.0.7-1.el8.x86_64. 268 kB/s | 148 kB     00:00
(3/59): mariadb-connector-c-config-3.0.7-1.el8. 124 kB/s |  13 kB     00:00
(4/59): mariadb-errmsg-10.3.17-1.module_el8.1.0 203 kB/s | 232 kB     00:01
(5/59): mariadb-gssapi-server-10.3.17-1.module_ 170 kB/s |  49 kB     00:00
(6/59): mariadb-10.3.17-1.module_el8.1.0+257+48 412 kB/s | 6.1 MB     00:15
(7/59): mariadb-backup-10.3.17-1.module_el8.1.0 381 kB/s | 6.0 MB     00:16
(8/59): perl-DBD-MySQL-4.046-3.module_el8.1.0+2 668 kB/s | 156 kB     00:00
(9/59): perl-DBI-1.641-3.module_el8.1.0+199+8f0 577 kB/s | 740 kB     00:01
(10/59): perl-Digest-1.17-395.el8.noarch.rpm    159 kB/s |  27 kB     00:00
(11/59): perl-Digest-MD5-2.55-396.el8.x86_64.rp 230 kB/s |  37 kB     00:00
(12/59): perl-IO-Socket-IP-0.39-5.el8.noarch.rp 330 kB/s |  47 kB     00:00
(13/59): mariadb-server-utils-10.3.17-1.module_ 478 kB/s | 1.6 MB     00:03
(14/59): perl-Mozilla-CA-20160104-7.el8.noarch. 271 kB/s |  15 kB     00:00
(15/59): perl-IO-Socket-SSL-2.066-3.el8.noarch. 315 kB/s | 297 kB     00:00
(16/59): perl-Net-SSLeay-1.88-1.el8.x86_64.rpm  427 kB/s | 379 kB     00:00
(17/59): perl-URI-1.73-3.el8.noarch.rpm         257 kB/s | 116 kB     00:00
(18/59): perl-libnet-3.11-3.el8.noarch.rpm      429 kB/s | 121 kB     00:00
(19/59): libaio-0.3.112-1.el8.x86_64.rpm        180 kB/s |  33 kB     00:00
(20/59): ncurses-6.1-7.20180224.el8.x86_64.rpm  1.1 MB/s | 387 kB     00:00
(21/59): groff-base-1.22.3-18.el8.x86_64.rpm    412 kB/s | 1.0 MB     00:02
(22/59): perl-Carp-1.42-396.el8.noarch.rpm      218 kB/s |  30 kB     00:00
(23/59): perl-Data-Dumper-2.167-399.el8.x86_64. 366 kB/s |  58 kB     00:00
(24/59): openssl-1.1.1c-2.el8.x86_64.rpm        167 kB/s | 686 kB     00:04
(25/59): perl-Errno-1.28-416.el8.x86_64.rpm     239 kB/s |  76 kB     00:00
(26/59): perl-Exporter-5.72-396.el8.noarch.rpm  251 kB/s |  34 kB     00:00
(27/59): perl-File-Path-2.15-2.el8.noarch.rpm   248 kB/s |  38 kB     00:00
(28/59): perl-File-Temp-0.230.600-1.el8.noarch. 295 kB/s |  63 kB     00:00
(29/59): perl-Getopt-Long-2.50-4.el8.noarch.rpm 283 kB/s |  63 kB     00:00
(30/59): perl-HTTP-Tiny-0.074-1.el8.noarch.rpm  317 kB/s |  58 kB     00:00
(31/59): perl-IO-1.38-416.el8.x86_64.rpm        155 kB/s | 141 kB     00:00
(32/59): perl-MIME-Base64-3.15-396.el8.x86_64.r  49 kB/s |  31 kB     00:00
(33/59): perl-Math-BigInt-1.9998.11-7.el8.noarc 160 kB/s | 196 kB     00:01
(34/59): perl-Math-Complex-1.59-416.el8.noarch. 172 kB/s | 108 kB     00:00
(35/59): perl-Encode-2.97-3.el8.x86_64.rpm      222 kB/s | 1.5 MB     00:06
(36/59): perl-Pod-Escapes-1.07-395.el8.noarch.r 501 kB/s |  20 kB     00:00
(37/59): perl-PathTools-3.74-1.el8.x86_64.rpm   237 kB/s |  90 kB     00:00
(38/59): perl-Pod-Perldoc-3.28-396.el8.noarch.r 242 kB/s |  86 kB     00:00
(39/59): perl-Pod-Usage-1.69-395.el8.noarch.rpm 103 kB/s |  34 kB     00:00
(40/59): perl-Scalar-List-Utils-1.49-2.el8.x86_ 220 kB/s |  68 kB     00:00
(41/59): perl-Pod-Simple-3.35-395.el8.noarch.rp 249 kB/s | 213 kB     00:00
(42/59): perl-Socket-2.027-3.el8.x86_64.rpm     282 kB/s |  59 kB     00:00
(43/59): perl-Storable-3.11-3.el8.x86_64.rpm    388 kB/s |  98 kB     00:00
(44/59): perl-Term-Cap-1.17-395.el8.noarch.rpm  228 kB/s |  23 kB     00:00
(45/59): perl-Term-ANSIColor-4.06-396.el8.noarc 247 kB/s |  46 kB     00:00
(46/59): perl-Text-ParseWords-3.30-395.el8.noar 323 kB/s |  18 kB     00:00
(47/59): perl-Text-Tabs+Wrap-2013.0523-395.el8. 213 kB/s |  24 kB     00:00
(48/59): perl-Time-Local-1.280-1.el8.noarch.rpm 277 kB/s |  34 kB     00:00
(49/59): perl-constant-1.33-396.el8.noarch.rpm  208 kB/s |  25 kB     00:00
(50/59): perl-Unicode-Normalize-1.25-396.el8.x8 187 kB/s |  82 kB     00:00
(51/59): perl-libs-5.26.3-416.el8.x86_64.rpm    234 kB/s | 1.6 MB     00:06
(52/59): perl-macros-5.26.3-416.el8.x86_64.rpm  100 kB/s |  72 kB     00:00
(53/59): perl-parent-0.237-1.el8.noarch.rpm     158 kB/s |  20 kB     00:00
(54/59): mariadb-server-10.3.17-1.module_el8.1. 443 kB/s |  16 MB     00:36
(55/59): perl-podlators-4.11-1.el8.noarch.rpm   212 kB/s | 118 kB     00:00
(56/59): perl-threads-shared-1.58-2.el8.x86_64. 204 kB/s |  48 kB     00:00
(57/59): psmisc-23.1-3.el8.x86_64.rpm           318 kB/s | 151 kB     00:00
(58/59): perl-threads-2.21-2.el8.x86_64.rpm      69 kB/s |  61 kB     00:00
(59/59): perl-interpreter-5.26.3-416.el8.x86_64 299 kB/s | 6.3 MB     00:21
--------------------------------------------------------------------------------
Total                                           877 kB/s |  46 MB     00:53
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Running scriptlet: mariadb-connector-c-3.0.7-1.el8.x86_64                 1/1
  Preparing        :                                                        1/1
  Installing       : perl-Exporter-5.72-396.el8.noarch                     1/59
  Installing       : perl-libs-4:5.26.3-416.el8.x86_64                     2/59
  Installing       : perl-Carp-1.42-396.el8.noarch                         3/59
  Installing       : perl-Scalar-List-Utils-3:1.49-2.el8.x86_64            4/59
  Installing       : perl-parent-1:0.237-1.el8.noarch                      5/59
  Installing       : mariadb-connector-c-config-3.0.7-1.el8.noarch         6/59
  Installing       : mariadb-common-3:10.3.17-1.module_el8.1.0+257+4873    7/59
  Installing       : mariadb-connector-c-3.0.7-1.el8.x86_64                8/59
  Installing       : perl-Text-ParseWords-3.30-395.el8.noarch              9/59
  Installing       : libaio-0.3.112-1.el8.x86_64                          10/59
  Installing       : mariadb-errmsg-3:10.3.17-1.module_el8.1.0+257+4873   11/59
  Installing       : perl-Term-ANSIColor-4.06-396.el8.noarch              12/59
  Installing       : perl-macros-4:5.26.3-416.el8.x86_64                  13/59
  Installing       : perl-Errno-1.28-416.el8.x86_64                       14/59
  Installing       : perl-Socket-4:2.027-3.el8.x86_64                     15/59
  Installing       : perl-Text-Tabs+Wrap-2013.0523-395.el8.noarch         16/59
  Installing       : perl-Unicode-Normalize-1.25-396.el8.x86_64           17/59
  Installing       : perl-File-Path-2.15-2.el8.noarch                     18/59
  Installing       : perl-IO-1.38-416.el8.x86_64                          19/59
  Installing       : perl-PathTools-3.74-1.el8.x86_64                     20/59
  Installing       : perl-constant-1.33-396.el8.noarch                    21/59
  Installing       : perl-threads-1:2.21-2.el8.x86_64                     22/59
  Installing       : perl-threads-shared-1.58-2.el8.x86_64                23/59
  Installing       : perl-interpreter-4:5.26.3-416.el8.x86_64             24/59
  Installing       : perl-MIME-Base64-3.15-396.el8.x86_64                 25/59
  Installing       : perl-IO-Socket-IP-0.39-5.el8.noarch                  26/59
  Installing       : perl-Data-Dumper-2.167-399.el8.x86_64                27/59
  Installing       : perl-File-Temp-0.230.600-1.el8.noarch                28/59
  Installing       : perl-Storable-1:3.11-3.el8.x86_64                    29/59
  Installing       : perl-Time-Local-1:1.280-1.el8.noarch                 30/59
  Installing       : perl-Digest-1.17-395.el8.noarch                      31/59
  Installing       : perl-Digest-MD5-2.55-396.el8.x86_64                  32/59
  Installing       : perl-Net-SSLeay-1.88-1.el8.x86_64                    33/59
  Installing       : perl-Math-Complex-1.59-416.el8.noarch                34/59
  Installing       : perl-Math-BigInt-1:1.9998.11-7.el8.noarch            35/59
  Installing       : perl-Pod-Escapes-1:1.07-395.el8.noarch               36/59
  Installing       : perl-Mozilla-CA-20160104-7.el8.noarch                37/59
  Installing       : psmisc-23.1-3.el8.x86_64                             38/59
  Installing       : openssl-1:1.1.1c-2.el8.x86_64                        39/59
  Installing       : ncurses-6.1-7.20180224.el8.x86_64                    40/59
  Installing       : perl-Term-Cap-1.17-395.el8.noarch                    41/59
  Installing       : groff-base-1.22.3-18.el8.x86_64                      42/59
  Installing       : perl-Encode-4:2.97-3.el8.x86_64                      43/59
  Installing       : perl-Pod-Simple-1:3.35-395.el8.noarch                44/59
  Installing       : perl-Getopt-Long-1:2.50-4.el8.noarch                 45/59
  Installing       : perl-podlators-4.11-1.el8.noarch                     46/59
  Installing       : perl-Pod-Usage-4:1.69-395.el8.noarch                 47/59
  Installing       : perl-Pod-Perldoc-3.28-396.el8.noarch                 48/59
  Installing       : perl-HTTP-Tiny-0.074-1.el8.noarch                    49/59
  Installing       : perl-IO-Socket-SSL-2.066-3.el8.noarch                50/59
  Installing       : perl-libnet-3.11-3.el8.noarch                        51/59
  Installing       : perl-URI-1.73-3.el8.noarch                           52/59
  Installing       : perl-DBI-1.641-3.module_el8.1.0+199+8f0a6bbd.x86_6   53/59
  Installing       : perl-DBD-MySQL-4.046-3.module_el8.1.0+203+e45423dc   54/59
  Installing       : mariadb-backup-3:10.3.17-1.module_el8.1.0+257+4873   55/59
  Installing       : mariadb-gssapi-server-3:10.3.17-1.module_el8.1.0+2   56/59
  Installing       : mariadb-server-utils-3:10.3.17-1.module_el8.1.0+25   57/59
  Running scriptlet: mariadb-server-3:10.3.17-1.module_el8.1.0+257+4873   58/59
  Installing       : mariadb-server-3:10.3.17-1.module_el8.1.0+257+4873   58/59
  Running scriptlet: mariadb-server-3:10.3.17-1.module_el8.1.0+257+4873   58/59
  Installing       : mariadb-3:10.3.17-1.module_el8.1.0+257+48736ea6.x8   59/59
  Running scriptlet: mariadb-3:10.3.17-1.module_el8.1.0+257+48736ea6.x8   59/59
  Verifying        : mariadb-3:10.3.17-1.module_el8.1.0+257+48736ea6.x8    1/59
  Verifying        : mariadb-backup-3:10.3.17-1.module_el8.1.0+257+4873    2/59
  Verifying        : mariadb-common-3:10.3.17-1.module_el8.1.0+257+4873    3/59
  Verifying        : mariadb-connector-c-3.0.7-1.el8.x86_64                4/59
  Verifying        : mariadb-connector-c-config-3.0.7-1.el8.noarch         5/59
  Verifying        : mariadb-errmsg-3:10.3.17-1.module_el8.1.0+257+4873    6/59
  Verifying        : mariadb-gssapi-server-3:10.3.17-1.module_el8.1.0+2    7/59
  Verifying        : mariadb-server-3:10.3.17-1.module_el8.1.0+257+4873    8/59
  Verifying        : mariadb-server-utils-3:10.3.17-1.module_el8.1.0+25    9/59
  Verifying        : perl-DBD-MySQL-4.046-3.module_el8.1.0+203+e45423dc   10/59
  Verifying        : perl-DBI-1.641-3.module_el8.1.0+199+8f0a6bbd.x86_6   11/59
  Verifying        : perl-Digest-1.17-395.el8.noarch                      12/59
  Verifying        : perl-Digest-MD5-2.55-396.el8.x86_64                  13/59
  Verifying        : perl-IO-Socket-IP-0.39-5.el8.noarch                  14/59
  Verifying        : perl-IO-Socket-SSL-2.066-3.el8.noarch                15/59
  Verifying        : perl-Mozilla-CA-20160104-7.el8.noarch                16/59
  Verifying        : perl-Net-SSLeay-1.88-1.el8.x86_64                    17/59
  Verifying        : perl-URI-1.73-3.el8.noarch                           18/59
  Verifying        : perl-libnet-3.11-3.el8.noarch                        19/59
  Verifying        : groff-base-1.22.3-18.el8.x86_64                      20/59
  Verifying        : libaio-0.3.112-1.el8.x86_64                          21/59
  Verifying        : ncurses-6.1-7.20180224.el8.x86_64                    22/59
  Verifying        : openssl-1:1.1.1c-2.el8.x86_64                        23/59
  Verifying        : perl-Carp-1.42-396.el8.noarch                        24/59
  Verifying        : perl-Data-Dumper-2.167-399.el8.x86_64                25/59
  Verifying        : perl-Encode-4:2.97-3.el8.x86_64                      26/59
  Verifying        : perl-Errno-1.28-416.el8.x86_64                       27/59
  Verifying        : perl-Exporter-5.72-396.el8.noarch                    28/59
  Verifying        : perl-File-Path-2.15-2.el8.noarch                     29/59
  Verifying        : perl-File-Temp-0.230.600-1.el8.noarch                30/59
  Verifying        : perl-Getopt-Long-1:2.50-4.el8.noarch                 31/59
  Verifying        : perl-HTTP-Tiny-0.074-1.el8.noarch                    32/59
  Verifying        : perl-IO-1.38-416.el8.x86_64                          33/59
  Verifying        : perl-MIME-Base64-3.15-396.el8.x86_64                 34/59
  Verifying        : perl-Math-BigInt-1:1.9998.11-7.el8.noarch            35/59
  Verifying        : perl-Math-Complex-1.59-416.el8.noarch                36/59
  Verifying        : perl-PathTools-3.74-1.el8.x86_64                     37/59
  Verifying        : perl-Pod-Escapes-1:1.07-395.el8.noarch               38/59
  Verifying        : perl-Pod-Perldoc-3.28-396.el8.noarch                 39/59
  Verifying        : perl-Pod-Simple-1:3.35-395.el8.noarch                40/59
  Verifying        : perl-Pod-Usage-4:1.69-395.el8.noarch                 41/59
  Verifying        : perl-Scalar-List-Utils-3:1.49-2.el8.x86_64           42/59
  Verifying        : perl-Socket-4:2.027-3.el8.x86_64                     43/59
  Verifying        : perl-Storable-1:3.11-3.el8.x86_64                    44/59
  Verifying        : perl-Term-ANSIColor-4.06-396.el8.noarch              45/59
  Verifying        : perl-Term-Cap-1.17-395.el8.noarch                    46/59
  Verifying        : perl-Text-ParseWords-3.30-395.el8.noarch             47/59
  Verifying        : perl-Text-Tabs+Wrap-2013.0523-395.el8.noarch         48/59
  Verifying        : perl-Time-Local-1:1.280-1.el8.noarch                 49/59
  Verifying        : perl-Unicode-Normalize-1.25-396.el8.x86_64           50/59
  Verifying        : perl-constant-1.33-396.el8.noarch                    51/59
  Verifying        : perl-interpreter-4:5.26.3-416.el8.x86_64             52/59
  Verifying        : perl-libs-4:5.26.3-416.el8.x86_64                    53/59
  Verifying        : perl-macros-4:5.26.3-416.el8.x86_64                  54/59
  Verifying        : perl-parent-1:0.237-1.el8.noarch                     55/59
  Verifying        : perl-podlators-4.11-1.el8.noarch                     56/59
  Verifying        : perl-threads-1:2.21-2.el8.x86_64                     57/59
  Verifying        : perl-threads-shared-1.58-2.el8.x86_64                58/59
  Verifying        : psmisc-23.1-3.el8.x86_64                             59/59

Installed:
  mariadb-3:10.3.17-1.module_el8.1.0+257+48736ea6.x86_64
  mariadb-server-3:10.3.17-1.module_el8.1.0+257+48736ea6.x86_64
  mariadb-backup-3:10.3.17-1.module_el8.1.0+257+48736ea6.x86_64
  mariadb-gssapi-server-3:10.3.17-1.module_el8.1.0+257+48736ea6.x86_64
  mariadb-server-utils-3:10.3.17-1.module_el8.1.0+257+48736ea6.x86_64
  perl-IO-Socket-IP-0.39-5.el8.noarch
  perl-IO-Socket-SSL-2.066-3.el8.noarch
  perl-Mozilla-CA-20160104-7.el8.noarch
  mariadb-common-3:10.3.17-1.module_el8.1.0+257+48736ea6.x86_64
  mariadb-connector-c-3.0.7-1.el8.x86_64
  mariadb-connector-c-config-3.0.7-1.el8.noarch
  mariadb-errmsg-3:10.3.17-1.module_el8.1.0+257+48736ea6.x86_64
  perl-DBD-MySQL-4.046-3.module_el8.1.0+203+e45423dc.x86_64
  perl-DBI-1.641-3.module_el8.1.0+199+8f0a6bbd.x86_64
  perl-Digest-1.17-395.el8.noarch
  perl-Digest-MD5-2.55-396.el8.x86_64
  perl-Net-SSLeay-1.88-1.el8.x86_64
  perl-URI-1.73-3.el8.noarch
  perl-libnet-3.11-3.el8.noarch
  groff-base-1.22.3-18.el8.x86_64
  libaio-0.3.112-1.el8.x86_64
  ncurses-6.1-7.20180224.el8.x86_64
  openssl-1:1.1.1c-2.el8.x86_64
  perl-Carp-1.42-396.el8.noarch
  perl-Data-Dumper-2.167-399.el8.x86_64
  perl-Encode-4:2.97-3.el8.x86_64
  perl-Errno-1.28-416.el8.x86_64
  perl-Exporter-5.72-396.el8.noarch
  perl-File-Path-2.15-2.el8.noarch
  perl-File-Temp-0.230.600-1.el8.noarch
  perl-Getopt-Long-1:2.50-4.el8.noarch
  perl-HTTP-Tiny-0.074-1.el8.noarch
  perl-IO-1.38-416.el8.x86_64
  perl-MIME-Base64-3.15-396.el8.x86_64
  perl-Math-BigInt-1:1.9998.11-7.el8.noarch
  perl-Math-Complex-1.59-416.el8.noarch
  perl-PathTools-3.74-1.el8.x86_64
  perl-Pod-Escapes-1:1.07-395.el8.noarch
  perl-Pod-Perldoc-3.28-396.el8.noarch
  perl-Pod-Simple-1:3.35-395.el8.noarch
  perl-Pod-Usage-4:1.69-395.el8.noarch
  perl-Scalar-List-Utils-3:1.49-2.el8.x86_64
  perl-Socket-4:2.027-3.el8.x86_64
  perl-Storable-1:3.11-3.el8.x86_64
  perl-Term-ANSIColor-4.06-396.el8.noarch
  perl-Term-Cap-1.17-395.el8.noarch
  perl-Text-ParseWords-3.30-395.el8.noarch
  perl-Text-Tabs+Wrap-2013.0523-395.el8.noarch
  perl-Time-Local-1:1.280-1.el8.noarch
  perl-Unicode-Normalize-1.25-396.el8.x86_64
  perl-constant-1.33-396.el8.noarch
  perl-interpreter-4:5.26.3-416.el8.x86_64
  perl-libs-4:5.26.3-416.el8.x86_64
  perl-macros-4:5.26.3-416.el8.x86_64
  perl-parent-1:0.237-1.el8.noarch
  perl-podlators-4.11-1.el8.noarch
  perl-threads-1:2.21-2.el8.x86_64
  perl-threads-shared-1.58-2.el8.x86_64
  psmisc-23.1-3.el8.x86_64

Complete!
--> e04dc43b8f7c72e6fbfec5fb085bca91acb378debf2e99ad7377308f8d031ff8
STEP 7: FROM e04dc43b8f7c72e6fbfec5fb085bca91acb378debf2e99ad7377308f8d031ff8
STEP 8: RUN dnf -y install httpd
Last metadata expiration check: 0:01:39 ago on Sun Jan  5 16:12:59 2020.
Dependencies resolved.
================================================================================
 Package           Arch   Version                               Repo       Size
================================================================================
Installing:
 httpd             x86_64 2.4.37-16.module_el8.1.0+256+ae790463 AppStream 1.7 M
Installing dependencies:
 apr               x86_64 1.6.3-9.el8                           AppStream 125 k
 apr-util          x86_64 1.6.1-6.el8                           AppStream 105 k
 centos-logos-httpd
                   noarch 80.5-2.el8                            AppStream  24 k
 httpd-filesystem  noarch 2.4.37-16.module_el8.1.0+256+ae790463 AppStream  35 k
 httpd-tools       x86_64 2.4.37-16.module_el8.1.0+256+ae790463 AppStream 103 k
 mod_http2         x86_64 1.11.3-3.module_el8.1.0+213+acce2796  AppStream 158 k
 brotli            x86_64 1.0.6-1.el8                           BaseOS    323 k
 mailcap           noarch 2.1.48-3.el8                          BaseOS     39 k
Installing weak dependencies:
 apr-util-bdb      x86_64 1.6.1-6.el8                           AppStream  25 k
 apr-util-openssl  x86_64 1.6.1-6.el8                           AppStream  27 k
Enabling module streams:
 httpd                    2.4

Transaction Summary
================================================================================
Install  11 Packages

Total download size: 2.6 M
Installed size: 8.1 M
Downloading Packages:
(1/11): apr-util-bdb-1.6.1-6.el8.x86_64.rpm      85 kB/s |  25 kB     00:00
(2/11): apr-1.6.3-9.el8.x86_64.rpm              321 kB/s | 125 kB     00:00
(3/11): centos-logos-httpd-80.5-2.el8.noarch.rp 635 kB/s |  24 kB     00:00
(4/11): apr-util-openssl-1.6.1-6.el8.x86_64.rpm 189 kB/s |  27 kB     00:00
(5/11): apr-util-1.6.1-6.el8.x86_64.rpm         214 kB/s | 105 kB     00:00
(6/11): httpd-filesystem-2.4.37-16.module_el8.1 324 kB/s |  35 kB     00:00
(7/11): httpd-tools-2.4.37-16.module_el8.1.0+25 319 kB/s | 103 kB     00:00
(8/11): mod_http2-1.11.3-3.module_el8.1.0+213+a 265 kB/s | 158 kB     00:00
(9/11): mailcap-2.1.48-3.el8.noarch.rpm         178 kB/s |  39 kB     00:00
(10/11): brotli-1.0.6-1.el8.x86_64.rpm          378 kB/s | 323 kB     00:00
(11/11): httpd-2.4.37-16.module_el8.1.0+256+ae7 331 kB/s | 1.7 MB     00:05
--------------------------------------------------------------------------------
Total                                           398 kB/s | 2.6 MB     00:06
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                        1/1
  Installing       : apr-1.6.3-9.el8.x86_64                                1/11
  Running scriptlet: apr-1.6.3-9.el8.x86_64                                1/11
  Installing       : apr-util-bdb-1.6.1-6.el8.x86_64                       2/11
  Installing       : apr-util-openssl-1.6.1-6.el8.x86_64                   3/11
  Installing       : apr-util-1.6.1-6.el8.x86_64                           4/11
  Running scriptlet: apr-util-1.6.1-6.el8.x86_64                           4/11
  Installing       : httpd-tools-2.4.37-16.module_el8.1.0+256+ae790463.    5/11
  Installing       : mailcap-2.1.48-3.el8.noarch                           6/11
  Installing       : brotli-1.0.6-1.el8.x86_64                             7/11
  Running scriptlet: httpd-filesystem-2.4.37-16.module_el8.1.0+256+ae79    8/11
  Installing       : httpd-filesystem-2.4.37-16.module_el8.1.0+256+ae79    8/11
  Installing       : centos-logos-httpd-80.5-2.el8.noarch                  9/11
  Installing       : mod_http2-1.11.3-3.module_el8.1.0+213+acce2796.x86   10/11
  Installing       : httpd-2.4.37-16.module_el8.1.0+256+ae790463.x86_64   11/11
  Running scriptlet: httpd-2.4.37-16.module_el8.1.0+256+ae790463.x86_64   11/11
  Verifying        : apr-1.6.3-9.el8.x86_64                                1/11
  Verifying        : apr-util-1.6.1-6.el8.x86_64                           2/11
  Verifying        : apr-util-bdb-1.6.1-6.el8.x86_64                       3/11
  Verifying        : apr-util-openssl-1.6.1-6.el8.x86_64                   4/11
  Verifying        : centos-logos-httpd-80.5-2.el8.noarch                  5/11
  Verifying        : httpd-2.4.37-16.module_el8.1.0+256+ae790463.x86_64    6/11
  Verifying        : httpd-filesystem-2.4.37-16.module_el8.1.0+256+ae79    7/11
  Verifying        : httpd-tools-2.4.37-16.module_el8.1.0+256+ae790463.    8/11
  Verifying        : mod_http2-1.11.3-3.module_el8.1.0+213+acce2796.x86    9/11
  Verifying        : brotli-1.0.6-1.el8.x86_64                            10/11
  Verifying        : mailcap-2.1.48-3.el8.noarch                          11/11

Installed:
  httpd-2.4.37-16.module_el8.1.0+256+ae790463.x86_64
  apr-util-bdb-1.6.1-6.el8.x86_64
  apr-util-openssl-1.6.1-6.el8.x86_64
  apr-1.6.3-9.el8.x86_64
  apr-util-1.6.1-6.el8.x86_64
  centos-logos-httpd-80.5-2.el8.noarch
  httpd-filesystem-2.4.37-16.module_el8.1.0+256+ae790463.noarch
  httpd-tools-2.4.37-16.module_el8.1.0+256+ae790463.x86_64
  mod_http2-1.11.3-3.module_el8.1.0+213+acce2796.x86_64
  brotli-1.0.6-1.el8.x86_64
  mailcap-2.1.48-3.el8.noarch

Complete!
--> 67a67d1afb9495aa2405c43010c27483c1f6e83881891646be281adfa8e9a4e7
STEP 9: FROM 67a67d1afb9495aa2405c43010c27483c1f6e83881891646be281adfa8e9a4e7
STEP 10: RUN echo "test-page" > /var/www/html/index.html
--> e892e0882742eebe02a589d2e16217c8fa39f2f7758fa3545af6b2b17a496a7b
STEP 11: FROM e892e0882742eebe02a589d2e16217c8fa39f2f7758fa3545af6b2b17a496a7b
STEP 12: RUN systemctl enable mariadb
Created symlink /etc/systemd/system/mysql.service → /usr/lib/systemd/system/mariadb.service.
Created symlink /etc/systemd/system/mysqld.service → /usr/lib/systemd/system/mariadb.service.
Created symlink /etc/systemd/system/multi-user.target.wants/mariadb.service → /usr/lib/systemd/system/mariadb.service.
--> b5c542cefc97dc4418e4a8509fa7829f0f3098d07d43918a232c8c18dc00edb9
STEP 13: FROM b5c542cefc97dc4418e4a8509fa7829f0f3098d07d43918a232c8c18dc00edb9
STEP 14: RUN systemctl enable httpd
Created symlink /etc/systemd/system/multi-user.target.wants/httpd.service → /usr/lib/systemd/system/httpd.service.
--> 6893d92ad39d71de683574cf31df6d99b818118cb1e5bab47f8d0e991f32fbdc
STEP 15: FROM 6893d92ad39d71de683574cf31df6d99b818118cb1e5bab47f8d0e991f32fbdc
STEP 16: EXPOSE 80
--> 26adad820d04b115992c0edf4334599cfc61b4451c21656577541f1dc3311cca
STEP 17: FROM 26adad820d04b115992c0edf4334599cfc61b4451c21656577541f1dc3311cca
STEP 18: CMD echo "now running..."
--> 2fa3fad5848cf1fdde56abfcf9fe665b1524d491d6b7b6e158c090b83dc7e215
STEP 19: COMMIT
```

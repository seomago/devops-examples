# ⎈ Cómo la IA puede ayudarte con tus clústeres de Kubernetes ⎈

En este repo quiero compartir contigo tres formas en las que la inteligencia artificial puede ayudarte con tus clústers de Kubernetes. Para que puedas probar todo, y no tengas que instalar nada, puedes ejecutar este repo como un Dev Containers o en GitHub Codespaces, [¡del cual tienes 15GB/mes y 120 horas gratuitas al mes en tu cuenta personal!](https://docs.github.com/en/billing/managing-billing-for-github-codespaces/about-billing-for-github-codespaces#monthly-included-storage-and-core-hours-for-personal-accounts)

# Cómo la IA puede ...


<details>
<summary> <h2>🎁 ... ayudarte a aprender 👩🏼‍🏫 Kubernetes</h2></summary>

## bb create amazonlinux2  
https://docs.aws.amazon.com/linux/al2/ug/al2-extras.html
https://docs.aws.amazon.com/linux/al2023/release-notes/compare-packages.html

cat bootloose.yaml
https://quay.io/repository/k0sproject/bootloose-fedora38
https://quay.io/repository/k0sproject/bootloose-rockylinux9
https://quay.io/repository/k0sproject/bootloose-amazonlinux2
https://quay.io/repository/k0sproject/bootloose-amazonlinux2023


## eget
cd /usr/local/bin
curl -O https://zyedidia.github.io/eget.sh | bash;mv -v eget /usr/local/bin

## eget
curl -o eget.sh https://zyedidia.github.io/eget.sh 
bash eget.sh
root@node1:~# chmod +x eget
root@node1:~# ./eget --to=/usr/local/bin dalance/procs
eget --to=/usr/local/bin caddyserver/caddy
dpkg -i /usr/local/bin/caddy_2.8.4_linux_arm64.deb
caddy file-server --browse --listen 0.0.0.0:80 -r /usr
</details>

## procs
eget --to=/usr/local/bin filebrowser/filebrowser

bb1 'procs -i TcpPort'
procs -i TcpPort
 PID:▲ User            │ TTY   CPU MEM CPU Time  TCP │ Command                        
                       │       [%] [%]               │                                
 1     root            │       0.0 0.1 00:00:00   [] │ /sbin/init                     
 20    root            │       0.0 0.1 00:00:00   [] │ /lib/systemd/systemd-journald  
 24    systemd-resolve │       0.0 0.1 00:00:00   [] │ /lib/systemd/systemd-resolved  
 26    messagebus      │       0.0 0.0 00:00:00   [] │ @dbus-daemon --system --address
 29    root            │       0.0 0.1 00:00:00   [] │ /lib/systemd/systemd-logind    
 31    root            │       0.0 0.0 00:00:00 [22] │ sshd: /usr/sbin/sshd -D [listen
 122   root            │       0.0 0.0 00:00:00   [] │ sshd: root@pts/1               
 125   root            │       0.0 0.0 00:00:00   [] │ /lib/systemd/systemd --user    
 126   root            │       0.0 0.0 00:00:00   [] │ (sd-pam)                       
 140   root            │ pts/1 0.0 0.0 00:00:00   [] │ -bash                          
 472   root            │ pts/1 0.0 0.2 00:00:00 [80] │ filebrowser --noauth -a 0.0.0.0

## alias
alias readme='bat README.md'
alias readmec='code README.md'
alias bb='bootloose'
alias bb0='bootloose ssh root@node0'
alias bb1='bootloose ssh root@node1'

## ghost
docker pull ghost:5.105.0
$ docker run -d --name some-ghost -e NODE_ENV=development ghost
$ docker run -d --name some-ghost -e NODE_ENV=development ghost:5.105
https://hub.docker.com/_/ghost

## images

┌──────────────────────────────────────────┬─────────────────────┬──────────────┬───────────────┬────────┐
│                REPOSITORY                │         TAG         │   IMAGE ID   │    CREATED    │  SIZE  │
├──────────────────────────────────────────┼─────────────────────┼──────────────┼───────────────┼────────┤
│ mcr.microsoft.com/devcontainers/base     │ bullseye            │ f993290b31a4 │ 42 hours ago  │ 802MB  │
│ lirantal/dockly                          │ latest              │ 3c745cfae1fe │ 5 days ago    │ 432MB  │
│ ghcr.io/thomiceli/opengist               │ 1.8                 │ 22dfbb43dfa8 │ 6 weeks ago   │ 255MB  │
│ benbusby/whoogle-search                  │ latest              │ f44c90ce705d │ 6 weeks ago   │ 144MB  │
│ semaphoreui/semaphore                    │ v2.10.11            │ 797b37e2965f │ 5 months ago  │ 694MB  │
│ bitnami/phpmyadmin                       │ 5.2.1-debian-12-r25 │ 39cc1f084545 │ 8 months ago  │ 677MB  │
│ bitnami/mariadb                          │ 11.3.2-debian-12-r1 │ f0c89240e7b5 │ 8 months ago  │ 456MB  │
│ rancher/klipper-lb                       │ v0.4.7              │ bd1c9d32f4f5 │ 9 months ago  │ 18.9MB │
│ portainer/portainer-ce                   │ 2.19.4              │ f12f1fd2694d │ 12 months ago │ 284MB  │
│ rancher/local-path-provisioner           │ v0.0.26             │ a7f913520a4a │ 12 months ago │ 47.7MB │
│ quay.io/k0sproject/bootloose-ubuntu22.04 │ latest              │ a49a99e75752 │ 14 months ago │ 188MB  │
│ rancher/mirrored-coredns-coredns         │ 1.10.1              │ 97e04611ad43 │ 22 months ago │ 51.4MB │
│ linuxserver/heimdall                     │ version-2.2.2       │ c81e42b4d06d │ 2 years ago   │ 91.7MB │
│ caddy                                    │ 2.4.3               │ 9bf7e12f71e0 │ 3 years ago   │ 37.1MB │
│ rancher/mirrored-pause                   │ 3.6                 │ 7d46a07936af │ 3 years ago   │ 484kB  │
└──────────────────────────────────────────┴─────────────────────┴──────────────┴───────────────┴────────┘
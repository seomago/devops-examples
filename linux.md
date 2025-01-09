# Linux commands

Tipos de archivos
* ascii
* bin (cli commands vs http server apps)
* other

## Commands head
* head
* cd ..
* cd -
* pwd
* ls -l /usr/local/bin
* gdu / rm
* mkdir folder1
* echo texto1 >> file.log
* echo texto2 >> file.log
* tail -f file.log
* bat mp3.txt
* youtubea mp3.txt
* cal -3
* cal -y

## which
* which ps curl top
* which bash
* which whereis
* which netstat
* which ipaddr
* which ip
* which ftpd
* which httpd
* whereis sleep

## Commands 
* ping 1.1.1.1
* top
* procs
* procs1
* procs -w

* (sleep 5; say good morning)
* sleep 5; say good morning; caddy
* sleep 7 &
* time sleep 5
* kill
* ninvaders
* sleep 5 &

Uptime commands 2
* uptime
* hostname
* hostname -i
* sysbox httpd
* eget
* neofetch
* sshx
* neofetch


## Commands Mac OS 
* yt-dlp -h
* say -h
* mpv *
* toilet
* figlet
* cowsay -W 60
* cmatrix
* fortune | lolcat

## Commands docker Mac OS 2
* lsof1
* ifconfig0
* dockerip
* d ps -s
* d port $nodo
* d top $nodo
* d cp sysbox $nodo:/usr/local/bin
* de $nodo top
* de $nodo uptime
* de $nodo sleep 5
* dexec ubuntu eget --to=/usr/local/bin -k ducaale/xh
* lazydocker

## gotty server
* gotty -w --index index.html -p 8000 pwd
* gotty -p 8000 docker ps
* ttyd -W  -I readme.md -p 8001 pwd
* ttyd -W  -I readme.md -p 8001 say hello
* gotty -w --index readme.md -p 8001 say hello


## HTTP servers
* httpd -host 0.0.0.0 -port 80
* httpd -host 0.0.0.0 -port 80 | tail.log
* caddy file-server --browse --listen :80
* sysbox http-get http://localhost > index.html
* watch http-get http://localhost > index.html

```yaml
Available flags:
  -host string
        The host to bind upon (use 0.0.0.0 for remote access) (default "127.0.0.1")
  -path string
        The directory to use as the HTTP root directory (default ".")
  -port int
        The port to listen upon (default 3000)
```

## FTP servers
* filebrowser --noauth -a 0.0.0.0 -p 80
* ftpd --noauth -r /usr -a 0.0.0.0 -p 7006
* ftpd --noauth -l fichero.log -r /usr -a 0.0.0.0 -p 7006

## reverse proxy
* caddy reverse-proxy --from :2080 --to :9000

## caddy port redirect con password
* top
* procs1
* sysbox httpd
* bat
* glow
* ttyd
* gotty -w -c admin:admin top
* gotty -w -c admin:admin lazydocker
* caddy reverse-proxy --from :80 --to localhost:8000

## Sysbox http-get
cht.sh/ttydxx
cht.sh/caddy
cht.sh/gotty
cht.sh/btm
cht.sh/gum
cht.sh/glow
cht.sh/xh


## xh
```shell
> httpd -port 80 -host 0.0.0.0 -root /usr
2025/01/02 09:48:45 Serving upon http://0.0.0.0:80/
2025/01/02 09:48:52 127.0.0.1:56422 GET /
2025/01/02 09:49:50 127.0.0.1:56432 GET /
2025/01/02 09:53:15 127.0.0.1:56482 GET /files/vegas01/vegas56planes/magomore/
2025/01/02 09:53:15 127.0.0.1:56482 GET /favicon.ico
2025/01/02 09:53:24 127.0.0.1:56486 GET /vegas01/vegas56planes/magomore/
2025/01/02 09:53:30 127.0.0.1:56489 GET /vegas01/vegas56planes/magomore/2/
2025/01/02 09:53:42 127.0.0.1:56501 GET /vegas01/vegas56planes/

watch xh -h :80/hola

root@1c48ad1becb2:/# xh HEAD :8000
2025/01/06 19:18:58 [::1]:54134 HEAD /
HTTP/1.1 200 OK
Content-Length: 371
Content-Type: text/html; charset=utf-8
Date: Mon, 06 Jan 2025 19:18:58 GMT
Last-Modified: Sat, 28 Dec 2024 09:15:20 GMT


root@1c48ad1becb2:/# xh HEAD :80  
HTTP/1.1 200 OK
Connection: keep-alive
Content-Encoding: gzip
Content-Type: text/html
Date: Mon, 06 Jan 2025 19:19:26 GMT
Etag: W/"676e88ac-15"
Last-Modified: Fri, 27 Dec 2024 10:59:56 GMT
Server: nginx/1.24.0 (Ubuntu)
```


## choco
```shell
choco install gotop
choco install bottom
choco install arkade
choco install yt-dlp
choco install caddy
choco install xh
choco install eget
xh -d https://raw.githubusercontent.com/KittyKatt/screenFetch/refs/heads/master/screenfetch-dev
```

## brew
* brew install ninvaders
* brew install curseofwar
* brew install nudoku

## testing disposable browser
* https://www.browserling.com/browse/win10/opera112/youtube.com
* deuthche filme https://www.dailymotion.com/PIRATE-SOUL?retry 


## aplicaciones
* adminer 
* gitea
* grocy https://github.com/linuxserver/docker-grocy
* https://github.com/grocy/grocy-docker
* opengist
* filebrowser


## Preview:
```yaml
      --preview <PREVIEW>
          Preview command
          
          Execute the given command for the current line and display the result on the preview window. {} in the command
          is the placeholder that is replaced to the single-quoted string of the current line. To transform the replace‐
          ment string, specify field index expressions between the braces (See FIELD INDEX EXPRESSION for the details).
          
          e.g. sk --preview='head -$LINES {}'
               ls -l | sk --preview="echo user={3} when={-4..-2}; cat {-1}" --header-lines=1
          
          sk overrides $LINES and $COLUMNS so that they represent the exact size of the preview window.
          
          A placeholder expression starting with + flag will be replaced to the space-separated  list  of  the  selected
          lines (or the current line if no selection was made) individually quoted.
          
          e.g.
               sk --multi --preview='head -10 {+}'
               git log --oneline | sk --multi --preview 'git show {+1}'
          
          Note that you can escape a placeholder pattern by prepending a backslash.
          
--
          is replaced to zero-based ordinal index of the line. Use {+n} if you want  all  index  numbers  when  multiple
          lines are selected
          
          Preview window will be updated even when there is no match for the current query if any of the placeholder ex‐
          pressions evaluates to a non-empty string.
```

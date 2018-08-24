#!/bin/bash

 assignProxy(){
   PROXY_ENV="http_proxy ftp_proxy https_proxy all_proxy HTTP_PROXY HTTPS_PROXY FTP_PROXY ALL_PROXY"
   for envar in $PROXY_ENV
   do
      export $envar=$1
   done
   for envar in "no_proxy NO_PROXY"
   do
      export $envar=$2
   done
 }

 clrProxy(){
    PROXY_ENV="http_proxy ftp_proxy https_proxy all_proxy HTTP_PROXY HTTPS_PROXY FTP_PROXY ALL_PROXY"
    for envar in $PROXY_ENV
    do
       unset $envar
    done
 }

 myProxy(){
   user=serdeen
   pass=Escrever0u0u0u0u
   server=proxy2.wipro.com
   port=8080
   proxy_value="http://$user:$pass@$server:$port"
   no_proxy_value="localhost,127.0.0.1,LocalAddress,LocalDomain.com"
   assignProxy $proxy_value $no_proxy_value
 }

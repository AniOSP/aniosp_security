#!/bin/bash

# Example of subject as pointed out by AOSP
# subject='/C=US/ST=California/L=Mountain View/O=Android/OU=Android/CN=Android/emailAddress=android@android.com'

subject='/C=US/ST=California/L=Riverside/O=AniOSP/OU=AniOSP/CN=AniOSP/emailAddress=relms@relms.dev'
for x in testkey releasekey platform shared media networkstack; do \
    ../../../../../../development/tools/make_key ./$x "$subject"; \
done

openssl genrsa -out aniosp_rsa2048.pem 2048
openssl genrsa -out aniosp_rsa4096.pem 4096

#!/usr/bin/env bash
URL="https://www.bouncycastle.org/download/"
VERSION=161

for j in bcprov bcpkix; do
    curl -LO "$URL/$j-jdk15on-$VERSION.jar"
    # Remove signatures from JAR (breaks merged JAR)
    zip -d "$j-jdk15on-$VERSION.jar" 'META-INF*'
done

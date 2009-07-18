#!/bin/bash
mkdir pkg
cd pkg
jar -xf ../lib/OneWireAPI.jar 
cp -r ../org .
cp ../ReadTemp.class .
jar -cfe ReadTemp.jar ReadTemp org/xml/sax/ org/json/JSON*.class com ReadTemp.class 
cd ..
cp pkg/ReadTemp.jar .
rm -f -r pkg 

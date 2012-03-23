#!/bin/sh
wget -q "http://www.dbs.com/ratesonline/xml/Pages/XFXBRA.xml"
echo | grep -A 4 "Australian" ~/XFXBRA.xml | grep "selling" | sed -n 's/.*value="\([^"]*\)".*/\1/p' 
rm XFXBRA.xml
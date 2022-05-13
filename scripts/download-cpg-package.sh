#!/bin/bash

# this script downloads the latest package version of CPG-on-EBMonFHIR from github

cpg_version=$(grep -A1 'cpg.ceosys.de:' sushi-config.yaml | tail -n1 | awk '{ print $2}')
echo $cpg_version

filename="cpg.ceosys.de-$cpg_version.tgz"
package_url="https://github.com/CEOsys/cpg-on-ebm-on-fhir/releases/download/v$cpg_version/$filename"
echo $package_url

mkdir -p $HOME/.fhir
mkdir -p $HOME/.fhir/packages

path="$HOME/.fhir/packages/cpg.ceosys.de#$cpg_version"
echo $path
mkdir -p $path
cd $path

wget -q $package_url -O $filename
tar -zxf $filename
rm $filename

#ls -al $HOME/.fhir/packages
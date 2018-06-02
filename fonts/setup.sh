#!/bin/bash

echo see https://starlinq.livejournal.com/3396.html

mkdir ~/latex-ttf-fonts
cp * ~/latex-ttf-fonts/
#cp /usr/share/fonts/truetype/msttcorefonts/Cour* ~/latex-ttf-fonts/
cd ~/latex-ttf-fonts/
#mv Courier_New_Bold_Italic.ttf couriernewz.ttf
#mv Courier_New_Bold.ttf couriernewb.ttf
#mv Courier_New_Italic.ttf couriernewi.ttf
#mv Courier_New.ttf couriernew.ttf
#cp /usr/share/texlive/texmf-dist/fonts/enc/ttf2pk/base/T1-WGL4.enc ./
#ttf2afm -e T1-WGL4.enc -o eccouriernew.afm couriernew.ttf
#ttf2afm -e T1-WGL4.enc -o eccouriernewi.afm couriernewi.ttf
#ttf2afm -e T1-WGL4.enc -o eccouriernewb.afm couriernewb.ttf
#ttf2afm -e T1-WGL4.enc -o eccouriernewz.afm couriernewz.ttf
sudo mkdir /usr/share/texlive/texmf-dist/fonts/tfm/ms
sudo cp *.tfm /usr/share/texlive/texmf-dist/fonts/tfm/ms
sudo mkdir /usr/share/texlive/texmf-dist/fonts/truetype/ms
sudo cp *.ttf /usr/share/texlive/texmf-dist/fonts/truetype/ms
sudo mktexlsr
sudo cp updmap-local.cfg /usr/share/texlive/texmf-dist/web2c/updmap-local.cfg
sudo cp ttf.map /usr/share/texlive/texmf-dist/fonts/map/pdftex/updmap/
sudo cp ttf.map /var/lib/texmf/fonts/map/pdftex/updmap/
sudo updmap-sys --enable Map=ttf.map
sudo cp  couriernew.sty /etc/texmf/tex/couriernew.sty
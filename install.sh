mkdir tmp && cd tmp
mv ~/Downloads/*.scel ./
mkdir org
for i in *.scel; do scel2org $i -o org/$i.org    ; done
cp ../pyPhrase.org org/
mkdir dict && cd dict
cat ../org/* | sort | uniq > ultimate.org
createPYMB ../../gbkpy.org ultimate.org
cp pyphrase.mb ~/.config/fcitx/pinyin/
cp pybase.mb ~/.config/fcitx/pinyin/

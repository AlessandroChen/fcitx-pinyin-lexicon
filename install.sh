mkdir tmp && cd tmp
mv ~/Downloads/*.scel ./
mkdir org
for i in *.scel; do scel2org $i -o org/$i.org    ; done
cp ../fcitx-pinyin-lexicon/pyPhrase.org org/
mkdir dict && cd dict
cat ../org/* | sort | uniq > ultimate.org
createPYMB ../../gbkpy.org ultimate.org
mv pyphrase.mb ~/.config/fcitx/pinyin/
mv pybase.mb ~/.config/fcitx/pinyin/

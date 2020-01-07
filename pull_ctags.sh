git reset --hard HEAD~
git pull
echo -e "PULL DONE\n\n"


find . -name "*swp" -exec rm {} \;
find . -name "*rej" -exec rm {} \;
find . -name "*.orig" -exec rm {} \;
find . -name ".#*" -exec rm {} \;


rm -rf TAGS
rm -rf cscope.*

pushd arch
rm -rf alpha avr32 arm c6x csky frv hexagon m68k microblaze mn10300 nds32 openrisc powerpc score sparc um arc blackfin cris h8300 ia64 m32r metag mips nios2 parisc s390 sh tile unicore32 xtensa riscv
popd

pushd tools/arch/
#rm -rf alpha  arc h8300  hexagon  ia64  microblaze  mips  parisc  powerpc  riscv  s390  sh  sparc xtensa
popd

rm -rf tools

find . \( -name "*.[chS]" -o -name "*.cpp" \) | xargs etags -a;  cscope-indexer -r


git commit -as


# Make work dir and move there.
function gotowork () {
  dirname=~/work/`date +%Y%m%d`
  if [ ! -e $dirname ]; then
    mkdir -p $dirname
  fi
  cd $dirname
}

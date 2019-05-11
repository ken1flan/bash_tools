# Make work dir and move there
function gotowork () {
  dirname=~/work/`date +%Y%m%d`
  if [ ! -e $dirname ]; then
    mkdir -p $dirname
  fi
  cd $dirname
}

# Open/reopen memo
function memo () {
  MEMO_EDITOR=cot
  MEMO_BASEDIR=~/google_memo
  MEMO_DIR=$MEMO_BASEDIR/$(date +%Y/%m)
  MEMO_FILENAME=$MEMO_DIR/$(date +%d).md
  if [ ! -d $MEMO_DIR ]; then
    mkdir -p $MEMO_DIR
  fi
  if [ ! -f $MEMO_FILENAME ]; then
    date +"# %Y/%m/%d" > $MEMO_FILENAME
  fi
  ${MEMO_EDITOR} $MEMO_FILENAME
}

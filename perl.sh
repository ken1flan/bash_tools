# List modules
function pm_list {
  find `perl -e 'print "@INC"'` -name '*.pm' -print
}


# List modules
function pm_list {
  find `perl -e 'print "@INC"'` -name '*.pm' -print
}

# Print module version
alias pmversion='perl -le '"'"'for $module (@ARGV) { eval "use $module"; print "$module ", ${"$module\::VERSION"} || "not found" }'"'"

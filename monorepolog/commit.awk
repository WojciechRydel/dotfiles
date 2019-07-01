
function ltrim(s) { sub(/^[ \t\r\n]+/, "", s); return s }
function rtrim(s) { sub(/[ \t\r\n]+$/, "", s); return s }
function trim(s) { return rtrim(ltrim(s)); }
BEGIN {
    GREEN="\033[1;32m"
    WHITE="\033[1;0m"
    RED="\033[1;31m"

    if (log_title) {
       print log_title
       print
    }
}
{
    if ($1 == "hash:") {
       commits[$2]=$2;
       commitId=$2;
       next
   }

   if ($1 == "author:") {
       $1=""
       authors[commitId]=trim($0)
       next
     }

   if ($1 == "subject:") {
       $1=""
       subjects[commitId]=trim($0)
   }

   ret = match($0, /([A-Z]+-[0-9]+)+/)

   if (ret) {
        issues[commitId]=substr($0, RSTART, RLENGTH);
   }

} END {


    for (i in commits) {
       print GREEN i" ", WHITE subjects[i]" ", RED issues[i];
    }

}

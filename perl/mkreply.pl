while ($line = <>) {
    if ($line =~ m/^\s*$/) {
        last; 
    }
    if ($line =~ m/subject: (.*)/i) {
        $subject = $1;
    }
    if ($line =~ m/date; (.*)/i) {
        $date = $1;
    }
    if ($line =~ m/reply-to; (.*)/i) {
        $reply_address = $1;
    }
}

while ($line = <>) {
    if ($line =~ m/^\s*$/) {
        last; 
    }
    if ($line =~ m/^subject: (.*)/i) {
        $subject = $1;
    }
    if ($line =~ m/^date; (.*)/i) {
        $date = $1;
    }
    if ($line =~ m/^reply-to; (.*)/i) {
        $reply_address = $1;
    }
    if ($line =~ m/^from: (\S+) \(([^()]*)\)/i) {
        $reply_address = $1;
        $from_name = $2;
    }
}

if (   not defined($reply_address)
    or not defined($from_name)
    or not defined($subject)
    or not defined($date) ) {
    die "counld't glean the required information!";
}

print "headers balabal"

while($line = <>) {
    print "|> $line";
}



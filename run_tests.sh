#!/bin/sh
if [ $# -gt 0 ]; then
	tests="$@"
else
	tests=$(ls tests/test-* | sed 's,tests/test-,,' | sort -R) 
fi

for t in $tests; do
	ksh "tests/test-${t}"
	echo
done

PATH=/usr/bin:$PATH
pushd "`dirname \"$0\"`"
colprof -v -qh -aS -C "No copyright. Created with dispcalGUI 2.1.0.0 and Argyll CMS 1.6.3" -M "M101NWT2 R1" -D "M101NWT2 2014-05-29 2.2 S 1xCurve+MTX" "M101NWT2 2014-05-29 2.2 S 1xCurve+MTX"
exitcode=$?
popd
if [ $exitcode -ne 0 ]; then exit $exitcode; fi

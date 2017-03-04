PATH=/usr/bin:$PATH
pushd "`dirname \"$0\"`"
/usr/bin/sudo -p Password: -E dispwin -Sl -v -d1 -c -I "M101NWT2 2014-05-29 2.2 S 1xCurve+MTX.icc"
exitcode=$?
popd
if [ $exitcode -ne 0 ]; then exit $exitcode; fi

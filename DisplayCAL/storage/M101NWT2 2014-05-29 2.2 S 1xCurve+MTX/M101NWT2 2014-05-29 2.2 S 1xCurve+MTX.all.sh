PATH=/usr/bin:$PATH
pushd "`dirname \"$0\"`"
echo -e "\033[40;2;37m" && clear
dispcal -v2 -d1 -c1 -yl "-P0.5,0.9,1.5" -Ibw -qh -m -t -g2.2 -f1.0 -k0 -A4.0 "M101NWT2 2014-05-29 2.2 S 1xCurve+MTX"
exitcode=$?
echo -e "\033[0m" && clear
popd
if [ $exitcode -ne 0 ]; then exit $exitcode; fi
pushd "`dirname \"$0\"`"
echo -e "\033[40;2;37m" && clear
dispread -v -d1 -c1 -yl "-P0.5,0.9,1.5" -Ibw -k "M101NWT2 2014-05-29 2.2 S 1xCurve+MTX.cal" "M101NWT2 2014-05-29 2.2 S 1xCurve+MTX"
exitcode=$?
echo -e "\033[0m" && clear
popd
if [ $exitcode -ne 0 ]; then exit $exitcode; fi
pushd "`dirname \"$0\"`"
colprof -v -qh -aS -C "No copyright. Created with dispcalGUI 2.1.0.0 and Argyll CMS 1.6.3" -M "M101NWT2 R1" -D "M101NWT2 2014-05-29 2.2 S 1xCurve+MTX" "M101NWT2 2014-05-29 2.2 S 1xCurve+MTX"
exitcode=$?
popd
if [ $exitcode -ne 0 ]; then exit $exitcode; fi
pushd "`dirname \"$0\"`"
dispwin -v -d1 -c -I "M101NWT2 2014-05-29 2.2 S 1xCurve+MTX.icc"
exitcode=$?
popd
if [ $exitcode -ne 0 ]; then exit $exitcode; fi
pushd "`dirname \"$0\"`"
/usr/bin/sudo -p Password: -E dispwin -Sl -v -d1 -c -I "M101NWT2 2014-05-29 2.2 S 1xCurve+MTX.icc"
exitcode=$?
popd
if [ $exitcode -ne 0 ]; then exit $exitcode; fi

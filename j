read SUMMARY && ISSUE=$(jira create -p DEV -i $1 -o components=web-app -o summary="$SUMMARY" -o assignee="Mika" --noedit | cut '-d ' -f2) && jira transition --noedit 'Selected for Development' $ISSUE && echo -n $ISSUE | xsel -b && if [ "$2" != "" ]; then jira epic add -Q DEV-$2 $ISSUE; fi

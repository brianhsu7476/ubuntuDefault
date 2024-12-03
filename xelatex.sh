#!/bin/bash
if [[ $# != 0 ]]; then
    echo 'xelatex.sh: ignoring arguments'
fi
out=`echo | xelatex main.tex`
if [[ $? != 0 ]]; then
    echo "$out"
else
    echo 'Congratulations! Now, see your pdf.'
	rm main.log
    echo | open main.pdf &> /dev/null
fi

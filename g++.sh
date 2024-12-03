#if [[ $# -ne 1 ]]; then echo 'g++.sh: excepted 1 argument'; exit 1; fi
if [[ $2 == 'f' ]]; then g++ -std=c++20 -fsanitize=address -D brianhsu_codeforces_template -D too_soft -D brianhsu -D rmfr -D OWF -Wall $1
else g++ -std=c++20 -D brianhsu_codeforces_template -D too_soft -D brianhsu -D rmfr -D OWF -Wall $1; fi
if [[ $? -ne 0 ]]; then echo 'g++.sh: compile error'; exit 1; fi
./a.out

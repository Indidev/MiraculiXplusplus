export ArmarX_DIR="<path-to-armarx>"
export AX_PROJECTS="ArmarXCore;ArmarXGui;RobotAPI;MemoryX;VisionX;ArmarXSimulation;Spoac;SpeechX;RobotComponents;RobotSkillTemplates;Armar3"
#uses all cores (incl virtual), but can make the system inresponsive
#export MAKEFLAGS='-j$(nproc)'

#uses all cores - 1, almost as fast as the above, but system stays responsive
#NOTE: the below doesn't work as expected; forgot why
#export MAKEFLAGS='-j$(expr $(nproc) - 1)'
export MAKEFLAGS='-j7'

alias rl="source ~/.bashrc"
alias geanyclear="rm ~/.config/geany/geany_socket_*"
alias sa="./startScenario.sh"
alias so="./stopScenario.sh 9"
alias re="so;sa"
alias start="$ArmarX_DIR/MiraculiXplusplus/start.sh"
alias stop="$ArmarX_DIR/MiraculiXplusplus/stop.sh"
alias gui="$ArmarX_DIR/Gui/build/bin/ArmarXGuiRun"
alias guikill="killall -9 ArmarXGuiRun"
alias cmdall="$ArmarX_DIR/MiraculiXplusplus/cmdall.sh"
alias gitall="cmdall git"
alias makeall="cmdall \"cd build;make\""
alias delete_and_remake_all="cmdall \"rm -rf build;mkdir build;cd build;cmake ..\";makeall;makeall"
alias memimport="$ArmarX_DIR/MemoryX/build/bin/mongoimport.sh $ArmarX_DIR/Armar3/data/Armar3/dbexport/memdb"
alias memexport="$ArmarX_DIR/MemoryX/build/bin/mongoexport.sh memdb $ArmarX_DIR/Armar3/data/Armar3/dbexport/memdb"

alias qtcreator="qtcreator &"

#remove all local changes to fix "Your local changes to the following files would be overwritten by merge"
alias git_stash_and_drop="git stash save --keep-index;git stash drop"
#remove all local changes and reset to head
alias git_reset_clean="git reset --hard; git clean -fd"

alias inp="$ArmarX_DIR/MiraculiXplusplus/inproject.sh"
alias mk="inp \"cd build;make\""
alias cmk="inp \"cd build;cmake ..\""
alias sc=". $ArmarX_DIR/MiraculiXplusplus/scenario.sh"
alias p=". $ArmarX_DIR/MiraculiXplusplus/project.sh"
alias h="p"

alias untargz="tar -zxvf"

alias armarx_tests_disable="cmdall \"cd build;cmake -DARMARX_BUILD_TESTS=OFF ..\""
alias armarx_tests_enable="cmdall \"cd build;cmake -DARMARX_BUILD_TESTS=ON ..\""

alias armarx_versioncheck_disable="cmdall \"cd build; cmake -DARMARX_ENABLE_DEPENDENCY_VERSION_CHECK=OFF ..\""
alias armarx_versioncheck_enable="cmdall \"cd build; cmake -DARMARX_ENABLE_DEPENDENCY_VERSION_CHECK=ON ..\""


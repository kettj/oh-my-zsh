source ~/.zsh_env

export PYTHONPATH=/home/jannik/jenkins_DA/cob_jenkins_tools:$PYTHONPATH

if [ -f /opt/ros/fuerte/setup.zsh ]; then
    source /opt/ros/fuerte/setup.zsh
fi
export ROS_HOME=/home/jannik/git/ros
export ROS_WORKSPACE=/home/jannik/git
#export ROS_PACKAGE_PATH=/home/jannik/git/care-o-bot:/home/jannik/git/ros:$ROS_PACKAGE_PATH

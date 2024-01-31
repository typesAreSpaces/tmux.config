#!/bin/zsh

gruvboxTheme(){
  BG1="colour237"
  FG1="colour223"
  FG_LEFT="colour7"
  BG_LEFT="colour241"
  ALERT="colour45"
  FG_RIGHT1="colour246"
  FG_RIGHT2="colour109"
  FG_RIGHT3="colour248"
  BG_LINE="colour239"
  FG_CURRENT="colour214"
  FG_ACTIVITY="colour167"
  FG_BELL="colour235"
}

nordTheme(){
  BG1="brightblack"
  FG1="black"
  FG_LEFT="brightcyan"
  BG_LEFT="blue"
  ALERT="colour45"
  FG_RIGHT1="brightwhite"
  FG_RIGHT2="brightwhite"
  FG_RIGHT3="brightwhite"
  BG_LINE="blue"
  FG_CURRENT="cyan"
  FG_ACTIVITY="colour167"
  FG_BELL="colour235"
}

tokyoTheme(){
  BG1="#1F2335"
  FG1="brightwhite"
  FG_LEFT="black"
  BG_LEFT="green"
  ALERT="blue"
  FG_RIGHT1="brightwhite"
  FG_RIGHT2="brightblue"
  FG_RIGHT3="brightwhite"
  BG_LINE="#1F2335"
  FG_CURRENT="brightwhite"
  FG_ACTIVITY="colour167"
  FG_BELL="colour235"
}

doomOneTheme(){
  BG1="#282c34"
  FG1="white"
  FG_LEFT="#1b2229"
  BG_LEFT="#bbc2cf"
  ALERT="#ff6c6b"
  FG_RIGHT1="#bbc2cf"
  FG_RIGHT2="#51afef"
  FG_RIGHT3="#bbc2cf"
  BG_LINE="#424858"
  FG_CURRENT="#51afef"
  FG_ACTIVITY="#9f97dd"
  FG_BELL="white"
}

setColor(){
  gsed -i "s/BG1/$BG1/g" $TMUX_PATH/$1
  gsed -i "s/BG1/$BG1/g" $TMUX_PATH/$1
  gsed -i "s/FG1/$FG1/g" $TMUX_PATH/$1
  gsed -i "s/FG_LEFT/$FG_LEFT/g" $TMUX_PATH/$1
  gsed -i "s/BG_LEFT/$BG_LEFT/g" $TMUX_PATH/$1
  gsed -i "s/ALERT/$ALERT/g" $TMUX_PATH/$1
  gsed -i "s/FG_RIGHT1/$FG_RIGHT1/g" $TMUX_PATH/$1
  gsed -i "s/FG_RIGHT2/$FG_RIGHT2/g" $TMUX_PATH/$1
  gsed -i "s/FG_RIGHT3/$FG_RIGHT3/g" $TMUX_PATH/$1
  gsed -i "s/BG_LINE/$BG_LINE/g" $TMUX_PATH/$1
  gsed -i "s/FG_CURRENT/$FG_CURRENT/g" $TMUX_PATH/$1
  gsed -i "s/FG_ACTIVITY/$FG_ACTIVITY/g" $TMUX_PATH/$1
  gsed -i "s/FG_BELL/$FG_BELL/g" $TMUX_PATH/$1
}

setTheme(){
  TMUX_PATH=$HOME/.config/tmux
  cp $TMUX_PATH/tmux.meta.conf $TMUX_PATH/tmux.conf
  cp $TMUX_PATH/scripts/right_status_meta.sh $TMUX_PATH/scripts/right_status.sh 
  setColor tmux.conf
  setColor /scripts/right_status.sh 
  tmux source-file $TMUX_PATH/tmux.conf
}

case $1 in
  "gruvbox")
    gruvboxTheme
    ;;
  "nord")
    nordTheme
    ;;
  "tokyo")
    tokyoTheme
    ;;
  "doomone")
    doomOneTheme
    ;;
esac

setTheme

#!/bin/bash

if [ "$PS1" = "$ " ]
then
    # プロンプトを元に戻す
    PS1=$BEFORE_PS1
else
    BEFORE_PS1=$PS1
    PS1="$ "
    
    # 実行後に設定が消えてしまうので変数をexportして今のシェルに変数をexportしておく
    export BEFORE_PS1
fi


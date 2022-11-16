#!/bin/bash -x

function myFun(){
    case $ch in
        1 )
            read -p "Enter the degF: " F
            if(( $F>32 && $F<212 ))
            then
                C=$(echo | awk '{print '$(( $(($F-32)) *5/9))'}')
                echo degC: $C
            else
                echo Invalid input
            fi
        ;;
        2 )
            read -p "Enter the degF: " C
                    if(( $C>0 && $C<100 ))
            then
                F=$(echo | awk '{print '$(( $(($C*9/5)) +32))'}')
                        echo degF: $F
            else
                            echo Invalid input
                    fi
        ;;
        * )
            echo Wrong input
        ;;
    esac
}
echo 1.degF to degC
echo 2.degC to degF

read -p "Enter the choice: " ch
myFun

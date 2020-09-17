m1(){
  dialog --msgbox "$(ps -aux)" 0 0
  dialog --msgbox "Voltar ao menu" 0 0
}

m2(){
  pr=$(dialog --stdout --inputbox "Digite o processo" 0 0)
   dialog --msgbox "$(pidof $pr)" 0 0
  dialog --msgbox "Voltar ao menu" 0 0
}

m3(){
    p=$(dialog --stdout --inputbox "Digite o nome do processo" 0 0)
  dialog --msgbox "$(killall -STOP $p)" 0 0
  dialog --msgbox "Voltar ao menu" 0 0

}

m4(){
    pr=$(dialgo --stdout --inputbox "Digite o PID" 0 0)
  dialog --msgbox "$(kill -STOP $pr)" 0 0
  dialog --msgbox "Voltar ao menu" 0 0
}
m5(){
    c=$(dialog --stdout --inputbox "Digite o nome do processo" 0 0)
  dialog --msgbox "$(killall -CONT $c)" 0 0
  dialog --msgbox "Voltar ao menu" 0 0
}
m6(){
    c1=$(dialog --stdout --inputbox "Digite o PID" 0 0)
  dialog --msgbox "$(killall -CONT $c1)" 0 0
  dialog --msgbox "Voltar ao menu" 0 0
}
m7(){
    t=$(dialog --stdout --inputbox "Digite o nome do processo" 0 0)
  dialog --msgbox "$(killall $t)" 0 0
  dialog --msgbox "Voltar ao menu" 0 0
}
m8(){
    t1=$(dialog --stdout --inputbox "Digite o PID" 0 0)
  dialog --msgbox "$(kill $t1)" 0 0
  dialog --msgbox "Voltar ao menu" 0 0
}
m9(){
    m=$(dialog --stdout --inputbox "Digite o nome do processo" 0 0)
  dialog --msgbox "$(killall -KILL $m)" 0 0
  dialog --msgbox "Voltar ao menu" 0 0
}
m10(){
    m1=$(dialog --stdout --inputbox "Digite o PID" 0 0)
  dialog --msgbox "$(kill -KILL $m1)" 0 0
  dialog --msgbox "Voltar ao menu" 0 0
}
m11(){
    pr=$(dialog --stdout --inputbox "Digite o nome do proceeso" 0 0)
    pr1=$(dialog --stdout --inputbox "Digite a prioridade" 0 0)
  dialog --msgbox "$(nice $pr $pr1)" 0 0 &
  dialog --msgbox "Voltar ao menu" 0 0
}
m12(){
    mp=$(dialog --stdout --inputbox "Digite o PID" 0 0)
    mp1=$(dialog --stdout --inputbox "Digite a nova prioridade do processo" 0 0)
  renice $mp1 $mp
  dialog --msgbox "Voltar ao menu" 0 0
}
m13(){
    t1=$(dialog --stdout --inputbox "Digite o PID" 0 0)
  dialog --msgbox "$(pstree $t1)" 0 0
  dialog --msgbox "Voltar ao menu" 0 0
}
m14(){
    no=$(dialog --stdout --inputbox "Digite o nome do usuário" 0 0)
  dialog --msgbox "$(pstree $no)" 0 0
  dialog --msgbox "Voltr ao menu" 0 0
}
m15(){
    xkill
}
m16(){
    nomepro=$(dialog --stdout --inputbox "Digite o nome do programa" 0 0)
  $nomepro &
  dialog -msgbox "Voltar ao menu" 0 0
}
m17(){
    menu1=$(dialog --stdout --menu "Comando ps" 0 0 0 1 "USER" 2 "PID" 3 "%CPU" 4 "%MEM" 5 "VSV" 6 "RSS" 7 "TTY" 8 "STAT" 9 "START" 10 "TIME" 11 "COMMAND")
  	m101(){
	dialog --msgbox "$(ps -eo user)" 0 0
  }
	m102(){
	dialog --msgbox "$(ps -eo pid)" 0 0
  }

	m103(){
	dialog --msgbox "$(ps -eo %cpu)" 0 0
  }

	m104(){
	dialog --msgbox "$(ps -eo %mem)" 0 0
}

	m104(){
	dialog --msgbox "$(ps -eo vsz)" 0 0
  }

	m105(){
	dialog --msgbox "$(ps -eo rss)" 0 0
  }

	m106(){
	dialog --msgbox "$(ps -eo tty)" 0 0
}

	m107(){
	dialog --msgbox "$(ps -eo stat)" 0 0
  }

	m108(){
	dialog --msgbox "$(ps -eo start)" 0 0
  }

	m109(){
	dialog --msgbox "$(ps -eo time)" 0 0
  }

	m110(){
	dialog --msgbox "$(ps -eo command)" 0 0
  }
	case $menu1 in

1) m101;;
2) m102;;
3) m103;;
4) m104;;
5) m104;;
6) m105;;
7) m106;;
8) m107;;
9) m108;;
10) m109;;
11) m110;;

esac
}
m18(){
    o=$(dialog --stdout --inputbox "Digite o caminho: " 0 0)
    t=$(dialog --stdout --inputbox "Digite uma tarefa a ser feita: " 0 0)
    h=$(dialog --stdout --timebox "Escolha a hora para a realização da tarefa: " 0 0)
	if [ date == h] 	
	at -f $o/$t $h
	then
			
	dialog --msgbox "voltar ao menu" 0 0
	
	fi
	}


mn=0
while true 
do

mn=$(dialog --stdout --help-button  --menu  "Gerenciador de Processos" 0 0 0 1 "Mostrar os processos em execução na tela" 2 "Mostra o PID de um processo informado pelo usuário" 3 "Parar a execução de um processo pelo nome" 4 "Parar a execução de um processo pelo PID" 5 "Continuar a execução de um processo pelo nome" 6 "Continuar a execução de um processo pelo PID" 7 "Terminar a execução de um processo pelo nome" 8 "Terminar a execução pelo PID" 9 "Matar um processo pelo nome" 10 "Matar um processo pelo PID" 11 "Criar um processo com uma prioridade específica" 12 "Mudar a prioridade de um processo já em execução" 13 "Mostrar a árvore criada por um processo através do seu PID" 14 "Mostrar a árvore de processos de um determinado usuário" 15 "Matar um programa em execução usando o cursor do mouse" 16 "Executar um processo informado pelo usuário em segundo plano" 17 "Organizar a saída do comando ps baseado em um dos parâmetros possíveis: USER, PID, %CPU, %MEM, VSZ, RSS, TTY, STAT, START, TIME, COMMAND" 18 "Agendar a execução de uma tarefa no sistema" 19 "Sair")
if [ $? == 2 ]
then
  dialog --msgbox "MATHEUS ,  CARLOS EDUARDO, MARCOS" 0 0 
else

case $mn in
1) m1;;
2) m2;;
3) m3;;
4) m4;;
5) m5;;
6) m6;;
7) m7;;
8) m8;;
9) m9;;
10) m10;;
11) m11;;
12) m12;;
13) m13;;
14) m14;;
15) m15;;
16) m16;;
17) m17;;
18) m18;;
19) exit;;

esac
fi
done

extends Node2D

var numero = 0 #Acento removido (´)
var lista = [] #"var" adicionado para declarar a variável lista
var nome #Declaração da variável nome
var cont = 0 #"var" adicionado para declarar a variável cont, espaço em branco adicionado e transformação em variável global

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = float($numero.text) #Remoção do acento (´), adição do $ e mudança de int para float

	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero += i #Alteração da letra maiúscula N em minúscula
		lista.append(numero) #Alteração da letra maiúscula N em minúscula
		$Label.text = String(numero) #Indentação corrigida


func _on_Button2_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	nome = str($nome.text) #alteração da ordem da escrita para correto funcionamento e locomoção para dentro da função certa
	for i in range (len(lista)):
		#"var" adicionado para declarar a variável cont e espaço em branco adicionado
		if(int(lista[i]) % 2 != 0): #espaço em branco adicionado, mudança de == 1 para !=0 e tranformando o conteúdo da lista em inteiro
			cont+=1
			
	if(cont != 0): #coloquei essa condição fora do loop para que o nome fosse mostrado apenas uma vez e para isso precisei colocar o contador como variável global
		nome = nome+"baldo"
		$Label2.text = String(nome) #tranformação do conteúdo em string

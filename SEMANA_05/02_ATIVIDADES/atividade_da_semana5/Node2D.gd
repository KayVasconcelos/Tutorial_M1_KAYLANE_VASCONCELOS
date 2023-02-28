extends Node2D

var numero = 0 #Declaração da variável numero que irá guardar um número inserido pelo usuário #Acento removido (´) 
var lista = [] #Declaração da variável lista que armazena uma lista vazia que futuramente será preenchida #"var" adicionado para declarar a variável lista 
var nome #Declaração da variável nome que guardará um nome inserido pelo usuário
var cont = 0 #Declaração da variável cont que será usado como um contador de números impares #"var" adicionado para declarar a variável cont, espaço em branco adicionado e transformação em variável global

func _on_Button_pressed():
	#Coletando o número inseridos pelo usuário
	numero = float($numero.text) #Remoção do acento (´), adição do $ e mudança de int para float

	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero += i #Alteração da letra maiúscula N em minúscula
		lista.append(numero) #Alteração da letra maiúscula N em minúscula #Preenchimento da lista
		$Label.text = String(numero) #Indentação corrigida


func _on_Button2_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista

	#Coletando o nome inserido pelo usuário
	nome = str($nome.text) #alteração da ordem da escrita para correto funcionamento e locomoção para dentro da função certa
	
	#Se houver algum número o contador irá somar +1
	for i in range (len(lista)):
		if(int(lista[i]) % 2 != 0): #espaço em branco adicionado, mudança de == 1 para !=0 e tranformando o conteúdo da lista em inteiro
			cont+=1
			
	#Se o contador de números ímpares for diferente de 0 o nome+baldo será mostrado	na tela do usuário	
	if(cont != 0): #Condição deslocada para fora do loop para que o nome fosse mostrado apenas uma vez e para isso precisei colocar o contador como variável global
		nome = nome+"baldo"
		$Label2.text = String(nome) #tranformação do conteúdo em string

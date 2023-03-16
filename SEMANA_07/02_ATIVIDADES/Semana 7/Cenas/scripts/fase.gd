extends Node2D

#Declaração da variável que guarda um número gerado aleatoriamente
var numeroAleatorio = RandomNumberGenerator.new()
#Declaração da variável que guarda o número correspondendente á escolha do usuário
var escolha
#Declaração de variável que armazenará a pontuação do usuário
var pt1 = 0
#Declaração de variável que armazenará a pontuação da máquina
var pt2 = 0

#Função usada para esconder o resultado no início do jogo
func _ready():
	$pontuacao.text=str(pt1," / ",pt2)
	$Cara.hide()
	$Coroa.hide()

#Função que muda a tela da fase para tela inicial quando o botão da seta é pressionado
func _on_Botao_seta_pressed():
	get_tree().change_scene("res://Cenas/Tela_Inicial.tscn")

#Função que atribui o valor 1 á variável escolha quando o botão cara é pressionado
func _on_Botao_cara_pressed():
	escolha=1

#Função que atribui o valor 0 á variável escolha quando o botão coroa é pressionado
func _on_Botao_coroa_pressed():
	escolha=0

#Função que sorteia o número correspondente ao lado da moeda e mostra o resultado
func _on_Sortear_pressed():
	
	#sempre gera numero aleatorio para não ser repetido
	numeroAleatorio.randomize()
	#Declaração da variável que armazena o número sorteado entre 0 e 1 
	var resultado = numeroAleatorio.randi_range(0,1) 
	
	#Condição que esconde o ícone da coroa e mostra o da cara se o resultado for igual à 1
	if resultado == 1:
		$Coroa.hide()
		$Cara.show()
	
	#Condição que esconde o ícone da cara e mostra o da coroa se o resultado for igual à 0
	if resultado == 0:
		$Cara.hide()
		$Coroa.show()
	
	#Condição que mostra a frase de resultado "VOCE GANHOU" se o resultado for igual à escolha	
	if resultado == escolha:
		$Resultado.text="VOCE GANHOU"
		pt1+=1
	
	#Condição que mostra a frase de resultado "VOCE PERDEU" se o resultado for diferente da escolha	
	if resultado!=escolha:
		$Resultado.text="VOCE PERDEU"
		pt2+=1
		
	$pontuacao.text=str(pt1," / ",pt2)	
	
	#Condições que esperam 0.5s e trocam para a respectiva cena final caso o usuário ganhe ou perca
	if pt1==3:
		yield(get_tree().create_timer(0.5), "timeout")
		get_tree().change_scene("res://Cenas/Venceu.tscn")
	
	if pt2==3:
		yield(get_tree().create_timer(0.5), "timeout")
		get_tree().change_scene("res://Cenas/Game_over.tscn")

extends Node2D

var nome
var num 
var mais

# Crie uma lista preenchida e mostre na tela
func _process(_delta):
	var l = ["1 - python", "2 - javascript", "3 - C"]
	
	$Label.text=str(l[0])+"\n"+str(l[1])+"\n"+str(l[2])
	
# Crie uma função que retorne um texto na tela
	nome = str($nome.text)
	$Label4.text="OLÁ, "+nome+"\n\nDigíte abaixo o número\nque corresponde á\nlinguagem de programação \nque você mais gosta"
	
	
# Crie uma função que reçeba um valor inserido pelo usuário e retorne na tela.
	num = float($num.text)
	
	if num == 1:
		$Label5.text=str(num)+" -> "+str(l[0])
		
	elif num == 2:
		$Label5.text=str(num)+" -> "+str(l[1])
		
	elif num == 3:
		$Label5.text=str(num)+" -> "+str(l[2])
# Crie uma lista vázia, preencha com os dados enviados pelo usuário e mostre na tela

	mais = str($mais.text)

	var o = []
	o.append(mais)
	
	$Label2.text=str(o[0])

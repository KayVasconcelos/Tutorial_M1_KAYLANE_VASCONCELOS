extends Node2D

#Função que muda a tela Inicial para tela da fase quando o botão de play é pressionado
func _on_Botao_play_pressed():
	get_tree().change_scene("res://Cenas/Fase.tscn")

#Função que muda a tela Inicial para tela de explicação quando o botão de explicação é pressionado
func _on_Botao_explicacao_pressed():
	get_tree().change_scene("res://Cenas/Explicacao.tscn")

extends Node2D

#Função que muda a tela de explicação para tela inicial quando o botão da seta é pressionado
func _on_Botao_seta_pressed():
	get_tree().change_scene("res://Cenas/Tela_Inicial.tscn")

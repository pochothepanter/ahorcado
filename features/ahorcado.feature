Feature: Pagina del juego

Scenario: Mostrar pagina del juego
	Given inicio del juego
	Then debo ver "Ingresar letra"

Scenario: Ingresar Letra
	Given inicio del juego
	When ingresa letra "a"
	Then debo ver "correcta"

Scenario: Ingresar Letra
	Given inicio del juego
	When ingresa letra "j"
	Then debo ver "incorrecta"


Algoritmo moneda
	//Variables  definidas//
	Definir Moneda_fuente, moneda_destino Como Caracter
	Definir cantidad, tasaconversion Como Real
	
	//datos de usuario//
	Escribir "Introducir la moneda fuente (USD, EUR, GBP, AUD) En mayúsculas"
	Leer Moneda_fuente
	Escribir "Ingrese la moneda de destino (USD, EUR, GBP, AUD En mayúsculas)"
	Leer moneda_destino
	
	Si Moneda_fuente="USD" Entonces
		Escribir "ingrese la cantidad a convertir en USD"
		Leer cantidad
	SiNo
		Si Moneda_fuente="EUR" Entonces
			Escribir "ingrese la cantidad a convertir EUR"
			Leer cantidad
		SiNo
			Si Moneda_fuente="GBP" Entonces
				Escribir "ingrese la cantidad a convertir GBP"
				Leer cantidad 
			SiNo
				Si Moneda_fuente="AUD" Entonces
					Escribir "ingrese la cantidad a convertir AUD"
					Leer cantidad 
				FinSi
				
			Fin Si
		Fin Si
	Fin Si
	
	//Determinar la tasa de conversión USD//
	Si moneda_fuente="USD" Entonces
		Si moneda_destino="USD" Entonces
			tasadeconversion<-1 
		SiNo
			Si moneda_destino="EUR" Entonces
				tasadeconversion<-0.93
			SiNo
				Si moneda_destino="GBP" Entonces
					tasadeconversion<-0.79
				SiNo
					si moneda_destino="AUD" Entonces
						tasadeconversion<-1.50
					Fin Si
				FinSi
			Fin Si
		Fin Si
	Fin Si
	
	//Determinar la tasa de conversión EUR//
	Si moneda_fuente="EUR" Entonces
		Si moneda_destino="USD" Entonces
			tasadeconversion<-1.07
		SiNo
			Si moneda_destino="EUR" Entonces
				tasadeconversion<-1
			SiNo
				Si moneda_destino="GBP" Entonces
					tasadeconversion<-0.85
				SiNo
					si moneda_destino="AUD" Entonces
						tasadeconversion<-1.61
					Fin Si
				FinSi
			Fin Si
		Fin Si
	Fin Si
	
	//Determinar la tasa de conversión GBP//
	Si moneda_fuente="GBP" Entonces
		Si moneda_destino="USD" Entonces
			tasadeconversion<-1.27
		SiNo
			Si moneda_destino="EUR" Entonces
				tasadeconversion<-1.18
			SiNo
				Si moneda_destino="GBP" Entonces
					tasadeconversion<-1
				SiNo
					si moneda_destino="AUD" Entonces
						tasadeconversion<-1.90
					Fin Si
				FinSi
			Fin Si
		Fin Si
	Fin Si
	
	//Determinar la tasa de conversión AUD//
	Si moneda_fuente="AUD" Entonces
		Si moneda_destino="USD" Entonces
			tasadeconversion<-0.67
		SiNo
			Si moneda_destino="EUR" Entonces
				tasadeconversion<-0.62
			SiNo
				Si moneda_destino="GBP" Entonces
					tasadeconversion<-0.53
				SiNo
					si moneda_destino="AUD" Entonces
						tasadeconversion<-1
					Fin Si
				FinSi
			Fin Si
		Fin Si
	Fin Si
	
	//Realizar la conversión//
	Escribir "La cantidad en", moneda_destino," es ",cantidad*tasadeconversion
	
FinAlgoritmo

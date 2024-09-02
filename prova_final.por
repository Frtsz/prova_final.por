programa
{
	
	funcao inicio()
	{
		cadeia cpf="0", maiorCPF="0"
		real carro, diarias, pagamento, valor=0, lucro=0, quantPagamentos=0, maiorPagamento=0
		inteiro kwid=0, argo=0, jeep=0, cronos=0, pix=0, cartao=0, cheque=0

		escreva("*===========> DIÁRIA DE CARROS <===========*\n")
		escreva("|__________________________________________|\n")
		escreva("| CARRO                       VALOR DIÁRIA |\n")
		escreva("| 1- Renault Kwid 1.0              R$99,38 |\n")
		escreva("| 2- Fiat Argo 1.0                R$130,48 |\n")
		escreva("| 3- Jeep Renegade 1.3            R$267,98 |\n")
		escreva("| 4- Fiat Cronos 1.3              R$189,98 |\n")
		escreva("|                                          |\n")
		escreva("| MÉTODOS DE PAGAMENTO                     |\n")
		escreva("| 1-PIX                                    |\n")
		escreva("| 1-Cartao                                 |\n")
		escreva("| 1-Cheque                                 |\n")
		escreva("|__________________________________________|\n\n")

		escreva("Digite o seu CPF: ")
		leia(cpf)
		
		para(inteiro cont=0; cpf!="0"; cont++)
		{
			escreva("Carro escolhido: ")
			leia(carro)
			escreva("Quantas diárias: ")
			leia(diarias)

			se(carro==1)
			{
				valor=99.38*diarias
				kwid++
			}
			senao se(carro==2)
			{
				valor=130.48*diarias
				argo++
			}
			senao se(carro==3)
			{
				valor=267.98*diarias
				jeep++
			}
			senao se(carro==4)
			{
				valor=189.98*diarias
				cronos++
			}

			escreva("TOTAL: R$", valor)
			escreva("\nForma de pagamento: ")
			leia(pagamento)
			
			se(pagamento==1)
			{
				pix++
			}
			senao se(pagamento==2)
			{
				cartao++
			}
			senao se(pagamento==3)
			{
				cheque++
			}

			se(valor>maiorPagamento)
			{
				maiorPagamento=valor
				maiorCPF=cpf
			}
			senao se(valor==maiorPagamento)
			{
				maiorCPF=maiorCPF+"\n"+cpf
			}

			lucro=lucro+valor
			quantPagamentos++
			
			escreva("\nDigite o seu CPF: ")
			leia(cpf)
		}
		
		escreva("\nLucro total obtido: R$", lucro)
		
		se(kwid>argo e kwid>jeep e kwid>cronos)
		{
			escreva("\nCarro mais alugado: Renault Kwid 1.0")
		}
		senao se(argo>kwid e argo>jeep e argo>cronos)
		{
			escreva("\nCarro mais alugado: Fiat Argo 1.0")
		}
		senao se(jeep>kwid e jeep>argo e jeep>cronos)
		{
			escreva("\nCarro mais alugado: Jeep Renegade 1.3")
		}
		senao se(cronos>kwid e cronos>argo e cronos>jeep)
		{
			escreva("\nCarro mais alugado: Fiat Cronos 1.3")
		}

		se(pix>cartao e pix>cheque)
		{
			escreva("\nForma de pagamento mais utilizada: PIX, com ", (pix*100/quantPagamentos),"% dos usos")
		}
		senao se(cartao>pix e cartao>cheque)
		{
			escreva("\nForma de pagamento mais utilizada: Cartão, com ", (cartao*100/quantPagamentos),"% dos usos")
		}
		senao se(cheque>pix e cheque>cartao)
		{
			escreva("\nForma de pagamento mais utilizada: Cheque, com ", (cheque*100/quantPagamentos),"% dos usos")
		}
		senao se(cheque==pix)
		{
			escreva("\nForma de pagamento mais utilizada: pix, com ", (pix*100/quantPagamentos),"% dos usos")
		}
		senao se(cheque==cartao)
		{
			escreva("\nForma de pagamento mais utilizada: cartao, com ", (cartao*100/quantPagamentos),"% dos usos")
		}
		senao se(cartao==pix)
		{
			escreva("\nForma de pagamento mais utilizada: pix, com ", (pix*100/quantPagamentos),"% dos usos")
		}

		escreva("\nAluguel mais caro realizado por ", maiorCPF, ": R$", maiorPagamento)
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3374; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
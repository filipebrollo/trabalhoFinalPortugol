programa
{
	inclua biblioteca Util
	inteiro hotel[8][15], andar, quarto, quartos_ocupados = 0, quartos_livres = 0 
	
	funcao inicio()
	{
		para(inteiro linha=0; linha < 8; linha++){
			para(inteiro coluna=0; coluna < 15; coluna++){
				hotel[linha][coluna] = 0
			}
		}
	
		leitura()
		
	}
	
	funcao leitura(){
		faca{
		escreva("\nCheck in Hotel:\n")
		escreva("\nFaça a reserva do quarto:")
		escreva("\nDigite o número do andar(1-8) ou (número negativo) para sair: ")
		leia(andar)
		se(andar <= 0){
			pare
		}

		escreva("\nDigite o número do quarto(1-15):")
		leia(quarto)
		
		verificar()
		
		}enquanto(andar >= 0)
		encerrar()
		
	}

	funcao verificar(){
         logico valido = falso

      enquanto(valido == falso){
        se(andar > 8){
            escreva("\nAndar inválido! Digite novamente.\n")
            escreva("Digite o número do andar (1-8): ")
            leia(andar)
        }
        senao se(quarto < 1 ou quarto > 15){
            escreva("\nQuarto inválido! Digite novamente.\n")
            escreva("Digite o número do quarto (1-15): ")
            leia(quarto)
        }
        
      senao{
            valido = verdadeiro
        }
    }

    se(hotel[andar-1][quarto-1] == 0){
        escreva("\nQuarto disponível: ", andar, "-", quarto, "\n")
        reservar()
    }
    senao{
        escreva("\nQuarto já está ocupado: ", andar, "-", quarto, "\n")
    	}
	}

	funcao reservar(){

		hotel[andar-1][quarto-1] = 1
      	escreva("\nQuarto reservado!", "\n")
        
          mapa()
        
	}

	funcao encerrar(){
		para(inteiro linha=0; linha < 8; linha++){
			para(inteiro coluna=0; coluna < 15; coluna++){
				se(hotel[linha][coluna] == 0){
					quartos_livres ++
				}

				senao{
					quartos_ocupados ++	
				}
			}
		}

		escreva("\nQuartos Livres: ", quartos_livres)
		escreva("\nQuartos Ocupados: ", quartos_ocupados,"\n")
		mapa()
		
	}

	funcao mapa(){
        para(inteiro linha=0; linha < 8; linha++){
            escreva("Andar ", linha+1, ": ")
            para(inteiro coluna = 0; coluna < 15; coluna++){ 
                escreva(hotel[linha][coluna], " ")
            }
            escreva("\n")
        }
      
         Util.aguarde(5000)
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 602; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
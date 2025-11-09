programa
{
	
	caracter matriz[3][3]
	inteiro linha, coluna,jogador = 1,i,j

	funcao preencherMatriz(){
		para(i=0;i<3;i++){
			para( j=0; j<3;j++){
				matriz[i][j]= ' '
			}
		}
	}
	funcao imprimirMatriz(){
		inteiro i,j
		escreva("\n|0| |1| |2|\n\n")
			para( i=0;i<3;i++){
				para( j=0; j<3;j++){
					escreva(matriz[i][j])
					se(j<2){
					escreva(" | ")
					}
					se(j==2){
						escreva("  |",i,"|")
					}
				}
				se(i<2){
					escreva("\n----------")
				}
				escreva("\n")
			}
	}
	funcao lerCoordenadas(){
		faca{	
			faca{
			escreva("\nDigite a posição que deseja jogar: ")
			leia(linha,coluna)
			}enquanto ( linha < 0 ou linha > 2 ou coluna < 0 ou coluna > 2)
		}enquanto(matriz[linha][coluna] != ' ')
	}
	funcao salvarJogadas(inteiro jogadorr){
		se(jogador==1){
			matriz[linha][coluna] = 'X'
			jogador++
		}senao{
			matriz[linha][coluna]= 'O'
			jogador--
		}
	}
	funcao inteiro verifGanhadorL(caracter g){
		para(i=0;i<3;i++){
			se(matriz[i][0] == g e matriz[i][1] == g e matriz[i][2] == g){
				retorne +1
			}
		}retorne 0
	}
	funcao inteiro verifGanhadorC(caracter g){
		para(j=0;j<3;j++){
			se(matriz[0][j] == g e matriz[1][j] == g e matriz[2][j] == g){
				retorne +1
			}
		}retorne 0
	}
	funcao inteiro verifGanhadorD(caracter g){
		se(matriz[0][0] == g e matriz[1][1] == g e matriz[2][2] == g){
			retorne +1
		}retorne 0
	}
	funcao inteiro verifGanhadorDD(caracter g){
		se(matriz[0][2] == g e matriz[1][1] == g e matriz[2][0] == g){
			retorne +1
		}retorne 0
	}
	
	funcao inicio()
	{
		inteiro jogadas = 0, menu,placarJogador1 = 0, placarJogador2 = 0
		
		
		escreva("Digite 1 para jogar\nDigite 2 para ver o placar\nDigite 3 para sair\n")
		leia(menu)
		
		faca{
			se(menu == 1){
				preencherMatriz()
				
				faca{
					//imprimir a matriz
					imprimirMatriz()
			
					//lercoordenadas
					lerCoordenadas()
			
					//salvar coordenadas
					salvarJogadas(jogador)
					jogadas++
			
					//verificar ganhador
					placarJogador1 = verifGanhadorL('X')
					placarJogador2 = verifGanhadorL('O')
					
					//verificar por colunas
					placarJogador1 = verifGanhadorC('X')
					placarJogador2 = verifGanhadorC('O')
			
					//verificarpordiagonal
					placarJogador1 = verifGanhadorD('X')
					placarJogador2 = verifGanhadorD('O')
			
					//diagSecundaria
					placarJogador1 = verifGanhadorDD('X')
					placarJogador2 = verifGanhadorDD('O')

					
			}enquanto(placarJogador1 == 0 e placarJogador2 == 0 e jogadas < 9)
				
					//imprimir a matriz
					imprimirMatriz()
					se(placarJogador1 == 1){
						escreva("\nParabens jogador 1 ganhou!")
						placarJogador1++
					}senao se(placarJogador2 == 1){
						escreva("\nParabens jogador 2 ganhou!")
						placarJogador2++
					}
					escreva("\nDigite 1 para jogar\nDigite 2 para ver o placar\nDigite 3 para sair\n")
					leia(menu)
					
			}senao se(menu == 2){
				escreva("Jogador1 ganhou: ",placarJogador1,"\nJogador2 ganhou: ",placarJogador2,"\n")
				escreva("\nDigite 1 para jogar\nDigite 2 para ver o placar\nDigite 3 para sair\n")
				leia(menu)	
			}
		}enquanto(menu == 1 ou menu == 2)
		
	}
	
	
}
			
		 


		
			
		
			
		
		
		



	










		
	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1964; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
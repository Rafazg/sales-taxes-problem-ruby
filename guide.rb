#! PROBLEMA: IMPOSTOS SOBRE VENDAS

#? O imposto básico sobre vendas é aplicável a uma alíquota de 10% sobre todos os bens, exceto livros, alimentos e produtos médicos que estão isentos. 
#? O imposto de importação é um imposto adicional sobre vendas aplicável a todos os produtos importados à alíquota de 5%, sem isenções.

#? Quando compro itens recebo um recibo que lista o nome de todos os itens e seu preço (incluindo impostos),
#? finalizando com o custo total dos itens e o valor total dos impostos sobre vendas pagos. As regras de arredondamento para o imposto sobre vendas são que,
#? para uma alíquota de imposto de n%, um preço de prateleira de p contém (np/100 arredondado para o 0,05 mais próximo) o valor do imposto sobre vendas.

#? Escreva um aplicativo que imprima os detalhes do recibo desses carrinhos de compras

#~ O imposto aplicável de 10% sobre todos os bens, {exceto livros, alimentos e produtos médicos}

#* ENTRADA:

#^ Entrada 1: {1 livro a 12,49}  
#^             {1 CD de música a 14,99}
#^              {1 barra de chocolate a 0,85}


#^ Entrada 2: {1 caixa de chocolates importados a 10,00} 
#^             {1 frasco de perfume importado a 47,50}


#^ Entrada 3: {1 frasco de perfume importado a 27,99}
#^               {1 frasco de perfume a 18,99}
#^                {1 pacote de comprimidos para dor de cabeça a 9,75}
#^                 {1 caixa de chocolates importados a 11,25}

#* SAÍDA:

#^ Resultado 1: 1 livro: 12,49 1 CD de música: 16,49 1 barra de chocolate: 0,85 Impostos sobre vendas: 1,50 Total: 29,83

#^ Resultado 2: 1 caixa de chocolates importados: 10,50 1 frasco de perfume importado: 54,65 Impostos sobre vendas: 7,65 Total: 65,15

#^ Resultado 3: 1 frasco de perfume importado: 32,19 1 frasco de perfume: 20,89 1 pacote de comprimidos para dor de cabeça: 9,75 1 caixa de chocolates importados: 11,85 Impostos sobre vendas: 6,70 Total: 74,68

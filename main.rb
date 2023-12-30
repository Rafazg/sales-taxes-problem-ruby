class Item
  attr_accessor :nome, :preco, :importado, :isencao

  def initialize(nome, preco, importado = false, isencao = false)
    @nome = nome
    @preco = preco
    @importado = importado
    @isencao = isencao
  end
end


# Função para calcular impostos sobre vendas
def calcular_impostos(item)

    #Aliquota de imposto básico
    taxa_basica = 0.10

    #Imposto de importados 
    taxa_importacao = item.importado ? 0.5 : 0.0


    if !item.isencao 
        imposto = ((item.preco * (taxa_importacao)) / 0.05).round* 0.05
    else
        imposto = 0.0
    end

    imposto
end

# Função para imprimir o recibo
def imprimir_recibo(carrinho)
    total_compra = 0.0
    total_impostos = 0.0

    carrinho.each do |item|
      imposto = calcular_impostos(item)
      preco_total = item.preco + imposto

      puts "1 #{item.nome}: #{'%.2f' % preco_total}"
      total_compra += preco_total
      total_impostos += imposto
    end

    puts "Impostos sobre vendas: #{'%.2f' % total_impostos}"
    puts "Total: #{'%.2f' % total_compra}\n"
end


carrinho1 = [Item.new("livro", 12.49, true),
             Item.new("CD de música", 14.99),
             Item.new("barra de chocolate", 0.85)]

carrinho2 = [Item.new("caixa de chocolates importados", 10.00, true),
             Item.new("frasco de perfume importado", 47.50, true)]

carrinho3 = [Item.new("frasco de perfume importado", 27.99, true),
             Item.new("frasco de perfume", 18.99),
             Item.new("pacote de comprimidos para dor de cabeça", 9.75),
             Item.new("caixa de chocolates importados", 11.25, true)]



puts('-------------------------------Primeiro Recibo-------------------------------')
imprimir_recibo(carrinho1)
puts('-------------------------------Segundo Recibo-------------------------------')
imprimir_recibo(carrinho2)
puts('-------------------------------Terceiro Recibo-------------------------------')
imprimir_recibo(carrinho3)


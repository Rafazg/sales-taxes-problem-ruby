require 'minitest/autorun'
require_relative 'main'

class TestCalcularImpostos < Minitest::TestCase
    
    def setup
        @livro = Item.new("livro", 12.49, true)
        @cd = Item.new("CD de música", 14.99)
        @barra_chocolate = Item.new("barra de chocolate", 0.85)
        @caixa_chocolates = Item.new("caixa de chocolates importados", 10.00, true)
        @frasco_perfume = Item.new("frasco de perfume importado", 47.50, true)
        @frasco_perfume_isencao = Item.new("frasco de perfume importado", 27.99, true, true)
    end

     def test_calcula_impostos_livro
        assert_equal 0.62, calcular_impostos(@livro)
     end

     def test_calcula_impostos_cd
        assert_equal 0.0, calcular_impostos(@cd)
     end
    
     def test_calcula_impostos_barra_chocolate
        assert_equal 0.0, calcular_impostos(@barra_chocolate)
     end
    
     def test_calcula_impostos_caixa_chocolates
        assert_equal 5.0, calcular_impostos(@caixa_chocolates)
     end
    
     def test_calcula_impostos_frasco_perfume
        assert_equal 23.75, calcular_impostos(@frasco_perfume)
     end
    
     def test_calcula_impostos_frasco_perfume_isencao
        assert_equal 0.0, calcular_impostos(@frasco_perfume_isencao)
     end
end
require 'pry'

class Triangle
  # write code here
  # attr_accessor :equilateral, :isosceles, :scalene

    def initialize(side_1, side_2, side_3)
      @side_1 = side_1
      @side_2 = side_2
      @side_3 = side_3
    end

    def kind 
      if @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0 
        raise TriangleError
        elsif
          (@side_1 + @side_2) <= @side_3 || (@side_2 + @side_3) <= @side_1 || (@side_1 + @side_3) <= @side_2
          raise TriangleError
      else 

        if @side_1 == @side_2 && @side_2 == @side_3
        return :equilateral

      elsif 

        (@side_2 == @side_3) || (@side_1 == @side_3) || (@side_1 == @side_2)
         return :isosceles

        elsif

        (@side_2 != @side_3) || (@side_1 != @side_3) || (@side_1 != @side_2)
        :scalene
        end
      end  
    end 

    class TriangleError < StandardError
  
    end
    simo = Triangle.new(2,2,2)
    simo.kind

end


simo = Triangle.new(2,2,2)
simo.kind
# binding.pry 
# test =[1,2,3]

class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3, :scalene, :isosceles, :equilateral 
  def initialize (l1,l2, l3)
    
    if l1 <= 0 || l2 <= 0 || l3 <= 0 
       begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    end
    
    @side1 = l1
    @side2 = l2 
    @side3 = l3
end
    
    def kind
    if @side1 == @side2  && @side2  == @side3
      return :equilateral
      elsif @side1 == @side2  || @side2 == @side3 || @side1 == @side3
      return :isosceles
    else 
      return :scalene
    end 
  end 
  
    class TriangleError < StandardError
      def message 
        "your triangle is not valid"
      end 
    # triangle error code
  end
end

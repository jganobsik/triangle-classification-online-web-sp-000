class Triangle
  # write code here
  def initialize (l1,l2, l3)
    if l1 == l2 && l2 == l3 
      return 'equilateral'
      elsif l1 == l2 || l2 == l3 || l1 == l3
      return 'isosceles'
    else 
      return 'scalene'
      
  end
    class TriangleError < StandardError
    # triangle error code
  end
end

=begin
  
6. Rectangle Overlap

Write a method overlap which takes two rectangles defined by
the coordinates of their corners, e.g. [[0,0],[3,3]] and [[1,1],[4,6]],
and determines whether they overlap.

You can assume all coordinates are positive integers.

> overlap( [ [0,0],[3,3] ], [ [1,1],[4,5] ] )
=> true
> overlap( [ [0,0],[1,4] ], [ [1,1],[3,2] ] )
=> false

It doesn't count as overlapping if their edges touch but they do not otherwise overwrite each other. 
  
=end

def build_rectangle(coordinates_array)
  rectangle = Array.new
  
  x1 = coordinates_array[0][0] #assumes lower left corner always given first
  x2 = coordinates_array[1][0]
  y1 = coordinates_array[0][1]
  y2 = coordinates_array[1][1]

  x1.upto(x2) do |x|
    y1.upto(y2) do |y|
      rectangle << [x, y]
    end
  end

  return rectangle
end

def overlap(first_coordinates, second_coordinates)
  does_overlap = false

  first_rectangle = build_rectangle(first_coordinates)
  second_rectangle = build_rectangle(second_coordinates)

  first_rectangle.each do |first_point|
    second_rectangle.each do |second_point|
      #assumes 2nd rectangle starts up and to the right of 1st one
      if second_point[0] < first_point[0] && second_point[1] < first_point[1]
      #checks if 2nd rect has a point below and to the left of any point on 1st rect
        does_overlap = true
      end
    end
  end
  puts does_overlap
end


overlap( [ [0,0],[3,3] ], [ [1,1],[4,5] ] ) # true
overlap( [ [0,0],[1,4] ], [ [1,1],[3,2] ] ) # false
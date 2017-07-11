# for both rectangles
  # add width to leftX and add height to bottomY
    # opposite corner will be the new X and Y
    # bottom right corner will be new X and same Y
    # top left corner will be new Y and same X
  # store values for each point
  # intersection is where point of one rectangle is contained in other rectangle

my_rectangle = {
  # coordinates of bottom-left corner
  'left_x' => 1,
  'bottom_y' => 5,

  # width and height
  'width' => 10,
  'height' => 4,
}

other_rectangle = {
  # coordinates of bottom-left corner
  'left_x' => 6,
  'bottom_y' => 4,

  # width and height
  'width' => 10,
  'height' => 4,
}

def get_points(my_rectangle, other_rectangle)
  intersection_rectangle = {}
  if other_rectangle['left_x'] > my_rectangle['left_x'] && other_rectangle['left_x'] < my_rectangle['left_x'] + my_rectangle['width']
    intersection_rectangle['left_x'] = other_rectangle['left_x']
  end
  if other_rectangle['bottom_y'] > my_rectangle['bottom_y'] && other_rectangle['bottom_y'] < my_rectangle['bottom_y'] + my_rectangle['height']
    intersection_rectangle['bottom_y'] = other_rectangle['bottom_y']
    intersection_rectangle['height'] = (my_rectangle['bottom_y'] + my_rectangle['height'] - intersection_rectangle['bottom_y'])
  else
    intersection_rectangle['bottom_y'] = my_rectangle['bottom_y']
    intersection_rectangle['height'] = (other_rectangle['bottom_y'] + other_rectangle['height'] - intersection_rectangle['bottom_y'])
  end
  intersection_rectangle['width'] = (my_rectangle['left_x'] + my_rectangle['width']) - intersection_rectangle['left_x']
  p intersection_rectangle
end

get_points(my_rectangle, other_rectangle)

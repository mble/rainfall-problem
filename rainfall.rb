# Rainfall puzzle solver
class Rainfall
  # Method to calculate the total volume of puddles
  # given a topography expressed as an array of integers
  def calculate(heights)
    # Set up some initial variables
    # We set up our indexes to scan across the array from
    # both directions at once, establishing walls and puddles
    left_index = 0
    right_index = heights.length - 1
    left_wall = heights[left_index]
    right_wall = heights[right_index]
    volume = 0

    # Scan from left to right
    while left_index < right_index
      # Right wall is higher
      if left_wall < right_wall
        # Move to the next height
        height = heights[left_index += 1]
        # Grab the highest value - the wall or its neighbour
        left_wall = [left_wall, height].max
        # Add the difference between the new left_wall and the height
        # to the volume
        volume += left_wall - height
      # Left wall is higher
      else
        # Move the the previous height
        height = heights[right_index -= 1]
        # Grab the highest value - the wall or its neighbour
        right_wall = [right_wall, height].max
        # Add the difference between the new right_wall and the height
        # to the volume
        volume += right_wall - height
      end
    end
    # Return the volume
    volume
  end
end

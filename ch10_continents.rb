# CHAPTER 10

## Calculating the size of the continent

M = 'land'
o = 'water'

world = [[o,o,o,o,o,o,o,o,o,o,o],
         [o,o,o,o,M,M,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,M,M,o],
         [o,o,o,M,o,o,o,o,o,M,o],
         [o,o,o,M,o,M,M,o,o,o,o], # But 5,5 is water, no?
         [o,o,o,o,M,M,M,M,o,o,o],
         [o,o,o,M,M,M,M,M,M,M,o],
         [o,o,o,M,M,o,M,M,M,o,o],
         [o,o,o,o,o,o,M,M,o,o,o],
         [o,M,o,o,o,M,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,o,o,o]]

def continent_size world, x, y
  if world[y][x] != 'land'  # y is presented first because of the visual layout of the array;
                            # y represents the vertical axis 
    return 0
  end

  size = 1                                          # Counts tile 5,5 as 1 (But isn't 5,5 water ("o")?)
  world[y][x] = 'counted land'

  size = size + continent_size(world, x-1, y-1)     # Checks 4,4 and checks everything connected
  size = size + continent_size(world, x  , y-1)     # Checks 5,4 and checks everything connected
  size = size + continent_size(world, x+1, y-1)     # Checks 6,4 and checks everything connected
  size = size + continent_size(world, x-1, y  )     # Checks 4,5 and checks everything connected
  size = size + continent_size(world, x+1, y  )     # Checks 6,5 and checks everything connected
  size = size + continent_size(world, x-1, y+1)     # Checks 4,6 and checks everything connected
  size = size + continent_size(world, x  , y+1)     # Checks 5,6 and checks everything connected
  size = size + continent_size(world, x+1, y+1)     # Checks 6,6 and checks everything connected
  size
end

puts continent_size(world, 5, 5)


#---
# Excerpted from "Mazes for Programmers",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/jbmaze for more book information.
#---
require_relative 'colored_grid'
require_relative 'binary_tree'

grid = ColoredGrid.new(40, 40)
BinaryTree.on(grid)

middle = grid[grid.rows / 2, grid.columns / 2]
grid.distances = middle.distances

filename = "binary_tree_coloured.png"
grid.to_png.save("../target/" + filename)
puts "saved to #{filename}"

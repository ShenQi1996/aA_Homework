require 'set'

class GraphNode
  attr_accessor :val, :neighbors

  def initialize(val)
    @val = val
    @neighbors = []
  end

  def add_neighbor(node)
    @neighbors << node
  end
end

def bfs(s_node, target)
  queue = [s_node]
  visited = Set.new()

  while !queue.empty?
    fist = queue.shift
    if !visited.include?(fist)
      return fist.val if fist.val == target
      visited.add(fist)
      queue += fist.neighbors
    end
  end
  nil
end
class Tree
  attr_accessor :children, :node_name

  def initialize(tree = {})
    if tree.length == 1
      @node_name = tree.keys[0]
      @children = tree[node_name].keys.map {|name| Tree.new({"#{name}": tree[node_name][name]}) }
    else
      raise "invalid input"
    end
  end

  def visit_all(&block)
    visit(&block)
    children.each {|child| child.visit_all(&block)}
  end

  def visit(&block)
    block.call self
  end
end

tree = Tree.new({'grandpa' => {'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } })
puts "Visiting a node"
tree.visit {|node| puts node.node_name}
puts
puts "visiting entire tree"
tree.visit_all {|node| puts node.node_name}

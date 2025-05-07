
class Node
    attr_accessor :value, :left, :right
  
    def initialize(value)
      @value = value
      @left = nil
      @right = nil
    end
  end
  
  class BinarySearchTree
    def initialize
      @root = nil
    end
  
    def insert(value)
      @root = insert_node(@root, value)
    end

    def search(value)
      search_node(@root, value)
    end

    def delete(value)
      @root = delete_node(@root, value)
    end
    
    def in_order_traversal
      result = []
      traverse_in_order(@root, result)
      result
    end

    private
  
    def insert_node(node, value)
      return Node.new(value) if node.nil?
  
      if value <= node.value
        node.left = insert_node(node.left, value)
      else
        node.right = insert_node(node.right, value)
      end
  
      node
    end
  
    def search_node(node, value)
      return false if node.nil?
  
      if value == node.value
        true
      elsif value < node.value
        search_node(node.left, value)
      else
        search_node(node.right, value)
      end
    end

    def delete_node(node, value)
      return false if node.nil?
  
      if value < node.value
        node.left = delete_node(node.left, value)
      elsif value > node.value
        node.right = delete_node(node.right, value)
      else
        return node.right if node.left.nil?
        return node.left if node.right.nil?
    
        min_node = find_min(node.right)
        node.value = min_node.value
        node.right = delete_node(node.right, min_node.value)
      end
      return node
    end

    def traverse_in_order(node, result)
      return if node.nil?
    
      traverse_in_order(node.left, result)
      result << node.value
      traverse_in_order(node.right, result)
    end
end


  # Usage
  bst = BinarySearchTree.new
  bst.insert(50)
  bst.insert(30)
  bst.insert(70)
  bst.insert(20)
  bst.insert(40)
  bst.insert(60)
  bst.insert(80)
  
  puts bst.search(40)
  puts bst.search(25) 

  puts "In-order traversal result:"
  puts bst.in_order_traversal.inspect

  bst.delete(20)
  puts bst.search(20)

  puts "In-order traversal result:"
  puts bst.in_order_traversal.inspect
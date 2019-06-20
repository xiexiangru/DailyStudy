myTree = {}

myTree.createTree = function(self, dep)
    local root = {lchild = nil, rchild = nil, parent = nil, data = 1, dep = 1}
    root.lchild = self:addNode(root, 0, dep)    
    root.rchild = self:addNode(root, 1, dep)    
    return root
end

myTree.addNode = function(self, node, position, dep)
    --print(node)
    if node.dep >= dep then
        return
    end 
    local new_node= {lchild = nil, rchild = nil, parent = node, data = 0, dep = node.dep + 1}
    new_node.data = (position == 0 and node.data * 2 or node.data * 2 + 1)
    new_node.lchild = self:addNode(new_node, 0, dep)
    new_node.rchild = self:addNode(new_node, 1, dep)

    return new_node
end

myTree.printTree = function(self, node)
    --print(node)
    print(node.data)
    if node.lchild then
        self.printTree(self, node.lchild)  
    end 
    if node.rchild then
        self.printTree(self, node.rchild)  
    end 
end

return myTree
--local tree = createTree(3)
--printTree(tree)


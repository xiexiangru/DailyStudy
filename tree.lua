createTree = function(dep)
    local root = {lchild = nil, rchild = nil, parent = nil, data = 1, dep = 1}
    root.lchild = addNode(root, 0, dep)    
    root.rchild = addNode(root, 1, dep)    
    return root
end

addNode = function(node, position, dep)
    if node.dep >= dep then
        return
    end 

    local new_node= {lchild = nil, rchild = nil, parent = node, data = 0, dep = node.dep + 1}
    new_node.data = (position == 0 and node.data * 2 or node.data * 2 + 1)
    new_node.lchild = addNode(new_node, 0, dep)
    new_node.rchild = addNode(new_node, 1, dep)

    return new_node
end

printTree = function(node)
    print(node.data)
    if node.lchild then
        printTree(node.lchild)  
    end 
    if node.rchild then
        printTree(node.rchild)  
    end 
end

local tree = createTree(3)
printTree(tree)


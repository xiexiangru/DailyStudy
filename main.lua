
local myList = require "list"
--tree = myTree:createTree(4)
--print(myList)

myList:init()


myList:addNode(8)
myList:addNode(45)

myList:addNode(12)
for i = 1,5 do
	myList:addNode(i)
end
myList:printList()
print("-----")

myList:delNode(2)
myList:printList()
print("-----")

print(myList:getNode(3))
print("-----")

myList:changeNode(5, 20)

print("-----")
myList:printList()

print("----------------------")
local myTree = require "tree"

local tree = myTree:createTree(3)
myTree:printTree(tree)
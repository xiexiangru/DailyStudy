myList = {}
myList.node = {}
myList.list = myList.node

myList.init = function(self)
    self.list.next = nil
    --print(self.list)
end


myList.addNode = function(self, d)
    self.node.next = {}
    self.node = self.node.next
    self.node.next = nil
    self.node.data = d
end

myList.delNode = function(self,i)
    local j, k ,l = i - 1, 0, self.list
    while k < j do
        k = k + 1
        l = l.next
    end
    d = l.next.data
    t = l.next.next 
    l.next = nil 
    l.next = t
    return d
end

myList.printList = function(self)
    local l = self.list.next
    while l do
        print(l.data)
        l = l.next
    end

end
myList.changeNode = function(self, i, d)
	local l = self.list.next 
    local k = 1
    while l do
        l = l.next
        k = k + 1
        if k == i then
            l.data = d
        end
    end
end

myList.getNode = function(self, i)
    local l = self.list.next 
    local k = 1
    while l do
        l = l.next
        k = k + 1
        if k == i then
            return l.data
        end
    end
end

return myList
--[[init()

addNode(8)
addNode(45)
addNode(12)
for i = 1,5 do
	addNode(i)
end
printList()
print("-----")

delNode(2)
printList()
print("-----")

print(getNode(3))
print("-----")

changeNode(5, 20)

print("-----")
printList()--]]

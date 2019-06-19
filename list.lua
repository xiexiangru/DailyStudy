node = {}
list = node

init = function()
    list.next = nil
end

addNode = function(d)
    node.next = {}
    node = node.next
    node.next = nil
    node.data = d
end

delNode = function(i)
    local j, k ,l = i - 1, 0, list
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

changeNode = function(i, d)
	local l = list.next 
    local k = 1
    while l do
        l = l.next
        k = k + 1
        if k == i then
            l.data = d
        end
    end
end

getNode = function(i)
    local l = list.next 
    local k = 1
    while l do
        l = l.next
        k = k + 1
        if k == i then
            return l.data
        end
    end
end

printList = function()
	local l = list.next
	while l do
		print(l.data)
		l = l.next
	end
end

init()

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
printList()

require"SquareClass"


MySquare=SquareClass:new(nil, 10)
print(MySquare.area)
print(MySquare.lenth)
MySquare.PrintArea(MySquare)



--switch
function Case_1( )
	print("case 1")
end

function MySwitch(case)
	if case == 1 then 
		Case_1()
	elseif case == 2 then
		print("case 2")
	else
		print("default")
	end
end

MySwitch(1)

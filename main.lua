require"SquareClass"


mysquare=SquareClass:new(nil,10)
mysquare.printA(mysquare)



--switch
function case_1( ... )
	print("case 1")
end

function switch(case)
	if case == 1 then 
		case_1()
	elseif case == 2 then
		print("case 2")
	else
		print("default")
	end
end

switch(1)

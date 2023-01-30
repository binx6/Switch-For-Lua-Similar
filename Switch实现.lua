local switch = {
    case = function(self,x)
        self.x = x
        return self
    end,
    of = function(self,...)
        local arg = {...}
        for i=1,#arg do
            if arg[i] == self.x then
                arg[i+1]()
                break
            end
        end
        return self
    end
}

switch:case(1):of(
    1,function()
        print("case 1")
    end,
    2,function()
        print("case 2")
    end
)

switch:case(3):of(
    3,function()
        print("case 3")
    end
)
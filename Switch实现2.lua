function switch(var)
    local swtbl = {
        casevar = var,
        caseof = function (self, code)
            local f
            if (self.casevar) then
                f = code[self.casevar] or code.default
            else
                f = code.missing or code.default
            end
            if f then
                if type(f) == "function" then
                    return f(self.casevar,self)
                else
                    error("case "..tostring(self.casevar).." not a function")
                end
            end
        end
    }
    return swtbl
end

local a = 1
switch(a):caseof {
    [1] = function ()
        print("1")
    end,
    [2] = function ()
        print("2")
    end,
    default = function ()
        print("default")
    end
}
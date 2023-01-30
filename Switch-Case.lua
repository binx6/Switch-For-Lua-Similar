local switch = {}

function switch.case(value, tbl)
    local fn = tbl[value] or tbl.default
    if fn then
        if type(fn) == "function" then
            return fn()
        else
            error("case "..tostring(value).." not a function")
        end
    end
end

-- 使用例子

local value = "a"
local result = switch.case(value, {
    a = function() return "a" end,
    b = function() return "b" end,
    default = function() return "default" end
})

print(result) -- 输出：a
--[[
C语言程序语句：C语言中它经常跟Case一起使用，是一个判断选择代码。其功能就是控制流程流转的。直线翻译：switch语句，即“切换”语句；case即“情况”。当变量表达式所表达的量与其中一个case语句中的常量相符时，就执行此case语句后面的语句，并依次下去执行后面所有case语句中的语句，除非遇到break;语句跳出switch语句为止。如果变量表达式的量与所有case语句的常量都不相符，就执行default语句中的语句。
--]]

--实现Switch功能
function Switch(val,case_tbl)
    local func = case_tbl[val] or case_tbl.default
    if func then
        if type(func)=="function" then
            func()
        else
            error("case must be a function")
        end
    end
end

--使用Switch
Switch(数字多少就调用对应键值,{
    [1]=function() print("case 1") end,
    [2]=function() print("case 2") end,
    [3]=function() print("case 3") end,
    default=function() print("default") end
})
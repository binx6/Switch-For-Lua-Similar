local switch = {
    casevar = '1',
    case1 = function ()
        print("case 1")
    end,
    case2 = function ()
        print("case 2")
    end,
    case3 = function ()
        print("case 3")
    end,
}

function switch.case()
    switch[switch.casevar]()
end

-- 使用例子
switch.casevar = 'case2'
switch.case() -- 输出 case 2
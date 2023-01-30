local var = 'a'
local switch = {
  ['a'] = function()
    print('var is a')
  end,
  ['b'] = function()
    print('var is b')
  end,
  ['c'] = function()
    print('var is c')
  end
}

local f = switch[var]
if f then
  f()
else
  print('default: var is not a, b or c')
end
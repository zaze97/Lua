local mytable = {}

local max = 10
for i = 1, 10 do
    -- body
    mytable[i] = i * max
end

-- for index, value in ipairs(mytable) do
--     print(index..'+'..value)
-- end

for key, value in pairs(mytable) do
    print(key .. "+" .. value)
end

require("module")

module.func1()
module.func3()

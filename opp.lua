Shape = {area = 0}--定义变量

function Shape:new(side)
    local o ={}--定义私有表
    setmetatable(o, self)--定义元表
    self.__index = self--持有元表
    side = side or 0--判断变量是否为0
    self.area = side * side--赋值
    return o
end  

function Shape:printArea()
    print("面积为", self.area)
end
-- 创建对象
local myshape=Shape:new(20)
myshape:printArea()

Square=Shape:new()
-- 派生类方法 new
function Square:new(side)
    local o=Shape:new(side)
    setmetatable(o,self)
    self.__index=self
    return o
end
-- 派生类方法 printArea
function Square:printArea()
    print("正方形面积为",self.area)
    end
-- 创建对象
local mysquare=Square:new(30)
mysquare:printArea()




Rectangle=Shape:new()
-- 派生类方法 new
function Rectangle:new(high,width)
    local o=Shape:new(high)
    setmetatable(o,self)
    self.__index=self
    high=high or 0
    width=width or 0
    self.area=high*width
    return o
end
-- 派生类方法 printArea
function Rectangle:printArea()
    print("长方形面积为",self.area)
    end
-- 创建对象
local myRect=Rectangle:new(30,40)
myRect:printArea()

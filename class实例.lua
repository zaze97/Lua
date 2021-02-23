require("Class")


local Player = Class.Inherit("player")

function Player:GetObj() --放一个参数
	print("Player")
end

Player_Other = Class.Inherit("PlayerOther", Player)

function Player_Other:GetObj()

 self.super:GetObj()--继承类似base
 print("继承Player")
end


local mySelf = Player_Other.new()
mySelf :GetObj()

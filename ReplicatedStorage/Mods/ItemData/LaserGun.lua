local ItemsFolder = game:GetService("ReplicatedStorage"):WaitForChild("Items")

local ItemMod = {OtherInfo = {}}

ItemMod.Name = "Laser Gun"
ItemMod.Weight = 1
ItemMod.Item = ItemsFolder.HyperlaserGun

ItemMod.Id = "lasergun"

ItemMod.OtherInfo.Damage = 100

return ItemMod
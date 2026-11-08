-- Emorce Shinjuku loader
-- loadstring(game:HttpGet("https://raw.githubusercontent.com/hexed00/emorce-shinjuku/main/loader.lua"))()
pcall(function()
	if type(_G.__EmorceShinjukuStop) == "function" then _G.__EmorceShinjukuStop() end
	if type(_G.EmorceUIStop) == "function" then _G.EmorceUIStop() end
end)
local url = "https://raw.githubusercontent.com/hexed00/emorce-shinjuku/main/Emorce_Shinjuku_Hub.lua"
local src = game:HttpGet(url)
assert(type(src) == "string" and #src > 1000, "failed to fetch hub")
loadstring(src)()

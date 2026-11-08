-- Emorce Shinjuku loader
-- loadstring(game:HttpGet("https://raw.githubusercontent.com/hexed00/emorce-shinjuku/main/loader.lua"))()
pcall(function()
	if type(_G.__EmorceShinjukuStop) == "function" then _G.__EmorceShinjukuStop() end
	if type(_G.EmorceUIStop) == "function" then _G.EmorceUIStop() end
end)

-- Prefer full hub raw; fallback to 4 chunks if present
local base = "https://raw.githubusercontent.com/hexed00/emorce-shinjuku/main/"
local function tryFull()
	local ok, src = pcall(function() return game:HttpGet(base .. "Emorce_Shinjuku_Hub.lua") end)
	if ok and type(src) == "string" and #src > 5000 and not src:find("placeholder", 1, true) then
		return src
	end
	return nil
end
local function tryChunks()
	local parts = {}
	for i = 0, 3 do
		local ok, src = pcall(function() return game:HttpGet(base .. "hub_chunk_" .. i .. ".lua") end)
		if not ok or type(src) ~= "string" or #src < 100 then return nil end
		parts[#parts + 1] = src
	end
	return table.concat(parts)
end
local src = tryFull() or tryChunks()
assert(src, "failed to fetch Emorce Shinjuku hub from GitHub")
loadstring(src)()

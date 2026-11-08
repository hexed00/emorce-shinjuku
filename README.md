# Emorce Shinjuku

JSON-driven Shinjuku hub (ercy fishing + remote fire + MasterESP features).

## Load in executor

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/hexed00/emorce-shinjuku/main/loader.lua"))()
```

## Config (`shinjuku.json`)

Fetched on run. Edit fish PD / remote / silent / aimbot defaults:

- fish: CastDelay 0.05, PostCastWait 0.05, TugReactDelay 0.05, TugTimeout 40, Deadzone 4, PredictFrames 3 (ercy)
- remote: Nambu reloads every shot, Howa untouched

Raw JSON: https://raw.githubusercontent.com/hexed00/emorce-shinjuku/main/shinjuku.json

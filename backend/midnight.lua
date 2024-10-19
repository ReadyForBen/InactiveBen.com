-- Function to get the remaining time until midnight CST
local function getTimeUntilMidnight()
    local success, response = pcall(function()
        return game:HttpGet("https://inactiveben.com/backend/midnight.lua")
    end)

    if success then
        -- Check if the response is valid and not empty
        if response and response:match("%d+") then
            -- Assume response is something like "6 hours 30 minutes"
            return response:gsub("%s+", "")  -- Clean whitespace
        else
            return "Received an invalid time format."  -- Handle unexpected response
        end
    else
        return "Could not fetch time until midnight."  -- Fallback message
    end
end

return getTimeUntilMidnight

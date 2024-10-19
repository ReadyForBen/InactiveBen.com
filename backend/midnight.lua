-- midnight.lua

-- Function to calculate remaining time until midnight CST
local function getTimeUntilMidnight()
    local currentTime = os.date("*t")  -- Get current time
    local midnight = {hour = 24, min = 0}  -- Midnight is at 00:00

    -- Calculate remaining time until midnight
    local remainingHours = midnight.hour - currentTime.hour
    local remainingMinutes = midnight.min - currentTime.min

    if remainingMinutes < 0 then
        remainingHours = remainingHours - 1
        remainingMinutes = remainingMinutes + 60
    end

    return string.format("%d hours %d minutes", remainingHours, remainingMinutes)
end

-- Return the time remaining until midnight
return getTimeUntilMidnight()

local function disable()
    QUICK_JOIN_CONFIG.TOASTS_DISABLED = true
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:RegisterEvent("SOCIAL_QUEUE_CONFIG_UPDATED")
frame:SetScript("OnEvent", disable)

-- called during SOCIAL_QUEUE_CONFIG_UPDATED, but before check for CONFIG
hooksecurefunc(QuickJoinToastButton, "ProcessQueuedUpdates", disable)
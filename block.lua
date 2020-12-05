local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:RegisterEvent("SOCIAL_QUEUE_CONFIG_UPDATED")
frame:SetScript("OnEvent", function()
    QUICK_JOIN_CONFIG.TOASTS_DISABLED = true
end)
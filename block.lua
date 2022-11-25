local ADDON_NAME = ...

local function disable()
    QUICK_JOIN_CONFIG.TOASTS_DISABLED = true
end

EventRegistry:RegisterFrameEventAndCallback("PLAYER_LOGIN", disable, ADDON_NAME)
EventRegistry:RegisterFrameEventAndCallback("SOCIAL_QUEUE_CONFIG_UPDATED", disable, ADDON_NAME)

-- called during SOCIAL_QUEUE_CONFIG_UPDATED, but before check for CONFIG
hooksecurefunc(QuickJoinToastButton, "ProcessQueuedUpdates", disable)
-- Namespace for the addon
local addonName, addonTable = ...

-- Create a hidden frame to register events
local frame = CreateFrame("Frame")

-- Function to handle addon load
local function OnEvent(self, event, ...)
    if event == "ADDON_LOADED" then
        local name = ...
        if name == addonName then
            print(addonName .. " successfully loaded!")
            
            -- Initialize SavedVariables if empty
            if type(TemplateAddonDB) ~= "table" then
                TemplateAddonDB = {}
            end
        end
    end
end

-- Register events
frame:SetScript("OnEvent", OnEvent)
frame:RegisterEvent("ADDON_LOADED")

-- Basic Slash Command
SLASH_TEMPLATEADDON1 = "/template"
SLASH_TEMPLATEADDON2 = "/ta"
SlashCmdList["TEMPLATEADDON"] = function(msg)
    print("Template Addon Slash Command executed with args: '" .. msg .. "'")
end

-- Create a visible frame for the "Plug in the Vibe!" text
local displayFrame = CreateFrame("Frame", nil, UIParent)
displayFrame:SetSize(200, 50)
-- Set point relative to the top left of the screen (UIParent), with a small offset
displayFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 16, -16)

local displayText = displayFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalHuge")
displayText:SetPoint("TOPLEFT", displayFrame, "TOPLEFT", 0, 0)
displayText:SetText("Plug in the Vibe!")

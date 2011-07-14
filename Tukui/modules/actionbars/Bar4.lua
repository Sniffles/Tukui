local T, C, L = unpack(select(2, ...)) -- Import: T - functions, constants, variables; C - config; L - locales
if not C["actionbar"].enable == true then return end

---------------------------------------------------------------------------
-- setup MultiBarRight as bar #4
---------------------------------------------------------------------------

local bar = TukuiBar4
MultiBarLeft:SetParent(bar)

for i= 1, 12 do
	local b = _G["MultiBarLeftButton"..i]
	local b2 = _G["MultiBarLeftButton"..i-1]
	b:SetSize(T.buttonsize, T.buttonsize)
	b:ClearAllPoints()
	b:SetFrameStrata("BACKGROUND")
	b:SetFrameLevel(15)
	
	if i == 1 then
		b:SetPoint("LEFT", _G["ActionButton12"], "RIGHT", T.buttonspacing, 0)
	else
		b:SetPoint("LEFT", b2, "RIGHT", T.buttonspacing, 0)
	end
end

MultiBarLeftButton5:Kill()
MultiBarLeftButton6:Kill()
MultiBarLeftButton7:Kill()
MultiBarLeftButton8:Kill()
MultiBarLeftButton9:Kill()
MultiBarLeftButton11:Kill()
MultiBarLeftButton10:Kill()
MultiBarLeftButton12:Kill()
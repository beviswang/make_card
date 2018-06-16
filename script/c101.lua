--暴鯉龍
function c101.initial_effect(c)
	--half atk
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_FIELD)
	e1:SetCode(EFFECT_SET_ATTACK_FINAL)
	e1:SetRange(LOCATION_MZONE)
	e1:SetProperty(EFFECT_FLAG_DELAY)
	e1:SetTargetRange(LOCATION_MZONE,LOCATION_MZONE)
	e1:SetTargetRange(0,LOCATION_MZONE)
	e1:SetValue(c101.atkval)
	c:RegisterEffect(e1)
end
function c101.atkval(e,c)
	return math.ceil(c:GetAttack()/2)
end

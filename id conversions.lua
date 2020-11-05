local _FourCC = FourCC
---@param id string
---@return number
function FourCC(id)
    return _FourCC(id)
end

---@param id integer|string
---@return integer
function FormatCC(id)
    if type(id) == 'integer' then
        return id
    elseif type(id) == 'string' then
        return export.FourCC(id)
    end
end

local _OrderId = OrderId
---@param orderIdString string
---@return integer
function OrderId(orderIdString)
    return _OrderId(orderIdString)
end

local _OrderId2String = OrderId2String
---@param orderId integer
---@return string
function OrderId2String(orderId)
    return _OrderId2String(FormatCC(orderId))
end

-- Looks up the "name" field for any object (unit, item, ability)
local _GetObjectName = GetObjectName
---@param objectId integer
---@return string
function GetObjectName(objectId)
    return _GetObjectName(objectId)
end
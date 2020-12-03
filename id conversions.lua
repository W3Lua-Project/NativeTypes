---@param id string
---@return number
function fourCC(id)
    return FourCC(id)
end

---@param id integer|string
---@return integer
function formatCC(id)
    if type(id) == 'integer' then
        return id
    elseif type(id) == 'string' then
        return fourCC(id)
    end
end

---@param orderIdString string
---@return integer
function orderId(orderIdString)
    return OrderId(orderIdString)
end

---@param orderId integer
---@return string
function order2StringId(orderId)
    return OrderId2String(formatCC(orderId))
end

---@param order_id integer|string
---@return integer
function formatIntOrder(order_id)
    if type(order_id)=='integer' then
        return order_id
    elseif type(order_id)=='string' then
        return orderId(order_id)
    end
end

---@param order integer|string
---@return string
function formatStringOrder(order)
    if type(order)=='string' then
        return order
    elseif type(order)=='integer' then
        return order2StringId(order)
    end
end

-- Looks up the "name" field for any object (unit, item, ability)
---@param objectId integer
---@return string
function getObjectName(objectId)
    return GetObjectName(objectId)
end
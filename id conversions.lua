---@param id string
---@return number
function fourCC(id)
    return FourCC(id)
end

---@param id integer|string
---@return integer
function formatIntCC(id)
    if type(id) == 'integer' then
        return id
    elseif type(id) == 'string' then
        return fourCC(id)
    end
end

---@param id integer
---@return string
function getStringCC(id)
    return ('>I4'):pack(id)
end

---@param id integer|string
---@return string
function formatStringCC(id)
    if type(id) == 'string' then
        return id
    elseif type(id) == 'integer' then
        return getStringCC(id)
    end
end

---@param orderIdString string
---@return integer
function getOrderId(orderIdString)
    return OrderId(orderIdString)
end

---@param orderId integer
---@return string
function getOrder2StringId(orderId)
    return OrderId2String(formatIntCC(orderId))
end

---@param orderId integer|string
---@return integer
function formatIntOrder(orderId)
    if type(orderId)=='integer' then
        return orderId
    elseif type(orderId)=='string' then
        return getOrderId(orderId)
    end
end

---@param order integer|string
---@return string
function formatStringOrder(order)
    if type(order)=='string' then
        return order
    elseif type(order)=='integer' then
        return getOrder2StringId(order)
    end
end

-- Looks up the "name" field for any object (unit, item, ability)
---@param objectId integer
---@return string
function getObjectName(objectId)
    return GetObjectName(objectId)
end
---@param id string
---@return number
function fourCC(id)
    return FourCC(id)
end

---@alias rawcode integer|string

---@param id rawcode
---@return integer
function formatIntCC(id)
    if typeof(id, 'integer') then
        return id
    elseif typeof(id, 'string') then
        return fourCC(id)
    end
end

---@param id integer
---@return string
function getStringCC(id)
    return ('>I4'):pack(id)
end

---@param id rawcode
---@return string
function formatStringCC(id)
    if typeof(id, 'string') then
        return id
    elseif typeof(id, 'integer') then
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
    return OrderId2String(orderId)
end

---@alias order rawcode

---@param orderId order
---@return integer
function formatIntOrder(orderId)
    if typeof(orderId, 'integer') then
        return orderId
    elseif typeof(orderId, 'string') then
        return getOrderId(orderId)
    end
end

---@param order order
---@return string
function formatStringOrder(order)
    if typeof(order, 'string') then
        return order
    elseif typeof(order, 'integer') then
        return getOrder2StringId(order)
    end
end

-- Looks up the "name" field for any object (unit, item, ability)
---@param objectId integer
---@return string
function getObjectName(objectId)
    return GetObjectName(objectId)
end
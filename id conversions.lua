function fourCC(id)
    return FourCC(id)
end

function formatIntCC(id)
    if type(id) == 'integer' then
        return id
    elseif type(id) == 'string' then
        return fourCC(id)
    end
end

function getStringCC(id)
    return ('>I4'):pack(id)
end

function formatStringCC(id)
    if type(id) == 'string' then
        return id
    elseif type(id) == 'integer' then
        return getStringCC(id)
    end
end

function getOrderId(orderIdString)
    return OrderId(orderIdString)
end

function getOrder2StringId(orderId)
    return OrderId2String(orderId)
end

function formatIntOrder(orderId)
    if type(orderId)=='integer' then
        return orderId
    elseif type(orderId)=='string' then
        return getOrderId(orderId)
    end
end

function formatStringOrder(order)
    if type(order)=='string' then
        return order
    elseif type(order)=='integer' then
        return getOrder2StringId(order)
    end
end

-- Looks up the "name" field for any object (unit, item, ability)
function getObjectName(objectId)
    return GetObjectName(objectId)
end
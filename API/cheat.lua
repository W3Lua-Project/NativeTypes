--============================================================================

local _Cheat = Cheat
---@param cheatStr string
function Cheat(cheatStr) 
    _Cheat(cheatStr)
end

local _IsNoVictoryCheat = IsNoVictoryCheat
---@return boolean
function IsNoVictoryCheat() 
    return _IsNoVictoryCheat()
end

local _IsNoDefeatCheat = IsNoVictoryCheat
---@return boolean
function IsNoDefeatCheat() 
    return _IsNoDefeatCheat()
end
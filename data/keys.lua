--------------------------------------------------------------------------------
local function ByValue(name, search_value, domain)
    for _, value in pairs(domain) do
        if value[name] == search_value then
            return value
        end
    end

    return domain['']
end

--------------------------------------------------------------------------------
local function AllByValue(name, search_value, domain)
    local matches = {}
    for _, value in pairs(domain) do
        if value[name] == search_value then
            table.insert(matches, value)
        end
    end

    table.insert(matches, domain[''])
    return matches
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
local Keys = {}
Keys.Values = {}

-- Nil Key
Keys.Values['']   = { id = 0000, idx = 0, en = '' }

-- Keys
Keys.Values[8973] = { id = 8973, idx = 01, en = 'SP Gobbie Key' }
Keys.Values[9274] = { id = 9274, idx = 01, en = 'Dial Key #ANV' }
Keys.Values[9218] = { id = 9218, idx = 01, en = 'Dial Key #Fo' }
Keys.Values[9217] = { id = 9217, idx = 01, en = 'Dial Key #Ab' }
Keys.Values[4181] = { id = 4181, idx = 02, en = 'Warp Scroll' }
Keys.Values[5945] = { id = 5945, idx = 12, en = 'Prize Powder' }

--------------------------------------------------------------------------------
function Keys.GetByProperty(key, value)
    return ByValue(tostring(key), value, Keys.Values)
end

--------------------------------------------------------------------------------
function Keys.GetAllByProperty(key, value)
    return AllByValue(tostring(key), value, Keys.Values)
end

return Keys
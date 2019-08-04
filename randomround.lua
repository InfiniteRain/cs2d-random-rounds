--Random round mod by Factis699
--Info in rounds.lua

--starting
parse('sv_gamemode 0')
round = {}
dofile('sys/lua/rounds.lua')

--array function 
function array(m, h)
	local a = {}
	for id = 1, m do
		a[id] = h
	end
	return a
end

roundN = 1
allowN = 1 

--toTable function
function toTable(t, match)
	local cmd = {}
	if not match then match = '[^%s]+' end
	for word in string.gmatch(t, match) do
		table.insert(cmd, word)
	end
	return cmd
end

--hooks
addhook('spawn', 'spawn_hook')
addhook('endround', 'endround_hook')
addhook('startround', 'startround_hook')
addhook('rcon', 'rcon_hook')
addhook('ms100', 'ms100_hook')
addhook('die', 'die_hook')
addhook('drop', 'drop_hook')
addhook('buy', 'buy_hook')

--hook functions
function spawn_hook(id)
	allowN = 1
	parse('strip '.. id ..' 0')
	parse('setarmor '.. id ..' 0')
	if allowN == 1 then
		if round[roundN].items ~= nil then
			for n, w in ipairs(round[roundN].items) do
				parse('equip '.. id ..' '.. w)
			end
			if round[roundN].set_weapon ~= nil then
				parse('setweapon '.. id ..' '.. round[roundN].set_weapon)
			end
		end
		if round[roundN].Tspawns ~= nil then
			if player(id, 'team') == 1 then
				local s = math.random(1, #round[roundN].Tspawns)
				parse('setpos '.. id ..' '.. round[roundN].Tspawns[s][1] * 32 + 16 ..' '.. round[roundN].Tspawns[s][2] * 32 + 16)
			end
		end
		if round[roundN].CTspawns ~= nil then
			if player(id, 'team') == 2 then
				local s = math.random(1, #round[roundN].CTspawns)
				parse('setpos '.. id ..' '.. round[roundN].CTspawns[s][1] * 32 + 16 ..' '.. round[roundN].CTspawns[s][2] * 32 + 16)
			end
		end
	end
end

function endround_hook()
	roundN = math.random(1, #round)
	allowN = 0
end

function startround_hook()
	msg(string.char(169) ..'000000255'.. round[roundN].round_name ..'!@C')
	if round[roundN].floor_items ~= nil then
		for n, w in ipairs(round[roundN].floor_items) do
			parse('spawnitem '.. w[1] ..' '.. w[2] ..' '.. w[3])
		end
	end
end

function rcon_hook(cmds, id, ip, port)
	cmd = toTable(cmds)
	if cmd[1] == 'sv_gamemode' then
		return 1
	end
end

function ms100_hook()
	if allowN == 1 then
		if round[roundN].items ~= nil then
			for n, w in ipairs(player(0, 'tableliving')) do
				if round[roundN].inf_weapons ~= nil then
					for n2, w2 in ipairs(round[roundN].inf_weapons) do
						if w2 == 72 then
							if w2 ~= w then
								parse('equip '.. w ..' '.. w2)
							end
						end
						if player(w, 'weapontype') == w2 then
							parse('equip '.. w ..' '.. w2)
						end
					end
				end
			end
		end
	end
end

function die_hook(victim, killer, weapon, x, y)
	return 1
end

function drop_hook(id,iid,type,ain,a,mode,x,y)
	return 1
end

function buy_hook(id, weapon)
	return 1
end
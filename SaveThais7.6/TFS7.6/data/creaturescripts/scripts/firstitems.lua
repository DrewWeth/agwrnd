local firstItems =
{
	2050,
	2512
}

function onLogin(cid)
	if getPlayerStorageValue(cid, 30001) == -1 then
		for i = 1, table.maxn(firstItems) do
			doPlayerAddItem(cid, firstItems[i], 1)
		end

		if getPlayerSex(cid) == 0 then
			doPlayerAddItem(cid, 2651, 1)
		else
			doPlayerAddItem(cid, 2650, 1)
		end

		local bag = doPlayerAddItem(cid, 1987, 1)

		if getPlayerVocation(cid) == 1 then
			doAddContainerItem(bag, 2190, 1)	--vortex
		elseif getPlayerVocation(cid) == 2 then
			doAddContainerItem(bag, 2182, 1)	--snakebite
		elseif getPlayerVocation(cid) == 3 then
			doAddContainerItem(bag, 2456, 1)	--bow
			doAddContainerItem(bag, 2544, 100)	-- arrow
		elseif getPlayerVocation(cid) == 4 then
			doAddContainerItem(bag, 2386, 1)        --axe
			doAddContainerItem(bag, 2398, 1)	--club
			doAddContainerItem(bag, 2376, 1)	--sword
		end

		doAddContainerItem(bad, 2674, 3)

		setPlayerStorageValue(cid, 30001, 1)
	end
 	return TRUE
end

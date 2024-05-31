--BROKEN NEEDS WORK, ITS TOO IMPRACTICAL TO DO THIS ATM need to wait for minetest to support require atleast
--briefly looked into making our own temporary require funciton, its likely possible but we have to use dofile(minetests own modified version) for it since minetest security prevents anything else atleast as far as i know

--indexes mod files so they can be loaded without writing full relative path
print("fabricate: fileIndexer.lua")

--TOAD
--replace use of dofile with require once minetest implmenets it	--TODO-1
--cache files paths so they dont have to be found eavry time		--TODO-2
--prefer use of find instead of ls when handling paths on unix		--TODO-3

function dofileIndexed(name) --TODO-2
	print("dofileIndexedTest: " .. name)

	pathSeperator = package.config:sub(1, 1)
	if pathSeperator == "\\" then
		for dir in io.popen([[dir "./" /b]]):lines() do
			for index, value in ipairs(dir) do
				if string.find(value, name, 1, true) then
					dofile(value)
				else
					print("fabricate: ERROR")
					print("	cant find file in mod folder by partial match: " .. name)
				end
			end
		end
	elseif pathSeperator == "/" then
		local index, files, popen = 0, {}, io.popen
		local pfile = popen('ls -a "' .. directory .. '"') --TODO-3
		for file in pfile:lines() do
			index = index + 1
			files[index] = file
		end
		pfile:close()
	else
		print(
			"IM SORRY BUT UNTILL MINETEST SUPORTS REQUIRE OR HAS A WAY TO HANDLE LOADING OR INDEXING FILES BETTER THIS MOD WILL NOT WORK ON YOUR OS"
		)
	end

	patrh = dofile(path)
end

return dofileIndexed --return indexed function so when loaded with dofile instead of require it can be used

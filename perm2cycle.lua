#!/usr/bin/env lua
--hi
if not arg[1] then
	print("Prints a permutation in cycle notation.")
	print("Usage: "..arg[0].." a_1 a_2 ... a_k")
	os.exit()
end

perm, tbl = {}, {}

for i=1,#arg do
	perm[i] = tonumber(arg[i])
	tbl[i] = tonumber(i)
end

local k, v = next(tbl)

while k do
	tbl[k] = nil

	io.write("("..k)

	local x = perm[k]
	while x ~= k do
		tbl[x] = nil
		io.write(" ")
		io.write(x)
		x = perm[x]
	end

	io.write(")")
	
	k, v = next(tbl)
end

print()


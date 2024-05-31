--functions, runtimes and events for contraptions, and their blocks

--FUNCTIONS
function fabricate.contraption.connectBlock(block)
	--for performance reasons this shuld propegate on next tick, as in instead of runnig the funciton
	--now on the next block we run it on the next tick

	--LOGIC
	--for block on each side of this block
	--if block is fabricate compatible --probly a tag
	--if this block and that block are lined up to connect
	--if that block is already part of a contraption
	--connect to that block
	--else
	--make a new contraption and ourselves and that block to it
	--run this function on that block

	--fabricate.contraption.connectBlock(otherBlock);
end

--EVENTS

--RUNTIME

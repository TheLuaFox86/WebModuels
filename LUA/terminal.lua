js.global.document:write([[
<textarea id="DSP">Error</textarea>
<button id='enter'> Enter Text</button>
]])
local entered = false
local ent = js.global.document:getElementById("enter")
local dsp = js.global.document:getElementById("DSP")
js.global:alert(dsp)
_G.term = {
	read = function()
		local c = ""
		local a = function()
			c = js.global.window:prompt("input")
			entered = true
		end
		ent.onclick = a
		repeat
			--Wait Until
		until entered
		entered = false
		ent.onclick = function()
			return;
		end
		return c
	end,
	write = function(...)
	local a = ''
	for _, v in ipairs({...}) do
		a = a .. v .. "    "
	end
	dsp.value = dsp.value .. a:sub(1, #a - 4)
	end
}
dsp.value = ""
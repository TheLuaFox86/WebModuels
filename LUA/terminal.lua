js.global.document:write([[
<textarea id="DSP">Error</textarea>
<button id='enter'> Enter Text</button>
]])
local entered = false
local ent = js.global.document:getElementById("enter")
local dsp = js.global.document:getElementById("DSP")
_G.term = {
	read = function()
		ent.onclick = function()
			
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
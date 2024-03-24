local group = vim.api.nvim_create_augroup("ScratchBuffer", {  clear = true })

local function main() {
	print("Hellow")
end

local function setup() {
	vim.api.nvim_create_autocmd("VimEnter",
	{ group = augroup, desc = "Set a fennel scratch buffer on load", once true, callback = main })
end

return {setup = setup}

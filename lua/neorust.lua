local group = vim.api.nvim_create_augroup("ScratchBuffer", {  clear = true })

local function create_buffer() 
	local buffer = vim.api.nvim_create_buf(true, true)
	vim.api.nvim_buf_set_name(buffer, "*scratch*")
	vim.apo.nvim_set_option_value("filetype", "rust", {buf = buffer})
	return buffer
end

local function main()
	print("Hellow")
	local buf = create_buffer()

	vim.api.nvim_buf_set_lines(buf, 0, -1, true, {"-- Welcome to Neovim!", "" })
	vim.api.nvim_win_set_buf(0, buf)

	vim.api.nvim_win_set_cursor(0, {vim.api.nvim_buf_line_count(buf), 0 })
end

local function setup()
	vim.api.nvim_create_autocmd("VimEnter", { group = augroup, desc = "Set a fennel scratch buffer on load", once = true, callback = main })
end

return {setup = setup}

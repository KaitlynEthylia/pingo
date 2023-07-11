local util = require('pingo.util')

--- @class PingoConfig
--- @field hide_on_screen boolean
--- @field off_buffer 'show'|'hide'|'top'|'bottom'|'clear'
--- @field seperator? string
--- @field icon? string
--- @field end_icon? string
--- @field max_height? integer
--- @field zindex integer
--- @field position 'relative'|'top'|'bottom'
--- @field live_update boolean
--- @field add_new_lines boolean
--- @field traverse? PingoTraverseConfig
--- @field telescope? PingoTelescopeConfig
--- @field context? PingoContextConfig

--- @type PingoConfig
local defaultConfig = {
	hide_on_screen = true,
	off_buffer = 'hide',
	seperator = nil,
	icon = '>',
	end_icon = nil,
	max_height = 30,
	zindex = 50,
	position = 'relative',
	live_update = false,
	add_new_lines = false,
	traverse = nil,
	telescope = nil,
	context = nil,
}

--- @type PingoConfig
local config = {}

-- The tables that are gonna be stored at vim.wo[winnr].pingo, the last two
-- fields are for the extensions so I'm leaving them out for now.
--- @class Pingo
--- @field bufnr buffer
--- @field startl integer
--- @field endl integer
--- @field autocmd? integer
--- @field win { bufnr: buffer, winnr: window }
--- @field traverse {}
--- @field telescope {}

local M = {}

function M.pin(winnr, startl, endl, bufnr)
	util.runCallback('pin', {})
end

function M.pinShow(winnr)
	util.runCallback('show', {})
end

function M.pinHide(winnr)
	util.runCallback('hide', {})
end

function M.pinClear(winnr)
	util.runCallback('clear', {})
end

function M.pinGo(winnr)
	util.runCallback('go', {})
end

local has_setup = false

--- @param opts? PingoConfig
function M.setup(opts)
	if has_setup then return end
	has_setup = true
	opts = opts or {}
	util.runCallback('setup', {})

	config = vim.tbl_deep_extend('force', defaultConfig, opts)
end

--- @return PingoConfig?
function M.config()
	if has_setup then return end
	return config
end

return M

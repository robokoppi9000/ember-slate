-- Ember Slate — Neovim colorscheme

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
	vim.cmd("syntax reset")
end
vim.o.termguicolors = true
vim.o.background = "dark"
vim.g.colors_name = "ember-slate"

local c = {
	bg = "#0B0E14",
	surface = "#10141B",
	elevated = "#161B23",
	elem = "#1B212B",
	elem_hover = "#232A35",
	elem_active = "#2C3440",
	elem_selected = "#38414F",

	fg = "#FFFFFF",
	muted = "#8A96A3",
	placeholder = "#5C6773",
	disabled = "#3E4450",

	orange = "#F39F5A", -- keywords / primary accent
	gold = "#FFC66D", -- functions / attributes
	teal = "#63D6D6", -- brackets / types / tags
	green = "#A8D98C", -- strings
	blue = "#7EA6E0", -- info / hint
	red = "#E5646D", -- errors / deletions
	rose = "#AE445A", -- minor / rarely used
}

local hl = vim.api.nvim_set_hl

local groups = {
	Normal = { fg = c.fg, bg = c.bg },
	NormalFloat = { fg = c.fg, bg = c.surface },
	FloatBorder = { fg = c.elem_hover, bg = c.surface },
	Comment = { fg = c.placeholder, italic = true },
	Constant = { fg = c.orange },
	String = { fg = c.green },
	Character = { fg = c.green },
	Number = { fg = c.orange },
	Boolean = { fg = c.orange },
	Float = { fg = c.orange },
	Identifier = { fg = c.fg },
	Function = { fg = c.gold },
	Statement = { fg = c.orange },
	Conditional = { fg = c.orange },
	Repeat = { fg = c.orange },
	Label = { fg = c.orange },
	Operator = { fg = c.muted },
	Keyword = { fg = c.orange },
	Exception = { fg = c.orange },
	PreProc = { fg = c.muted },
	Include = { fg = c.orange },
	Define = { fg = c.orange },
	Macro = { fg = c.gold },
	PreCondit = { fg = c.muted },
	Type = { fg = c.teal },
	StorageClass = { fg = c.orange },
	Structure = { fg = c.teal },
	Typedef = { fg = c.teal },
	Special = { fg = c.orange },
	SpecialChar = { fg = c.gold },
	Tag = { fg = c.teal },
	Delimiter = { fg = c.muted },
	SpecialComment = { fg = c.placeholder, italic = true },
	Underlined = { fg = c.blue, underline = true },
	Ignore = { fg = c.disabled },
	Error = { fg = c.red },
	Todo = { fg = c.bg, bg = c.orange, bold = true },

	LineNr = { fg = c.placeholder },
	CursorLineNr = { fg = c.orange },
	CursorLine = { bg = c.elem },
	Visual = { bg = c.elem_active },
	Search = { fg = c.bg, bg = c.orange },
	IncSearch = { fg = c.bg, bg = c.gold },
	Pmenu = { fg = c.fg, bg = c.elevated },
	PmenuSel = { fg = c.bg, bg = c.orange },
	StatusLine = { fg = c.fg, bg = c.surface },
	StatusLineNC = { fg = c.muted, bg = c.surface },
	VertSplit = { fg = c.elem_hover, bg = c.bg },
	WinSeparator = { fg = c.elem_hover, bg = c.bg },
	SignColumn = { bg = c.bg },
	FoldColumn = { fg = c.placeholder, bg = c.bg },
	Folded = { fg = c.muted, bg = c.elem },
	MatchParen = { fg = c.gold, bold = true },
	NonText = { fg = c.disabled },
	Whitespace = { fg = c.disabled },

	TelescopeNormal = { fg = c.fg, bg = c.surface },
	TelescopeBorder = { fg = c.elem_hover, bg = c.surface },
	TelescopePromptNormal = { fg = c.fg, bg = c.elevated },
	TelescopePromptBorder = { fg = c.elem_hover, bg = c.elevated },
	TelescopePromptPrefix = { fg = c.orange },
	TelescopePromptCounter = { fg = c.muted },
	TelescopeResultsNormal = { fg = c.fg, bg = c.surface },
	TelescopeResultsBorder = { fg = c.elem_hover, bg = c.surface },
	TelescopePreviewNormal = { fg = c.fg, bg = c.surface },
	TelescopePreviewBorder = { fg = c.elem_hover, bg = c.surface },
	TelescopeSelection = { fg = c.fg, bg = c.elem_active, bold = true },
	TelescopeSelectionCaret = { fg = c.orange, bg = c.elem_active },
	TelescopeMultiSelection = { fg = c.teal },
	TelescopeMatching = { fg = c.gold, bold = true },
	TelescopePromptTitle = { fg = c.orange, bold = true },
	TelescopeResultsTitle = { fg = c.teal, bold = true },
	TelescopePreviewTitle = { fg = c.green, bold = true },

	DiffAdd = { fg = c.green, bg = "#182611" },
	DiffChange = { fg = c.orange, bg = "#332506" },
	DiffDelete = { fg = c.red, bg = "#2A0710" },
	DiffText = { fg = c.gold, bg = "#332506" },

	["@comment"] = { link = "Comment" },
	["@string"] = { link = "String" },
	["@string.escape"] = { fg = c.orange },
	["@string.regex"] = { fg = "#C3E8A8" },
	["@number"] = { link = "Number" },
	["@boolean"] = { link = "Boolean" },
	["@constant"] = { link = "Constant" },
	["@constant.builtin"] = { fg = c.orange },
	["@function"] = { link = "Function" },
	["@function.builtin"] = { fg = c.gold },
	["@keyword"] = { link = "Keyword" },
	["@keyword.function"] = { fg = c.orange },
	["@keyword.return"] = { fg = c.orange },
	["@operator"] = { link = "Operator" },
	["@punctuation.bracket"] = { fg = c.teal },
	["@punctuation.delimiter"] = { fg = c.muted },
	["@punctuation.special"] = { fg = c.orange },
	["@tag"] = { link = "Tag" },
	["@tag.attribute"] = { fg = c.gold },
	["@type"] = { link = "Type" },
	["@type.builtin"] = { fg = c.teal },
	["@variable"] = { fg = c.fg },
	["@variable.builtin"] = { fg = c.orange },
	["@property"] = { fg = c.fg },
	["@field"] = { fg = c.fg },
	["@parameter"] = { fg = c.fg },
}

for group, opts in pairs(groups) do
	hl(0, group, opts)
end

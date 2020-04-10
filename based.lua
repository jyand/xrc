#!/usr/bin/lua5.3

-- 'based' color scheme by John DeSalvo
local lexers = vis.lexers

local colors = {
	base03  = '#000000',
	base02  = '#ff00f3',
	base01  = '#ff8100',
	base00  = '#aaaa7f',
	base0   = '#ffffff',
	base1   = '#33ff00',
	base2   = '#8c00ff',
	base3   = '#ffff07',
	yellow  = '#00c27b',
	orange  = '#aa5500',
	red     = '#8c00ff',
	magenta = '#aa0049',
	violet  = '#ff0000',
	blue    = '#ffdbfa',
	cyan    = '#00ffff',
	green   = '#ffa4a6',
}

lexers.colors = colors
local fg = ',fore:'..colors.base0..','
local bg = ',back:'..colors.base03..','

lexers.STYLE_DEFAULT = bg..fg
lexers.STYLE_NOTHING = bg
lexers.STYLE_CLASS = 'fore:yellow'
lexers.STYLE_COMMENT = 'fore:'..colors.base01
lexers.STYLE_CONSTANT = 'fore:'..colors.cyan
lexers.STYLE_DEFINITION = 'fore:'..colors.blue
lexers.STYLE_ERROR = 'fore:'..colors.red..',italics'
lexers.STYLE_FUNCTION = 'fore:'..colors.blue
lexers.STYLE_KEYWORD = 'fore:'..colors.green
lexers.STYLE_LABEL = 'fore:'..colors.green
lexers.STYLE_NUMBER = 'fore:'..colors.cyan
lexers.STYLE_OPERATOR = 'fore:'..colors.green
lexers.STYLE_REGEX = 'fore:green'
lexers.STYLE_STRING = 'fore:'..colors.cyan
lexers.STYLE_PREPROCESSOR = 'fore:'..colors.orange
lexers.STYLE_TAG = 'fore:'..colors.red
lexers.STYLE_TYPE = 'fore:'..colors.yellow
lexers.STYLE_VARIABLE = 'fore:'..colors.blue
lexers.STYLE_WHITESPACE = 'fore:'..colors.base01
lexers.STYLE_EMBEDDED = 'back:blue'
lexers.STYLE_IDENTIFIER = fg

lexers.STYLE_LINENUMBER = 'fore:'..colors.base00..',back:'..colors.base02
lexers.STYLE_LINENUMBER_CURSOR = 'back:'..colors.base00..',fore:'..colors.base02
lexers.STYLE_CURSOR = 'fore:'..colors.base03..',back:'..colors.base0
lexers.STYLE_CURSOR_PRIMARY = lexers.STYLE_CURSOR..',back:yellow'
lexers.STYLE_CURSOR_LINE = 'back:'..colors.base02
lexers.STYLE_COLOR_COLUMN = 'back:'..colors.base02
lexers.STYLE_SELECTION = 'back:white'
lexers.STYLE_STATUS = 'back:'..colors.base00..',fore:'..colors.base02
lexers.STYLE_STATUS_FOCUSED = 'back:'..colors.base1..',fore:'..colors.base02
lexers.STYLE_SEPARATOR = lexers.STYLE_DEFAULT
lexers.STYLE_INFO = 'fore:default,back:default,bold'
lexers.STYLE_EOF = 'fore:'..colors.base01

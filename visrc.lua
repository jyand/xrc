require('vis')
-- require('surround')
-- require('vis-commentary')

vis.events.subscribe(vis.events.INIT, function()
	vis:command('set ai on')
	vis:command('set expandtab true')
	vis:command('set tabwidth 8')
	vis:command('set theme based')
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	vis:command('set relativenumber')
end)

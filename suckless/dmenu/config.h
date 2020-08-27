/* dmenu: specific build by jyand */

static int topbar = 0 ;
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = { "monospace:size=12" } ;
static const char *prompt      = "dmenu rice by jyan  > " ;
static const char *colors[SchemeLast][2] = {
	/*                  fg         bg     */
	[SchemeNorm] = { "#ffffff", "#551a8b" },
	[SchemeSel] = { "#000000", "#ffff07" },
	[SchemeOut] = { "#222222", "#00ffff" },
} ;
static unsigned int lines      = 32 ;
/* Characters not considered part of a word while deleting words */
static const char worddelimiters[] = " =!?/.,:;&|(){}[]" ;

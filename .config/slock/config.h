/* user and group to drop privileges to */
static const char *user  = "ale";
static const char *group = "ale";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "#111217",     /* after initialization */
	[INPUT] =  "#20242a",   /* during input */
	[FAILED] = "#ba8991",   /* wrong password */
        [CAPS] = "#7ba5b5",
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;

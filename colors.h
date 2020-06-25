/* st colours */
static const char *colorname[] = {
	/* 8 normal colors */
	"#2E2E2E", /* black   */
	"#F7748D", /* red     */
	"#76EDA3", /* green   */
	"#F7BF65", /* yellow  */
	"#4DA4F0", /* blue    */
	"#E88BE0", /* magenta */
	"#1DDBC9", /* cyan    */
	"#E9E9E9", /* white   */

	/* 8 bright colors */
	"#5C5C5C", /* black   */
	"#FF9CAA", /* red     */
	"#A4EDAC", /* green   */
	"#F7E2A1", /* yellow  */
	"#B7C8FF", /* blue    */
	"#EDBBE9", /* magenta */
	"#81F5E1", /* cyan    */
	"#F5F5F5", /* white   */

	[255] = 0,

};

/* dwm colors */
static const char col_gray1[]  = "#2E2E2E";
static const char col_gray2[]  = "#5C5C5C";
static const char col_white[]  = "#E9E9E9";
static const char *colors[][3] = {
	/*               fg         bg         border   */
	[SchemeNorm] = { col_white, col_gray1, col_gray1 },
	[SchemeSel]  = { col_white, col_gray2, col_gray2 },
	[SchemeHid]  = { col_gray2, col_white, col_white },
};

/* dmenu */
static const char col_gray1[]  = "#2E2E2E";
static const char col_gray2[]  = "#5C5C5C";
static const char col_white[]  = "#E9E9E9";
static const char *colors[SchemeLast][2] = {
	             /*     fg         bg       */
	[SchemeNorm] = { col_white, col_gray1 },
	[SchemeSel]  = { col_white, col_gray2 },
	[SchemeOut]  = { col_gray2, col_white },
};

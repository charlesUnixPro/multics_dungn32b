FT = ft -ansi77 -fold -ntb 

all : bound_dungeon

bound_dungeon : bound_dungeon.1.archive bound_dungeon.2.archive
	dl bound_dungeon
	bind bound_dungeon.1 bound_dungeon.2

objs1 = dungeo game gdt objects objs2 objs3 parser pars2 pars3 rooms
objs2 = subr subr2 subr3 subr4 subr5 subr6 subr7 timefnc timefnc2 verbs verbs2 verbs3 dtext_

bound_dungeon.1.archive : $(objs1)
	dl bound_dungeon.1.archive
	ac a bound_dungeon.1  $(objs1)

bound_dungeon.2.archive : $(objs2) bound_dungeon.bind
	dl bound_dungeon.2.archive
	ac a bound_dungeon.2  $(objs2) bound_dungeon.bind


clean :
	dl $(objs1) $(objs2)

archive : dungeon.s.archive

ac_segments = makefile dungeo.fortran game.fortran gdt.fortran objects.fortran objs2.fortran objs3.fortran parser.fortran pars2.fortran pars3.fortran rooms.fortran subr.fortran subr2.fortran subr3.fortran subr4.fortran subr5.fortran subr6.fortran subr7.fortran timefnc.fortran timefnc2.fortran verbs.fortran verbs2.fortran verbs3.fortran dparam.incl.fortran DINDX.DAT DTEXT.DAT dtext_.pl1 bound_dungeon.bind readme

dungeon.s.archive : $(ac_segments)
	dl dungeon.s.archive
	ac a dungeon.s.archive $(ac_segments)

dungeo : dungeo.fortran dparam.incl.fortran
	$(FT) dungeo

game : game.fortran dparam.incl.fortran
	$(FT) game

gdt : gdt.fortran dparam.incl.fortran
	$(FT) gdt

objects : objects.fortran dparam.incl.fortran
	$(FT) objects

objs2 : objs2.fortran dparam.incl.fortran
	$(FT) objs2

objs3 : objs3.fortran dparam.incl.fortran
	$(FT) objs3

parser : parser.fortran dparam.incl.fortran
	$(FT) parser

pars2 : pars2.fortran dparam.incl.fortran
	$(FT) pars2

pars3 : pars3.fortran dparam.incl.fortran
	$(FT) pars3

rooms : rooms.fortran dparam.incl.fortran
	$(FT) rooms

subr : subr.fortran dparam.incl.fortran
	$(FT) subr

subr2 : subr2.fortran dparam.incl.fortran
	$(FT) subr2

subr3 : subr3.fortran dparam.incl.fortran
	$(FT) subr3

subr4 : subr4.fortran dparam.incl.fortran
	$(FT) subr4

subr5 : subr5.fortran dparam.incl.fortran
	$(FT) subr5

subr6 : subr6.fortran dparam.incl.fortran
	$(FT) subr6

subr7 : subr7.fortran dparam.incl.fortran
	$(FT) subr7

timefnc : timefnc.fortran dparam.incl.fortran
	$(FT) timefnc

timefnc2 : timefnc2.fortran dparam.incl.fortran
	$(FT) timefnc2

verbs : verbs.fortran dparam.incl.fortran
	$(FT) verbs

verbs2 : verbs2.fortran dparam.incl.fortran
	$(FT) verbs2

verbs3 : verbs3.fortran dparam.incl.fortran
	$(FT) verbs3

dtext_ : dtext_.pl1
	pl1 dtext_


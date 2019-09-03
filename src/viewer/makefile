# Modified makefile for viewer (MacOS)

C = gcc -Wall
INCLUDE = -I/usr/local/include
LIBPATH = -L/usr/local/lib
FLAG    = -Wno-deprecated-declarations
COMMON  = ../common/
DIRBIN  = ../../bin

LIBS = -lm -lglut -framework OpenGL -framework GLUT

Viewer : view.c 
	$(C) view.c $(COMMON)io.c $(COMMON)util.c $(FLAG) $(INCLUDE) $(LIBPATH) $(LIBS) -O3 -o $(DIRBIN)/spf-view

clean : 
	rm -f *~ src/*~ obj/*.o view

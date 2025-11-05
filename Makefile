CC      = clang
CFLAGS  = -std=c23 -g -Wall -Wextra -Wpedantic -Wshadow -Wstrict-prototypes -Wvla
# CPPFLAGS = <INCLUDE PATH> no longer have to write the full path of a header but only its file name in the sources: #include "icecream.h" instead of #include "../../path/to/include/icecream.h".
RM      = rm -rf
BUILDDIR  = build/
SRCDIR  = ray_tracing/
 
default: all

all: $(BUILDDIR)main

$(BUILDDIR)main: $(BUILDDIR)vec3.o $(BUILDDIR)colour.o $(BUILDDIR)sphere.o $(BUILDDIR)interval.o $(BUILDDIR)ray.o $(BUILDDIR)camera.o $(BUILDDIR)helper.o
	$(CC) $(CFLAGS) -o $(BUILDDIR)main $(SRCDIR)main.c $(BUILDDIR)vec3.o $(BUILDDIR)colour.o $(BUILDDIR)sphere.o $(BUILDDIR)interval.o $(BUILDDIR)ray.o $(BUILDDIR)camera.o $(BUILDDIR)helper.o -lm

$(BUILDDIR)vec3.o: $(SRCDIR)vec3.c $(SRCDIR)vec3.h
	$(CC) $(CFLAGS) -c $(SRCDIR)vec3.c -o $(BUILDDIR)vec3.o

$(BUILDDIR)colour.o: $(SRCDIR)colour.c $(SRCDIR)colour.h
	$(CC) $(CFLAGS) -c $(SRCDIR)colour.c -o $(BUILDDIR)colour.o

$(BUILDDIR)sphere.o: $(SRCDIR)sphere.c $(SRCDIR)sphere.h
	$(CC) $(CFLAGS) -c $(SRCDIR)sphere.c -o $(BUILDDIR)sphere.o

$(BUILDDIR)interval.o: $(SRCDIR)interval.c $(SRCDIR)interval.h
	$(CC) $(CFLAGS) -c $(SRCDIR)interval.c -o $(BUILDDIR)interval.o

$(BUILDDIR)ray.o: $(SRCDIR)ray.c $(SRCDIR)ray.h
	$(CC) $(CFLAGS) -c $(SRCDIR)ray.c -o $(BUILDDIR)ray.o 

$(BUILDDIR)camera.o: $(SRCDIR)camera.c $(SRCDIR)camera.h
	$(CC) $(CFLAGS) -c $(SRCDIR)camera.c -o $(BUILDDIR)camera.o 

$(BUILDDIR)helper.o: $(SRCDIR)helper.c $(SRCDIR)helper.h
	$(CC) $(CFLAGS) -c $(SRCDIR)helper.c -o $(BUILDDIR)helper.o 

# clean:
# 	$(RM) $(BUILDDIR)main $(BUILDDIR)ray.o $(BUILDDIR)interval.o $(BUILDDIR)colour.o $(BUILDDIR)vec3.o $(BUILDDIR)camera.o $(BUILDDIR)sphere.o $(BUILDDIR)helper.o $(BUILDDIR)main.dSYM

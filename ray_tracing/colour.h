#ifndef COLOUR_H
#define COLOUR_H

#include "interval.h"
#include "vec3.h"

#include <stdio.h>

typedef Vec3 Colour;

Colour colour(double r, double g, double b);
void write_colour(Colour pixel_colour);

#endif

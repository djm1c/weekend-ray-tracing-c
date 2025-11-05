#include "camera.h"
#include "sphere.h"
#include "vec3.h"

int main(void)
{
    // World
    SphereList *world = malloc(sizeof(SphereList));

    sphere_list_add(world, sphere(p3(0.0, -100.5, -1.0), 100));
    sphere_list_add(world, sphere(p3(0.0, 0.0, -1.0), 0.5));

    render(world);

    return 0;
}

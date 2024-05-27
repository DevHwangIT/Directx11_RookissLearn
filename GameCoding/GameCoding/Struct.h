#pragma once
#include "Types.h"

struct Vertex 
{
	Vec3 Position;
	//Color color;
	Vec2 uv;
};

struct TransformData 
{
	Vec3 offset;
	float dummy;
};
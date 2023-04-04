shader_type canvas_item;

// This shader causes the background to appear to be infinitely scrolling!
// https://www.youtube.com/watch?v=dkDVRyHjzeI

void fragment() {
	float speed = 0.1;
	vec2 new_uv = vec2(UV.x + TIME * speed, UV.y);
	COLOR = texture(TEXTURE, new_uv);
}

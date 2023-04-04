shader_type canvas_item;

const float SPEED = 0.1;

void fragment() {
	vec2 new_uv = vec2(UV.x + TIME * SPEED, UV.y);
	COLOR = texture(TEXTURE, new_uv);
}

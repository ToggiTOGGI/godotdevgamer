shader_type canvas_item;

uniform float pixel_size : hint_range(1.0, 64.0) = 1.0;
uniform sampler2D screen_texture : hint_screen_texture;

void fragment() {
    vec2 uv = SCREEN_UV;
    vec2 pixelated_uv = floor(uv * pixel_size) / pixel_size;
    COLOR = texture(screen_texture, pixelated_uv);
}
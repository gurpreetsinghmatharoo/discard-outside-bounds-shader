//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec3 v_vPosition;
varying vec4 v_vColour;

uniform vec4 bounds;

void main()
{
	// Discard
	if (v_vPosition.x < bounds.x || v_vPosition.y < bounds.y || v_vPosition.x >= bounds.z || v_vPosition.y >= bounds.w) {
		discard;
	}
	
	// Color
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}
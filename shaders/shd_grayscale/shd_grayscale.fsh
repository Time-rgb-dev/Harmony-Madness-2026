//
// Simple Grayscale shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_Amount; 

void main()
{
    vec4 tex = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
    float gray = dot(tex.rgb, vec3(0.299, 0.587, 0.114));
    vec3 final_color = mix(tex.rgb, vec3(gray), u_Amount);
    
    gl_FragColor = vec4(final_color, tex.a);
}
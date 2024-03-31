//
// Example deutranopic shader for Hyperland.
//

precision highp float;
varying vec2 v_texcoord;
uniform sampler2D tex;
const float gamma = 1.0;
void main() {
  vec4 pixColor = texture2D(tex, v_texcoord);

  // Define deutranopia color matrix (replace with your desired matrix)
  const mat4 deutranopiaMatrix = mat4(
    vec4(0.92, 0.44, 0.11, 0.0),   // Very slight red scaling reduction
    vec4(0.8, 0.7, 0.42, 0.0),   // Very slight green scaling reduction
    vec4(0.0, 0.15, 1.25, 0.0),   // Very slight blue scaling increase
    vec4(0.0, 0.0, 0.0, 1.0)
  );
  vec4 transformedColor = deutranopiaMatrix * pixColor;
  transformedColor.rgb = pow(transformedColor.rgb, vec3(gamma));
  gl_FragColor =  vec4(transformedColor.rgb, transformedColor.a);
}

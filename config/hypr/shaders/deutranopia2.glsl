//
// Deutanopic shader for Hyperland with high precision floats (no color matrix).
//

precision highp float;
varying vec2 v_texcoord;
uniform sampler2D tex;

void main() {
  vec4 pixColor = texture2D(tex, v_texcoord);

  // Reduce green channel impact (adjust greenReductionFactor for desired effect)
  gl_FragColor = vec4(
      pixColor.x, // Red channel stays the same
      pixColor.y * 0.9, // Green channel scaled down
      pixColor.z, // Blue channel stays the same
      pixColor.w  // Alpha channel stays the same
  );
}

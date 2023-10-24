uniform float time;
varying vec2 vUv;
varying vec3 vPosition;
uniform vec2 pixels;
uniform vec3 uMin;
float PI = 3.1415926;

attribute vec3 translate;
void main () {
	float depth = 5.;
	vUv = uv;
	vec3 newpos = position * translate;
	newpos.z = newpos.z + time;
	gl_Position = projectionMatrix * modelViewMatrix * vec4(newpos, 1.0);
}
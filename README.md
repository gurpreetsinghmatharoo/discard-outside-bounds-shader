# discard-outside-bounds-shader (GameMaker Studio)

This shader can be used to draw something within a rectangular area.

The coordinates of that rectangle need to be passed into the shader as a vec4 uniform.

```js
// Create
uni_bounds = shader_get_uniform(shDiscardOutsideBounds, "bounds");

// Draw
shader_set(shDiscardOutsideBounds);
shader_set_uniform_f(uni_bounds, 30, 30, 80, 80);

 // <draw>

shader_reset();
```

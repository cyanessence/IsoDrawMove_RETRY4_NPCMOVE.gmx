// Create particle system.
global.PS_0 = part_system_create();
part_system_depth(global.PS_0,1000000);

// Create emitter.
global.EM_0 = part_emitter_create(global.PS_0);

    // Create particle types.

// Path effect.
global.pathEffect = part_type_create();
part_type_shape(global.pathEffect,pt_shape_flare);
part_type_size(global.pathEffect,0.15,0.3,0,0);
part_type_color1(global.pathEffect,c_white);
part_type_life(global.pathEffect,2,2);

// Body flame effect.
global.bodyFlame = part_type_create();
part_type_shape(global.bodyFlame,pt_shape_flare);
part_type_size(global.bodyFlame,0.1,0.3,0,0.01);
part_type_color2(global.bodyFlame,c_yellow,c_red);
part_type_alpha2(global.bodyFlame,0.1,0);
part_type_speed(global.bodyFlame,0.25,0.5,0.05,0.05);
part_type_direction(global.bodyFlame,0,359,0,5);
part_type_life(global.bodyFlame,20,40);

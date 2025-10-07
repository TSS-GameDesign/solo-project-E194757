
// Horizontal movement
if (place_meeting(x + hsp, y, Obj_wall_parent)) {
    // Collision on the right/left
    hsp = 0; // Stop horizontal movement
}
x += hsp; // Apply horizontal movement

// Vertical movement
if (place_meeting(x, y + vsp, Obj_wall_parent)) {
    // Collision on the top/bottom
    vsp = 0; // Stop vertical movement
}
y += vsp; // Apply vertical movement

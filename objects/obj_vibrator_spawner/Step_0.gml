// obj_obstacle_spawner: Step Event
spawn_timer--;

if (spawn_timer <= 0) {
    // 90% chance obstacle, 10% chance energy
    if (irandom(6) == 0) {
        instance_create_layer(0, 0, "Obstacles", obj_vibrator_energy);
    } else {
        instance_create_layer(0, 0, "Obstacles", obj_vibrator_obstacle);
    }

    // faster spawn rate to account for split chance
    spawn_timer = irandom_range(
        80 - (obj_vibrator.level / 5) * 25,
        180 - (obj_vibrator.level / 5) * 25
    );
}

image_angle = direction;

// Define variables for direction, acceleration, target coordinates, enemy instance, and maximum speed
var dir, accel, ex, ey, enemy, max_speed;

// Assign values to variables
enemy = o_enemy;
accel = .5;
max_speed = 6;


if instance_exists(enemy) {
    // Get the nearest enemy's coordinates
    ex = instance_nearest(x, y, enemy).x;	
    ey = instance_nearest(x, y, enemy).y;
    
    // Calculate the direction towards the enemy
    dir = point_direction(x, y, ex, ey);
    // Add motion towards the enemy with acceleration
    motion_add(dir, accel);
    
    // Limit speed to maximum speed
    if speed >= max_speed {
        speed = max_speed;	
    }
    
    // Move towards the enemy if within a certain distance
    if distance_to_object(enemy) < 30 {
        move_towards_point(ex, ey, speed);	
    } else {
        // Stop movement and accelerate if not within distance
        direction = 0;
        if speed < max_speed {
            speed += accel;
        }
    }
}


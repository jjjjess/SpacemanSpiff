#region "Standard"
switch(argument0){
	case "standard":
	o_stats.cooldown = 10;
	if o_stats.weapon_power == 0 {
		instance_create_layer(x+8, y, "Bullets", o_bullet);
	}
	
	if  o_stats.weapon_power == 1 {
		instance_create_layer(x+8, y-2, "Bullets", o_bullet)
		instance_create_layer(x+8, y+2, "Bullets", o_bullet);
	}
	
	if  o_stats.weapon_power == 2 {
		instance_create_layer(x+8, y-5, "Bullets", o_bullet)
		instance_create_layer(x+8, y, "Bullets", o_bullet);
		instance_create_layer(x+8, y+5, "Bullets", o_bullet);
	}
	
	if  o_stats.weapon_power == 3 {
		instance_create_layer(x+8, y-7, "Bullets", o_bullet)
		instance_create_layer(x+8, y-2, "Bullets", o_bullet);
		instance_create_layer(x+8, y+2, "Bullets", o_bullet);
		instance_create_layer(x+8, y+7, "Bullets", o_bullet);
	}
	
	if  o_stats.weapon_power >= 4 {
		instance_create_layer(x+8, y-5, "Bullets", o_bullet)
		instance_create_layer(x+8, y-9, "Bullets", o_bullet);
		instance_create_layer(x+8, y, "Bullets", o_bullet);
		instance_create_layer(x+8, y+5, "Bullets", o_bullet);
		instance_create_layer(x+8, y+9, "Bullets", o_bullet);
	}
	
	break;

#endregion "Standard"

#region "Spread Gun"

	case "spread":
	o_stats.cooldown = 15;
	if o_stats.weapon_power == 0 {
	var a, b, c;
		a = instance_create_layer(x+8, y, "Instances", o_bullet);
		b = instance_create_layer(x+8, y, "Instances", o_bullet);
		c = instance_create_layer(x+8, y, "Instances", o_bullet);
		a.direction = 20;
		b.direction = 0;
		c.direction = 340;
	}
	
	if o_stats.weapon_power == 1 {
	var a, b, c, d;
		a = instance_create_layer(x+8, y, "Instances", o_bullet);
		b = instance_create_layer(x+8, y, "Instances", o_bullet);
		c = instance_create_layer(x+8, y, "Instances", o_bullet);
		d = instance_create_layer(x+8, y, "Instances", o_bullet);
		a.direction = 30;
		b.direction = 10;
		c.direction = 350;
		d.direction = 330;
	}
	
	if o_stats.weapon_power == 2 {
	var a, b, c, d, e;
		a = instance_create_layer(x+8, y, "Instances", o_bullet);
		b = instance_create_layer(x+8, y, "Instances", o_bullet);
		c = instance_create_layer(x+8, y, "Instances", o_bullet);
		d = instance_create_layer(x+8, y, "Instances", o_bullet);
		e = instance_create_layer(x+8, y, "Instances", o_bullet);
		a.direction = 15;
		b.direction = 0;
		c.direction = 345;
		d.direction = 30;
		e.direction = 330;
	}
	
	if o_stats.weapon_power == 3 {
	var a, b, c, d, e, f;
		a = instance_create_layer(x+8, y, "Instances", o_bullet);
		b = instance_create_layer(x+8, y, "Instances", o_bullet);
		c = instance_create_layer(x+8, y, "Instances", o_bullet);
		d = instance_create_layer(x+8, y, "Instances", o_bullet);
		e = instance_create_layer(x+8, y, "Instances", o_bullet);
		f = instance_create_layer(x+8, y, "Instances", o_bullet);
		a.direction = 40;
		b.direction = 25;
		c.direction = 10;
		d.direction = 350;
		e.direction = 335;
		f.direction = 320;
	}
	
	if o_stats.weapon_power >= 4 {
	var a, b, c, d, e, f, g;
		a = instance_create_layer(x+8, y, "Instances", o_bullet);
		b = instance_create_layer(x+8, y, "Instances", o_bullet);
		c = instance_create_layer(x+8, y, "Instances", o_bullet);
		d = instance_create_layer(x+8, y, "Instances", o_bullet);
		e = instance_create_layer(x+8, y, "Instances", o_bullet);
		f = instance_create_layer(x+8, y, "Instances", o_bullet);
		g = instance_create_layer(x+8, y, "Instances", o_bullet);
		a.direction = 40;
		b.direction = 25;
		c.direction = 10;
		d.direction = 350;
		e.direction = 335;
		f.direction = 320;
		g.direction = 0;
	}
	break;

#endregion "Spread Gun"

#region homing
	case "homing":
		instance_create_layer(x, y, "Bullets", o_missle);
		if o_stats.weapon_power <= 4 {
			o_stats.cooldown = 25 - (o_stats.weapon_power*3);
		}
	break;
#endregion homing

#region "Snipe"

	case "snipe":
	o_stats.cooldown = 15;
		instance_create_layer(x,y, "Bullets", o_snipe);
	break;

#endregion "Snipe"
}



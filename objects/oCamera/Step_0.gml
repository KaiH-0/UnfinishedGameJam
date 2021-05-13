if not instance_exists(target_) exit;
x = lerp(x, target_.x, .1);
y = lerp(y, target_.y-8, .1);
x = round_n(x, scale_);
y = round_n(y, scale_);
x = clamp(x, width_/2 + 16, room_width-width_/2 - 16) + random_range(-shake_remain,shake_remain);
y = clamp(y, height_/2 + 16, room_height-height_/2 - 16) + random_range(-shake_remain,shake_remain);
camera_set_view_pos(view_camera[0], x-width_/2, y-height_/2);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));
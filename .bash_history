cd ~
west init -l config
west update
west zephyr-export
west build -d left -b nice_nano_v2 -- -DZMK_CONFIG=/root/config -DSHIELD=corne_left
west build -d right -b nice_nano_v2 -- -DZMK_CONFIG=/root/config -DSHIELD=corne_right
west build -d left
west build -d right

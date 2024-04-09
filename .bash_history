cd ~
west init -l /root/config
west update
west zephyr-export
west build -s zmk/app -d left -b nice_nano_v2 -- -DZMK_CONFIG=/root/config -DSHIELD=corne_left
west build -s zmk/app -d right -b nice_nano_v2 -- -DZMK_CONFIG=/root/config -DSHIELD=corne_right
west build -d left
west build -d right
mv left/zephyr/zmk.uf2 left.uf2
mv right/zephyr/zmk.uf2 right.uf2
exit

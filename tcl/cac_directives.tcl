set_directive_array_partition -type block -factor 6 -dim 1 cac lineBuffer
set_directive_array_partition -type complete -dim 0 cac rgbWindow
set_directive_loop_merge "cac/cac_row"
set_directive_loop_tripcount -max 8192 -avg 1920 "cac/cac_row"
set_directive_pipeline "cac/cac_col"
set_directive_loop_tripcount -max 4032 -avg 1080 "cac/cac_col"
set_directive_unroll "cac/rgbWindow_loop"
set_directive_unroll "cac/rgbWindow_loop_j"
set_directive_unroll "cac/rgbWindow_read"
set_directive_unroll "cac/pixel_temp_row"
set_directive_unroll "cac/pixel_temp_col"
set_directive_unroll "cac/edge_h_loop"
set_directive_unroll "cac/diff_loop"
set_directive_unroll "cac/window_return_row"
set_directive_pipeline "cac/addon_loop_1"
set_directive_pipeline "cac/addon_loop_2"

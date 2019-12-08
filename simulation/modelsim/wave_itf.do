onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /itf_tb/pipe_itf/clk
add wave -noupdate -radix hexadecimal /itf_tb/pipe_itf/rst
add wave -noupdate -radix hexadecimal -childformat {{/itf_tb/pipe_itf/data_i.vertex_id -radix hexadecimal} {/itf_tb/pipe_itf/data_i.vertex_dst_id -radix hexadecimal} {/itf_tb/pipe_itf/data_i.edge_id -radix hexadecimal} {/itf_tb/pipe_itf/data_i.vertex_data -radix hexadecimal} {/itf_tb/pipe_itf/data_i.vertex_dst_data -radix hexadecimal} {/itf_tb/pipe_itf/data_i.message_data -radix hexadecimal} {/itf_tb/pipe_itf/data_i.edge_data -radix hexadecimal} {/itf_tb/pipe_itf/data_i.edge_temp_data -radix hexadecimal} {/itf_tb/pipe_itf/data_i.last_vertex -radix hexadecimal} {/itf_tb/pipe_itf/data_i.last_edge -radix hexadecimal}} -expand -subitemconfig {/itf_tb/pipe_itf/data_i.vertex_id {-radix hexadecimal} /itf_tb/pipe_itf/data_i.vertex_dst_id {-radix hexadecimal} /itf_tb/pipe_itf/data_i.edge_id {-radix hexadecimal} /itf_tb/pipe_itf/data_i.vertex_data {-radix hexadecimal} /itf_tb/pipe_itf/data_i.vertex_dst_data {-radix hexadecimal} /itf_tb/pipe_itf/data_i.message_data {-radix hexadecimal} /itf_tb/pipe_itf/data_i.edge_data {-radix hexadecimal} /itf_tb/pipe_itf/data_i.edge_temp_data {-radix hexadecimal} /itf_tb/pipe_itf/data_i.last_vertex {-radix hexadecimal} /itf_tb/pipe_itf/data_i.last_edge {-radix hexadecimal}} /itf_tb/pipe_itf/data_i
add wave -noupdate -radix hexadecimal /itf_tb/pipe_itf/valid_i
add wave -noupdate -radix hexadecimal /itf_tb/pipe_itf/ready_o
add wave -noupdate -radix hexadecimal /itf_tb/pipe_itf/valid_o
add wave -noupdate -radix hexadecimal -childformat {{/itf_tb/pipe_itf/data_o.vertex_id -radix hexadecimal} {/itf_tb/pipe_itf/data_o.vertex_dst_id -radix hexadecimal} {/itf_tb/pipe_itf/data_o.edge_id -radix hexadecimal} {/itf_tb/pipe_itf/data_o.vertex_data -radix hexadecimal} {/itf_tb/pipe_itf/data_o.vertex_dst_data -radix hexadecimal} {/itf_tb/pipe_itf/data_o.message_data -radix hexadecimal} {/itf_tb/pipe_itf/data_o.edge_data -radix hexadecimal} {/itf_tb/pipe_itf/data_o.edge_temp_data -radix hexadecimal} {/itf_tb/pipe_itf/data_o.last_vertex -radix hexadecimal} {/itf_tb/pipe_itf/data_o.last_edge -radix hexadecimal}} -expand -subitemconfig {/itf_tb/pipe_itf/data_o.vertex_id {-radix hexadecimal} /itf_tb/pipe_itf/data_o.vertex_dst_id {-radix hexadecimal} /itf_tb/pipe_itf/data_o.edge_id {-radix hexadecimal} /itf_tb/pipe_itf/data_o.vertex_data {-radix hexadecimal} /itf_tb/pipe_itf/data_o.vertex_dst_data {-radix hexadecimal} /itf_tb/pipe_itf/data_o.message_data {-radix hexadecimal} /itf_tb/pipe_itf/data_o.edge_data {-radix hexadecimal} /itf_tb/pipe_itf/data_o.edge_temp_data {-radix hexadecimal} /itf_tb/pipe_itf/data_o.last_vertex {-radix hexadecimal} /itf_tb/pipe_itf/data_o.last_edge {-radix hexadecimal}} /itf_tb/pipe_itf/data_o
add wave -noupdate -radix hexadecimal /itf_tb/pipe_itf/processed
add wave -noupdate -radix hexadecimal -childformat {{/itf_tb/pipe_itf/data_reg.vertex_id -radix hexadecimal} {/itf_tb/pipe_itf/data_reg.vertex_dst_id -radix hexadecimal} {/itf_tb/pipe_itf/data_reg.edge_id -radix hexadecimal} {/itf_tb/pipe_itf/data_reg.vertex_data -radix hexadecimal} {/itf_tb/pipe_itf/data_reg.vertex_dst_data -radix hexadecimal} {/itf_tb/pipe_itf/data_reg.message_data -radix hexadecimal} {/itf_tb/pipe_itf/data_reg.edge_data -radix hexadecimal} {/itf_tb/pipe_itf/data_reg.edge_temp_data -radix hexadecimal} {/itf_tb/pipe_itf/data_reg.last_vertex -radix hexadecimal} {/itf_tb/pipe_itf/data_reg.last_edge -radix hexadecimal}} -expand -subitemconfig {/itf_tb/pipe_itf/data_reg.vertex_id {-radix hexadecimal} /itf_tb/pipe_itf/data_reg.vertex_dst_id {-radix hexadecimal} /itf_tb/pipe_itf/data_reg.edge_id {-radix hexadecimal} /itf_tb/pipe_itf/data_reg.vertex_data {-radix hexadecimal} /itf_tb/pipe_itf/data_reg.vertex_dst_data {-radix hexadecimal} /itf_tb/pipe_itf/data_reg.message_data {-radix hexadecimal} /itf_tb/pipe_itf/data_reg.edge_data {-radix hexadecimal} /itf_tb/pipe_itf/data_reg.edge_temp_data {-radix hexadecimal} /itf_tb/pipe_itf/data_reg.last_vertex {-radix hexadecimal} /itf_tb/pipe_itf/data_reg.last_edge {-radix hexadecimal}} /itf_tb/pipe_itf/data_reg
add wave -noupdate -radix hexadecimal /itf_tb/pipe_itf/empty
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {82 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 213
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {40 ps} {216 ps}

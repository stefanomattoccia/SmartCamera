set clock_constraint { \
    name clk \
    module axi_stream_to_vga \
    port ap_clk \
    period 10 \
    uncertainty 1.25 \
}

set all_path {}

set false_path {}


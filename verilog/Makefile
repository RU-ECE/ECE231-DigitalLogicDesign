# Build/run ECE231 example sims with Icarus Verilog.
#   make          # compile all
#   make run      # compile and run all
#   make clean

IVERILOG ?= iverilog
VVP      ?= vvp
IVFLAGS  ?= -g2012
OUT      := build

BINS := \
	$(OUT)/01intro/00_first_tb \
	$(OUT)/01intro/01_monitoring_tb \
	$(OUT)/01intro/02_clock_tb \
	$(OUT)/01intro/04_nand_gate_tb \
	$(OUT)/01intro/05_mux_2to1_tb \
	$(OUT)/01intro/06_mux2to1_8bit_tb \
	$(OUT)/01intro/07alu_8bit_v0_tb \
	$(OUT)/01intro/20_datatypes_overview_tb \
	$(OUT)/01intro/arith \
	$(OUT)/02intermediate/hello \
	$(OUT)/02intermediate/loops \
	$(OUT)/02intermediate/03_bitwise_ops_tb \
	$(OUT)/02intermediate/ALU64v2_tb

.PHONY: all run clean

all: $(BINS)

run: $(BINS)
	@for b in $(BINS); do \
		echo "===== $$b ====="; \
		$(VVP) $$b || exit 1; \
	done

$(OUT)/01intro/00_first_tb: 01intro/00_first_tb.sv
	@mkdir -p $(dir $@)
	$(IVERILOG) $(IVFLAGS) -o $@ $^

$(OUT)/01intro/01_monitoring_tb: 01intro/01_monitoring_tb.sv
	@mkdir -p $(dir $@)
	$(IVERILOG) $(IVFLAGS) -o $@ $^

$(OUT)/01intro/02_clock_tb: 01intro/02_clock_tb.sv
	@mkdir -p $(dir $@)
	$(IVERILOG) $(IVFLAGS) -o $@ $^

$(OUT)/01intro/04_nand_gate_tb: 01intro/04_nand_gate.sv 01intro/04_nand_gate_tb.sv
	@mkdir -p $(dir $@)
	$(IVERILOG) $(IVFLAGS) -o $@ $^

$(OUT)/01intro/05_mux_2to1_tb: 01intro/05_mux_2to1.sv 01intro/05_mux_2to1_tb.sv
	@mkdir -p $(dir $@)
	$(IVERILOG) $(IVFLAGS) -o $@ $^

$(OUT)/01intro/06_mux2to1_8bit_tb: 01intro/06_mux2to1_8bit.sv 01intro/06_mux2to1_8bit_tb.sv
	@mkdir -p $(dir $@)
	$(IVERILOG) $(IVFLAGS) -o $@ $^

$(OUT)/01intro/07alu_8bit_v0_tb: 01intro/07alu_8bit_v0.sv 01intro/07alu_8bit_v0_tb.sv
	@mkdir -p $(dir $@)
	$(IVERILOG) $(IVFLAGS) -o $@ $^

$(OUT)/01intro/20_datatypes_overview_tb: 01intro/20_datatypes_overview_tb.sv
	@mkdir -p $(dir $@)
	$(IVERILOG) $(IVFLAGS) -o $@ $^

$(OUT)/01intro/arith: 01intro/arith.sv
	@mkdir -p $(dir $@)
	$(IVERILOG) $(IVFLAGS) -o $@ $^

$(OUT)/02intermediate/hello: 02intermediate/hello.sv
	@mkdir -p $(dir $@)
	$(IVERILOG) $(IVFLAGS) -o $@ $^

$(OUT)/02intermediate/loops: 02intermediate/loops.sv
	@mkdir -p $(dir $@)
	$(IVERILOG) $(IVFLAGS) -o $@ $^

$(OUT)/02intermediate/03_bitwise_ops_tb: 02intermediate/03_bitwise_ops_tb.sv
	@mkdir -p $(dir $@)
	$(IVERILOG) $(IVFLAGS) -o $@ $^

$(OUT)/02intermediate/ALU64v2_tb: 02intermediate/ALU64.sv 02intermediate/ALU64v2_tb.sv
	@mkdir -p $(dir $@)
	$(IVERILOG) $(IVFLAGS) -o $@ $^

clean:
	rm -rf $(OUT)
	mkdir -p $(OUT)

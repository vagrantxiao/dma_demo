//width of a packet is 49 bits
//bft2arm_packet = {1'b1, SLV_REG1[15:0], SLV_REG0[31:0]}
//arm2bft_packet = {SLV_REG5[16:0], SLV_REG4[31:0]}
//input fifo empty = SLV_REG3[1]
//output fifo full = SLV_REG3[0]
//input fifo rd_en = SLV_REG7[1]

#define SLV_REG0 XPAR_AXILITE2BFT_V2_0_0_BASEADDR+0
#define SLV_REG1 XPAR_AXILITE2BFT_V2_0_0_BASEADDR+4
#define SLV_REG2 XPAR_AXILITE2BFT_V2_0_0_BASEADDR+8
#define SLV_REG3 XPAR_AXILITE2BFT_V2_0_0_BASEADDR+12
#define SLV_REG4 XPAR_AXILITE2BFT_V2_0_0_BASEADDR+16
#define SLV_REG5 XPAR_AXILITE2BFT_V2_0_0_BASEADDR+20
#define SLV_REG6 XPAR_AXILITE2BFT_V2_0_0_BASEADDR+24
#define SLV_REG7 XPAR_AXILITE2BFT_V2_0_0_BASEADDR+28


void read_from_fifo(int * ctrl_reg);

void write_to_fifo(int high_32_bits, int low_32_bits, int * ctrl_reg);

void init_regs();

int stream_op(int op_type, int i);

int send_packet(int i);


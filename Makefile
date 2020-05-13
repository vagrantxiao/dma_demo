prj_name=dma_demo

all:
	./run.sh

clean:
	rm -f ./vivado*
	rm -rf ./${prj_name}
	rm -rf ./Xil


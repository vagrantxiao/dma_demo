vivado_name=dma_demo
xsdk_name = poll_multi_pkt
hdf_name = floorplan_static_wrapper


all:
	./run_vivado.sh
	./run_xsdk.sh
	./run_elf.sh


#hdf_file:
#	./run_vivado.sh


clean:
	rm -f ./vivado*
	rm -rf ./${vivado_name}
	rm -rf ./Xil
	rm -rf $(xsdk_name) ./SDK.log  ./.metadata  ./.Xil \
	       	./$(xsdk_name)_bsp ./$(hdf_name)_hw_platform_* \
		RemoteSystemsTempFiles webtalk


all:
	@echo Please do: `sudo ip addr add 192.168.0.1/24 dev enp0s20u2`
	@echo with enp0s20u2 as YOUR netlink interface
	@echo Then do `make file` with 'file.fgc' as your Farango code


%:
	./Farango/build/binaries/fgcExecutable/release/fgc $@.fgc
	cp test.fge ./tinykore/core/core-root/
	make -C ./tinykore pack
	#sudo ip addr add 192.168.0.1/24 dev enp0s20u2
	make -C config-files/pxe pxe

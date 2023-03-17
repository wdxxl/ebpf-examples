CLANG ?= clang
CFLAGS ?= -O2 -g -Wall -Werror

LIBEBPF_TOP = /home/ec2-user/github.com/wdxxl/ebpf-examples
EXAMPLES_HEADERS = $(LIBEBPF_TOP)/headers

all: generate

generate: export BPF_CLANG=$(CLANG)
generate: export BPF_CFLAGS=$(CFLAGS)
generate: export BPF_HEADERS=$(EXAMPLES_HEADERS)
generate:
	go generate ./...



# 准备准备环境什么的
#init:
#	cd /home/ec2-user/github.com/wdxxl/ebpf-examples
#	export GO111MODULE=on
#	export GOPROXY=https://goproxy.cn,direct
#	export GOSUMDB=off
#	export GOPATH=/home/ec2-user/go
#	export PATH="$GOPATH/bin:$PATH"
#	go install github.com/cilium/ebpf/cmd/bpf2go@latest
#
#bpf2go_1:
#	cd /home/ec2-user/github.com/wdxxl/ebpf-examples
#	GOPACKAGE=main bpf2go -cc clang -cflags '-O2 -g -Wall -Werror' -target bpfel,bpfeb bpf helloworld.bpf.c -- -I /home/tonybai/test/ebpf/libbpf/include/uapi -I /usr/local/bpf/include -idirafter /usr/local/include -idirafter /usr/lib/llvm-10/lib/clang/10.0.0/include -idirafter /usr/include/x86_64-linux-gnu -idirafter /usr/include
#
#bpf2go_2:
#	cd /home/ec2-user/github.com/wdxxl/ebpf-examples
#	GOPACKAGE=main bpf2go -cc clang -cflags '-O2 -g -Wall -Werror' -target bpfel,bpfeb bpf helloworld.bpf.c -- -I /home/tonybai/go/src/github.com/cilium/ebpf/examples/headers
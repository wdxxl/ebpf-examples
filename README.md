

```bash
sudo su
yum update
yum install clang go make libbpf-devel bpftool llvm 
```


Terminal 1:
```bash
go run -exec sudo main.go bpf_bpfel.go
```

Terminal 2:
```bash
sudo cat /sys/kernel/debug/tracing/trace_pipe
```

# RISC-V CPU Architecture Performance Analysis Using CoreMark Benchmark
Architecture and Performance Evaluation of EEMBC::CoreMark benchmark on BOOM CPUs (Small &amp; Large).
## Abstract

Synthetic microbenchmarks like Dhrystone have long been leveraged by CPU architects to fine-tune micro-architecture performance. However, Dhrystone has been shown to be susceptible to gaming by compiler optimizations, which can artificially inflate performance without any tangible hardware changes to the CPU pipeline. Additionally, as Dhrystone does not include its library and has vague score reporting, the need for other portable benchmarks like **EEBMC CoreMark** was necessitated.

This study evaluates the performance characteristics of the **RISC-V CPU Architecture** using the **CoreMark Benchmark**. By studying compiler primitives to isolate hardware-optimizable features in CPU micro-architecture, this study also focuses on the optimization of these design parameters to arrive at a “golden” configuration that will be best suited for single-threaded workloads that display similar characteristics as CoreMark.

The experiments were replicated on two different classes of CPU architectures:

- **SmallBoom**: Represents power-efficient microcontroller-class applications.
- **LargeBoom**: Represents highly performant compute and server-class applications.

### Results

- CoreMark scores remain agnostic to GCC RISC-V compiler-driven optimizations, with the best CoreMark score obtained using `-O2` optimizations.
- The highest scores obtained were:
  - **24.4 CoreMark/MHz** for LargeBoom CPUs
  - **8.91 CoreMark/MHz** for SmallBoom CPUs

These results indicate a performance uplift of over **2.35x** compared to baseline RISC-V configurations.

## Conclusion

This study highlights the efficacy of CoreMark as a benchmarking tool for RISC-V architectures, providing insights into how different configurations can be optimized to achieve significant performance improvements.

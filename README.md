# LLVM generation in BQN
This repository is currently an experiment.  
`gen.bqn` generates the file `helloworld.ll`, which is LLVM IR.  
`lld helloworld.ll` to run it.  
`clang helloworld.ll` or `zig cc helloworld.ll` to compile instead of running.  
`insperation.cpp` is similar to my goal with this. I want to make it easy first to make IR, then work on some kind of generator like a programming languge.
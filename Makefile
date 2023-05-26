hello:
	echo "hello World"
t_include:
	./check.sh 15 include llvm "(hum|crc|midi|json|pugi|utf8|win32|zip)"
t_src:
	./check.sh 15 src llvm "(hum|crc|midi|json|pugi)"
t_addons:
	./check.sh 15 libmei/addons llvm ""
t_tools:
	./check.sh 15 tools llvm ""

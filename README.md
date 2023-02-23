# 模板

# Mode

- 第一次按下RButton为1
- 若在Centerx按下LButton，且不曾移到Centerx区域外，在Centerx抬起，则Mode加1
- 移到Centerx区域外，则Mode在抬起RButton之前不变
- 若Mode为1，且移到Centerx区域外，则move window，抬起LButton后除了RButtonUp外，中键按下抬起，滚动滚轮都可用
- ...

# Mode为1、2时可以改变窗口

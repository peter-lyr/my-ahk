# 模板

# count

- 第一次按下RButton为1
- 若在Centerx按下LButton，且不曾移到Centerx区域外，在Centerx抬起，则count加1
- 移到Centerx区域外，则count在抬起RButton之前不变
- 若count为1，且移到Centerx区域外，则move window，抬起LButton后除了RButtonUp外，中键按下抬起，滚动滚轮都可用

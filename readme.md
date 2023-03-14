# acrobatHotkey

通过自定义快捷键模拟手动选择工具、修改颜色等操作
使用[autohotkey v2](https://www.autohotkey.com/)

## 使用说明
1.自定义工具栏：右键→自定义快速工具
  ![自定义快速工具1](/image/1.png)
  高亮、文本之类的工具都在“注释”项里
  ![自定义快速工具2](/image/2.png)
2.使用`getinfo.ahk`获取窗口类名、坐标等信息(双击运行.ahk脚本)
3.修改`acrobatHotkey.ahk`中的窗口类名、坐标等信息，参考现有代码可自行增加快捷键
4.热键定义：`#` win , `!` Alt , `^` Ctrl  , `+` shift 
  自定义热键格式：热键，双冒号，空格，动作
  `;`注释

  目前：
  alt+数字键 选择工具
  ctrl+数字键 修改颜色

## 参考
[pdfhighlighthelper](https://github.com/kongsn/pdfhighlighthelper)
[自定义快捷操作](https://www.autoahk.com/archives/18579)
<h1 align="center">
    <a href="https://github.com/typst/typst">
        <img alt="Typst" src="https://user-images.githubusercontent.com/17899797/226108480-722b770e-6313-40d7-84f2-26bebb55a281.png">
    </a>
    <br />全国大学生数学建模竞赛 Typst 模板
</h1>

--------- 
⚠️注意：由于本模板使用了 Typst 的新特性，请使用 typst >= 0.11.0 的版本进行编译。

---------

## 模板介绍

用于编写高教社杯全国大学生数学建模论文的 Typst 模板

## 模板下载

- 页面右边点击：**Clone or download -> Download Zip**

## 使用方法

默认模板文件由主要以下五部分组成：
- main.typ 主文件
- refs.bib 参考文献
- template.typ 文档格式控制，包括一些基础的设置、函数
- fonts 字体文件夹
- figures 图片文件夹

使用模板首先需配置 main.typ，设置论文题目、选择的题号、队伍编号等信息。如需要进一步更改文档格式，请修改 template.typ。

文档编写过程中，在终端中使用 `typst watch --font-path ./fonts main.typ --root .` 进行即时预览；文档编写完成后，使用 `typst compile --font-path ./fonts main.typ` 生成 PDF 文件。

## 模板预览

|  [承诺书](https://github.com/a-kkiri/CUMCM-typst-template/blob/main/figures/p1.jpg) |  [编号页](https://github.com/a-kkiri/CUMCM-typst-template/blob/main/figures/p2.jpg)|  [正文](https://github.com/a-kkiri/CUMCM-typst-template/blob/main/figures/p4.jpg)|
|:---:|:---:|:---:|
| ![承诺书](https://github.com/a-kkiri/CUMCM-typst-template/blob/main/figures/p1.jpg?raw=true) | ![编号页](https://github.com/a-kkiri/CUMCM-typst-template/blob/main/figures/p2.jpg?raw=true)| ![正文](https://github.com/a-kkiri/CUMCM-typst-template/blob/main/figures/p4.jpg?raw=true)|

## 注意

 > 文档使用的中文字体仅包含约 7000 个通用汉字和符号，若某些字无法显示，请更换其他字体。
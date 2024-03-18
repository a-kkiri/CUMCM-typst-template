<h1 align="center">
    <a href="https://github.com/typst/typst">
        <img alt="Typst" src="https://user-images.githubusercontent.com/17899797/226108480-722b770e-6313-40d7-84f2-26bebb55a281.png">
    </a>
    <br />全国大学生数学建模竞赛 Typst 模板
</h1>

--------- 
⚠️请使用 typst >= 0.11.0 的版本进行编译。

---------

## 模板介绍

用于编写高教社杯全国大学生数学建模论文的 Typst 模板

## 使用方法

你可以在 Typst 网页应用中使用此模板，只需在仪表板上点击 “Start from template”，然后搜索 cumcm-muban。

另外，你也可以在本地使用 CLI 命令来启动这个项目。

```
typst init @preview/cumcm-muban
```

Typst 将会创建一个新的目录，其中包含了所有你开始**除字体外**所需要的文件。

如果在本地使用模板编写文档，可以在终端中使用 `typst watch --font-path ./fonts main.typ --root .` 进行即时预览；文档编写完成后，使用 `typst compile --font-path ./fonts main.typ` 生成 PDF 文件。

## 模板预览

|  [承诺书](https://github.com/a-kkiri/CUMCM-typst-template/blob/main/template/figures/p1.jpg) |  [编号页](https://github.com/a-kkiri/CUMCM-typst-template/blob/main/template/figures/p2.jpg)|  [正文](https://github.com/a-kkiri/CUMCM-typst-template/blob/main/template/figures/p4.jpg)|
|:---:|:---:|:---:|
| ![承诺书](https://github.com/a-kkiri/CUMCM-typst-template/blob/main/template/figures/p1.jpg?raw=true) | ![编号页](https://github.com/a-kkiri/CUMCM-typst-template/blob/main/template/figures/p2.jpg?raw=true)| ![正文](https://github.com/a-kkiri/CUMCM-typst-template/blob/main/template/figures/p4.jpg?raw=true)|

## ⚠️注意
 > 在 Typst 网页应用程序使用此模板不包含所需字体文件，请到 [CUMCM-typst-template/fonts.zip](https://github.com/a-kkiri/CUMCM-typst-template/blob/main/fonts.zip?raw=true) 下载并自行上传到网页应用程序。

 > 文档使用的中文字体仅包含约 7000 个通用汉字和符号，若某些字无法显示，请更换其他字体。
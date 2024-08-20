<h1 align="center">
    <a href="https://github.com/typst/typst">
        <img alt="Typst" src="https://user-images.githubusercontent.com/17899797/226108480-722b770e-6313-40d7-84f2-26bebb55a281.png">
    </a>
    <br />全国大学生数学建模竞赛 Typst 模板
</h1>

## 模板介绍

用于编写高教社杯全国大学生数学建模论文的 Typst 模板

> [!IMPORTANT]
>
> 本模板的承诺书页及编号专用页仅供参考，实际论文提交推荐使用官方模板提供的承诺书页及编号专用页。


## 使用方法

你可以在 Typst 网页应用中使用此模板，只需在仪表板上点击 “Start from template”，然后搜索 cumcm-muban。

另外，你也可以在本地使用 CLI 命令来启动这个项目。

```
typst init @preview/cumcm-muban
```

Typst 将会创建一个新的目录，其中包含了所有你开始**除字体外**所需要的文件。

如果在本地使用模板编写文档，可以在终端中使用 `typst watch --font-path ./fonts main.typ --root .` 进行即时预览；文档编写完成后，使用 `typst compile --font-path ./fonts main.typ` 生成 PDF 文件。

## 模板预览

|  [正文1](https://github.com/a-kkiri/CUMCM-typst-template/blob/main/template/figures/p4.jpg) |  [正文2](https://github.com/a-kkiri/CUMCM-typst-template/blob/main/template/figures/p6.jpg)|  [附录](https://github.com/a-kkiri/CUMCM-typst-template/blob/main/template/figures/p10.jpg)|
|:---:|:---:|:---:|
| ![正文1](https://github.com/a-kkiri/CUMCM-typst-template/blob/main/template/figures/p4.jpg?raw=true) | ![正文2](https://github.com/a-kkiri/CUMCM-typst-template/blob/main/template/figures/p6.jpg?raw=true)| ![附录](https://github.com/a-kkiri/CUMCM-typst-template/blob/main/template/figures/p10.jpg?raw=true)|

> [!IMPORTANT]
>
> 对于 WebAPP/Linux/MacOS 使用者此模板不包含所需字体文件，请到 [CUMCM-typst-template/fonts.zip](https://github.com/a-kkiri/CUMCM-typst-template/blob/main/fonts.zip?raw=true) 下载并自行上传到网页应用程序。
>
> 文档使用的中文字体仅包含约 7000 个通用汉字和符号，若某些字无法显示，请更换其他字体。

## 更改记录

2024-08-20

- 更改附录页代码框样式
- 修复标题无法修改的问题
- 增加函数 `appendix` 用于显示附录内容
- 将粗体的 `stroke` 参数设置为 0.02857em
#import "template.typ": *
#show: thmrules

#show: project.with(
  title: "全国大学生数学建模竞赛 Typst 模板",
  problem_chosen: "A",
  team_number: "1234",
  college_name: " ",
  member: (
    A: " ",
    B: " ",
    C: " ",
  ),
  advisor: " ",
  date: datetime(year: 2023, month: 9, day: 8),

  cover_display: true,

  abstract: [
    #link("https://github.com/a-kkiri/CUMCM-typst-template")[本文档]是为全国大学生数学建模竞赛编写的 Typst 模板，旨在让大家专注于论文的内容写作,，而不用花费过多精力在格式的定制和调整上。本文档默认页边距为2.5cm，正文中文字体为中易宋体（SimSun），英文字体为 Times New Romans，字号为12pt（小四）。

    本模板文件由主要以下六部分组成：

    #list(indent:4em, 
      [main.typ 主文件],
      [template.typ 文档格式控制，包括一些基础的设置、函数],
      [refs.bib 参考文献],
      [content 正文文件夹，存放正文章节],
      [fonts 字体文件夹],
      [figures 图片文件夹]
    )\ #v(-16pt)
  ],

  keywords: ("Typst", "模板", "数学建模"),
)

= 模板的基本使用

使用本模板之前，请阅读模板的使用说明文档。下面是本模板使用的基本样式：

#figure(```typ
#import "template.typ": *


#show: project.with(
  title: "论文题目",
  problem_chosen: "A", // 选择的题号
  team_number: "1234", // 队伍编号
  college_name: "学校名称",
  member: (
    A: "成员A",
    B: "成员B",
    C: "成员C",
  ),
  advisor: " ", // 指导老师
  date: datetime(year: 2023, month: 9, day: 8), // 日期

  cover_display: true, // 是否显示封面与编号页
  ref_color: true, // 引用和链接是否彩色

  abstract: [
    此处填写摘要内容
  ],

  keywords: ("关键字1", "关键字2", "关键字3"),
)

正文内容

参考文献

附录
```, caption: "基本样式")

根据要求，电子版论文提交时需去掉封面和编号页。可以将 `cover_display` 设置为 false 来实现，即:

```typ
cover_display: false, // 是否显示封面与编号页
```
这样就能实现了。

请确保你的论文内容符合要求，包括但不限于页数、格式、内容等。

下面给出写作与排版上的一些示例。

= 图片

在数学建模中，我们经常需要插入图片。Typst 支持的图片格式有 "png", "jepg", ""gif"", "svg"，其他类型的图片无法插入文档。我们可以通过改变参数 `width` 来改变图片的大小，详见#link("https://typst.app/docs/reference/visualize/image/")[typst/docs/image]。下面是一些图片插入的示例：

#figure(
  image("./figures/f2.svg", width: 60%),
  caption: [
    单图示例
  ],
)

#figure(
  grid(
    columns: 2,
    gutter: 4pt,
    image("./figures/f1.png"), image("./figures/f1.png"),
    text("（a）venn 图", size: 10pt), text("（b）venn 图", size: 10pt)
  ),
  caption: [
    多图并排示例
  ],
)

= 表格

本模板创建表格引入了 tablex 包，可以方便地创建表格。其标准格式及其代码说明如下：

#figure(
  kind: table,
  tablex(
    columns: 3,
    align: center + horizon,
    auto-hlines: false,
    auto-vlines: false,
    repeat-header: true,

    /* --- header --- */
    hlinex(),
    rowspanx(2)[*Names*], colspanx(2)[*Properties*], (),
    hlinex(start: 1, end: 3, stroke: 0.5pt),
    (),                 [*Type*], [*Size*],
    hlinex(stroke: 0.2pt),
    /* -------------- */

    [Machine], [Steel], [5 $"cm"^3$],
    [Frog], [Animal], [6 $"cm"^3$],
    [Frog], [Animal], [6 $"cm"^3$],
    [Frog], [Animal], [6 $"cm"^3$],
    hlinex(),
  ), 
  caption: "表格示例"
)

#figure(
  ```typ
#figure(
  kind: table, // 设置figure的类型为table ⚠️
  tablex(
    columns: 3, // 列数
    align: center + horizon, // 对齐方式
    auto-hlines: false, // 是否自动添加横线
    auto-vlines: false, // 是否自动添加竖线
    repeat-header: true, // 是否重复表头

    /* --- header --- */
    hlinex(), // 添加横线
    rowspanx(2)[Names], colspanx(2)[Properties], ()
    // rowspanx(2) 表示跨两行， colspanx(2) 表示跨两列
    hlinex(start: 1, end: 3, stroke: 0.2pt),
    (),                 [Type], [Size],
    hlinex(stroke: 0.2pt),
    /* -------------- */
    
    [Machine], [Steel], [5 $"cm"^3$],
    [Frog], [Animal], [6 $"cm"^3$],
    [Frog], [Animal], [6 $"cm"^3$],
    [Frog], [Animal], [6 $"cm"^3$],
    hlinex(),
  ), 
  caption: "表格示例"
)
  ```
)

更多使用方法可以查看 #link("https://github.com/typst/packages/tree/main/packages/preview/tablex/0.0.8")[GitHub 页面]。

= 公式

数学建模中，公式的使用是必不可少的。Typst 可以使用 Typst 原生语法插入公式，参考 #link("https://typst.app/docs/reference/math/")[typst/docs/math]。下面是一些公式插入的示例：

首先是行内公式，例如 $a^2 + b^2 = c^2$。行内公式使用 `$$` 包裹，公式和两端的 `$$` 之间没有空格。

其次是行间公式，例如：$ integral.triple_(Omega)\(frac(diff P, diff x) + frac(diff Q, diff y) + frac(diff R, diff z)\)d v = integral.surf_(Sigma)P d y d z + Q d z d x + R d x d y $ 式（1）是高斯公式。行间公式使用 `$$` 环境包裹，公式和两端的 `$$` 之间至少有一个空格。

公式内可以使用换行符 `\` 换行。若需要对齐，每行可以包含一个或多个对齐点 `&` 对其进行对齐。例如：
$ sum_i b_i &= sum_i sum_(h,j != i) frac(sigma_(h j) (i), sigma_(h j)) \ &= sum_(h != j) frac(1, sigma_(h j)) sum_(i != h,j) sigma_(h j)(i) $ `&` 是对齐的位置，`&` 可以有多个，但是每行的个数要相同。

矩阵输入示例：
$ A = mat(
  a_(1 1), a_(1 2), ..., a_(1 n);
  a_(2 1), a_(2 2), ..., a_(2 n);
  dots.v, dots.v, dots.down, dots.v;
  a_(n 1), a_(n 2), ..., a_(n n);
) $ \


分段函数可以使用 `case` 环境：
$ f\(x\)= cases(
  0 #h(1em) x text("为无理数,") ,
  1 #h(1em) x text("为有理数.") 
) $
假如要公式里面有个别文字，需要把这部分放在 text 环境里面,即 `text[文本内容]` 。

如果公式中有个别需要加粗的字母，可以使用 `bold()` 进行加粗。如，$alpha a bold(alpha a)$。

以上仅为一些简单的公式示例，更多的公式使用方法可以查看 #link("https://typst.app/docs/reference/math/")[typst/docs/math]。

= 定理环境

在本模板中，我们定义了一些常用的定理环境，包括 theorem 、 lemma、corollary、 assumption、 conjecture、axiom、principle、problem、example、proof、solution。可以根据论文的实际需求合理使用。

#definition[这是一个定义]
#lemma[这是一个引理]
#corollary[这是一个推论]
#assumption[这是一个假设]
#conjecture[这是一个猜想]
#axiom[这是一个公理]
#principle[这是一个定律]
#problem[这是一个问题]
#example[这是一个例子]
#proof[这是一个证明]
#solution[这是一个解]


= 其他功能

== 脚注

=== 测试

利用 `#footnote(脚注内容)`可以生产脚注 #footnote("脚注例")

== 无序列表与有序列表

无序列表例：

#list(
  [元素1],
  [元素2],
  [...]
) \

有序列表例：

#enum(
  [元素1],
  [元素2],
  [...]
)

== 字体粗体与斜体

如果想强调部分内容,可以使用加粗的手段来实现。加粗字体可以用 `*需要加粗的内容*` 或 `#strong[需要加粗的内容]` 来实现。例如：*这是加粗的字体，This is bold fonts*。

中文字体没有斜体设计，但是英文字体有。_斜体 Italics_。

= 参考文献与引用

参考文献对于一篇正式的论文来说是必不可的，在建模中重要的参考文献当然应该列出。Typst 支持使用 BibTeX 来管理参考文献。在 `refs.bib` 文件中添加参考文献的信息，然后在正文中使用 `#cite(<引用的文献的 key>)` 来引用文献。例如：#cite(<netwok2020>)。最后通过 `#bib("refs.bib")` 来生成参考文献列表。

#bib("refs.bib")

#heading("附录A  线性规划 - Python 源程序", numbering: none)

```py
import numpy as np
from scipy.optimize import linprog

c = np.array([2, 3, 1])
A_up = np.array([[-1, -4, -2], [-3, -2, 0]])
b_up = np.array([-8, -6])

r = linprog(c, A_ub=A_up, b_ub=b_up, bounds=((0, None), (0, None), (0, None)))

print(r)
```

#heading("附录B  非线性规划 - Python 源程序", numbering: none)

```py
from scipy import optimize as opt
import numpy as np
from scipy.optimize import minimize

# 目标函数
def objective(x):
	return x[0] ** 2 + x[1] ** 2 + x[2] ** 2 + 8

# 约束条件
def constraint1(x):
	return x[0] ** 2 - x[1] + x[2] ** 2  # 不等约束

def constraint2(x):
	return -(x[0] + x[1] ** 2 + x[2] ** 2 - 20)  # 不等约束

def constraint3(x):
	return -x[0] - x[1] ** 2 + 2

def constraint4(x):
	return x[1] + 2 * x[2] ** 2 - 3  # 不等约束

# 边界约束
b = (0.0, None)
bnds = (b, b, b)

con1 = {'type': 'ineq', 'fun': constraint1}
con2 = {'type': 'ineq', 'fun': constraint2}
con3 = {'type': 'eq', 'fun': constraint3}
con4 = {'type': 'eq', 'fun': constraint4}
cons = ([con1, con2, con3, con4])  # 4个约束条件
x0 = np.array([0, 0, 0])
# 计算
solution = minimize(objective, x0, method='SLSQP',  bounds=bnds, constraints=cons)
x = solution.x

print('目标值: ' + str(objective(x)))
print('答案为')
print('x1 = ' + str(x[0]))
print('x2 = ' + str(x[1]))
```
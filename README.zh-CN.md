# 文献综述 Skills

文献综述写不顺，常常并非因为你读得太少。更常见的问题是：问题没有收紧，结构只是按作者堆材料，方法选择说不清理由，互相矛盾的研究被放在一起却没有解释，最后的 research gap 也站不稳。

这组 Skills 处理的是这些环节。它们帮你把综述从“资料很多”推进到“问题清楚、结构能展开、判断有依据”。

它不是代写工具，也不适合拿来绕过学术训练。AI 在这里扮演研究助理：帮你提问、拆分、比较、追问和检查逻辑。最终判断仍然属于研究者，文献核验、论证取舍和正文写作也必须由你自己完成。

[English README](README.md)

## 适合谁

- 正在准备课程论文、开题报告、硕博士论文文献综述的研究生。
- 已经读了不少文献，却还停留在“一个作者接一个作者介绍”的写作者。
- 需要把零散阅读整理成问题链、方法链和论证结构的研究者。
- 在 Claude Code 或 Codex 工作流里，希望把学术思考步骤固定成可复用 Skills 的用户。

## 五个 Skills 怎么配合

| Skill                           | 作用                                   |
| ------------------------------- | ------------------------------------ |
| `refine-literature-question`    | 把宽泛选题收紧成可综述的问题，明确对象、关系、范围和可讨论的边界。    |
| `decompose-review-modules`      | 把综述问题拆成几个模块，避免按作者流水账排列，让每一节都有自己的任务。  |
| `compare-research-methods`      | 比较不同研究方法能回答什么、回答不了什么，帮助你解释方法选择背后的理由。 |
| `map-literature-contradictions` | 把相互冲突的发现整理成可分析的差异，而不是简单写成“研究结论不一致”。  |
| `locate-review-research-gap`    | 在已有共识、分歧和限制的基础上，定位一个更具体、更能辩护的研究空缺。   |

## 安装这套 Skills

你不需要一个一个复制 5 个 Skill。本仓库已经在根目录放了 `SKILL.md` 作为总入口，真正执行的 5 个 Skills 放在 `skills/` 目录下。

### 方式一：一行安装（推荐）

如果你的环境支持 Agent Skills 安装器，可以直接运行：

```bash
npx skills add https://github.com/xingtaxueshu/literature-review-skills
```

这是最省事的方式。安装器会把这套 skill 放到合适的本地 skills 目录里。

### 方式二：让 AI 自己装

对 Claude Code、Codex、Cursor 或其他兼容 Agent 说一句：

```text
请帮我查找并安装这个 skill set：https://github.com/xingtaxueshu/literature-review-skills
```

它会自行 clone 仓库，放到对应的 skills 目录，并把根目录的 `SKILL.md` 作为入口接入。

### 方式三：手动 clone

如果你使用 Claude Code：

```bash
git clone https://github.com/xingtaxueshu/literature-review-skills.git ~/.claude/skills/literature-review-skills
```

如果你使用 Codex：

```bash
git clone https://github.com/xingtaxueshu/literature-review-skills.git ~/.agents/skills/literature-review-skills
```

装好后，可以直接对 Agent 说：

```text
请使用 literature-review-skills，帮我把一个宽泛选题整理成文献综述问题、模块、方法比较、矛盾梳理和研究 gap。
```

如果你已经知道自己卡在哪一步，也可以直接点名某个 Skill：

```text
请用 refine-literature-question 帮我打磨这个主题：农村电商参与意愿。
```

## 推荐用法

可以从一个真实但还比较宽的题目开始。比如：

```text
我准备写一篇关于“农村电商如何影响家庭收入和地方发展”的文献综述。请帮我把这个宽泛主题转成综述问题，再拆成模块，比较常见研究方法，梳理文献中的矛盾结论，最后定位一个可以继续研究的 gap。
```

建议按这个顺序走：

1. 用 `refine-literature-question` 先收紧问题。比如把“农村电商影响发展”改成“农村电商通过市场接入、劳动配置和平台参与影响农户收入的机制是什么”。
2. 用 `decompose-review-modules` 拆出综述模块。可以围绕采用条件、收入机制、平台角色、地区差异、政策环境来安排。
3. 用 `compare-research-methods` 检查方法路线。问清楚问卷、面板数据、访谈、案例研究和混合方法各自适合处理哪类问题。
4. 用 `map-literature-contradictions` 处理相互冲突的发现。不要只写“有正向影响，也有影响不明显”，要追问样本地区、时间窗口、指标选择和识别策略的差异。
5. 用 `locate-review-research-gap` 收束到一个更具体的空缺。好的 gap 通常不是“研究较少”这么简单，而是已有研究在机制、情境、方法或解释层面还没有接上。

## 使用边界

这组 Skills 能帮你做三件事：把题目问得更准，把材料放进更合理的结构，把含混的分歧改写成可以继续分析的问题。它们适合用在开题前、读文献中期、写综述提纲前，也适合拿来和导师讨论前先做一轮自查。

它们不能替你读完真实文献，不能保证某个判断在你的学科里一定成立，也不能替你完成引用核验。遇到关键结论，仍然要回到原文，看样本、变量、方法、数据来源和论证限制。AI 给出的 gap 只能作为候选，需要你用真实文献和研究设计去筛掉站不住的版本。

更稳妥的用法是：先让 Skill 给出结构和问题，再把你手头的真实文献逐篇放进去校正。不要把生成内容直接当成论文段落提交，也不要让 AI 编造作者、年份、期刊或 DOI。

## 联系方式

如果你想交流使用问题、补充案例，或讨论科研 AI 工作流，可以通过下面方式联系：

- 微信号：`xingtacc`
- 邮箱：[xingtaxueshu@outlook.com](mailto:xingtaxueshu@outlook.com)

也可以扫描二维码添加微信：

<img src="assets/wechat-qr.jpg" alt="星塔学术微信二维码" width="320">

## 贡献

欢迎改进这些 Skills。比较有价值的贡献包括：更清晰的指令、更贴近学科场景的例子、更好的方法比较模板，以及安装说明中的错误修正。

提交修改时，请保持语气克制，避免夸大工具作用。这个项目关心的是研究过程是否更清楚，不是把 AI 包装成学术捷径。

## 许可

本项目使用 MIT License 发布。完整条款见 `LICENSE`。

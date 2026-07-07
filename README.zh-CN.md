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

## 安装 Claude Code

可以按你的系统选择一种安装方式：

```bash
curl -fsSL https://claude.ai/install.sh | bash
```

```bash
brew install --cask claude-code
```

```powershell
winget install Anthropic.ClaudeCode
```

安装后启动 Claude Code：

```bash
claude
```

## 在 Claude Code 中安装这些 Skills

安装到个人目录，多个项目都可以使用：

```bash
mkdir -p ~/.claude/skills
cp -R skills/* ~/.claude/skills/
```

安装到当前项目，只在这个项目里使用：

```bash
mkdir -p .claude/skills
cp -R skills/* .claude/skills/
```

在 Claude Code 中调用某个 Skill：

```text
/refine-literature-question
```

## 安装 Codex CLI

可以按你的系统选择一种安装方式：

```bash
curl -fsSL https://chatgpt.com/codex/install.sh | sh
```

```powershell
powershell -ExecutionPolicy ByPass -c "irm https://chatgpt.com/codex/install.ps1 | iex"
```

```bash
npm install -g @openai/codex
```

```bash
brew install --cask codex
```

安装后启动 Codex：

```bash
codex
```

## 在 Codex 中安装这些 Skills

安装到项目目录，适合和当前论文或资料库一起管理：

```bash
mkdir -p .agents/skills
cp -R skills/* .agents/skills/
```

安装到个人目录，适合跨项目使用：

```bash
mkdir -p ~/.agents/skills
cp -R skills/* ~/.agents/skills/
```

在 Codex 中提到某个 Skill：

```text
$refine-literature-question
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

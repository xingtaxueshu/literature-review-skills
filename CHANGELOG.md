# Changelog

本文件记录版本变化。版本号只在文件里标注，尚未打 Git tag。

## v0.2.0

本版重点是补上来源核验和输出结构，不扩展新 skill。以下改动尚未经过系统评测，也没有真实作者的使用反馈。

### 新增
- `references/source-integrity.md`：来源完整性规则。只使用用户提供或已核验的文献；每条文献带状态标签（用户提供 / 已核验 / 未核验）；给出核验步骤（Crossref、OpenAlex、出版社页面、CNKI/万方人工检索）并要求记录核验方式；查不到一律写“未查到”，不补全作者、年份、期刊、页码。
- `references/output-contract.md`：固定各 skill 的输出段落名和顺序。
- `CHANGELOG.md`。
- README 中英文新增“局限与未验证项”一节。

### 修改
- 5 个 skill 的 Guardrails 各加一条来源完整性规则，根 `SKILL.md` 新增 “Source Integrity” 一节。
- 输出契约：
  - `map-literature-contradictions` 的矛盾矩阵新增“出处/核验状态”列。
  - 各 skill 输出末尾固定加“待核实清单”和“给作者的问题”。
  - “Ready-To-Use Paragraph” / “Justification Paragraph” / “Synthesis Paragraph” 统一改为“段落草稿（需作者改写并核对来源）”，并加来源核对提示。
- `examples/` 顶部加声明“方法演示，非真实文献结论”，示例中的矛盾表加“无出处”标注，不含任何编造的出处。
- 根 `SKILL.md` 的 description 改为用户意图型（用户要做文献综述但不知从哪步开始时使用）；5 个 skill 的 description 追加中文触发词。
- 各 `SKILL.md` frontmatter 增加 `metadata.version: "0.2.0"`；description 改用双引号包裹。
- README 的 Responsible Use / 使用边界补充来源核验说明。

### 已知问题
- 各安装方式未逐一实测；skill 里的 `../../references/...` 相对路径在“只复制单个 skill 目录”的安装方式下可能找不到，因此各 skill 的 Guardrails 里同时写出了核心规则。
- 未覆盖中文文献的专门流程。

## v0.1.0 (2026-07-07)

初版：根 `SKILL.md` 入口和 5 个 skill（`refine-literature-question`、`decompose-review-modules`、`compare-research-methods`、`map-literature-contradictions`、`locate-review-research-gap`），中英文 README，示例，MIT 协议。

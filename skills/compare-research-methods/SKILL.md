---
name: compare-research-methods
description: "Compare research methods for an academic literature review, thesis proposal, or methodology section by linking each method to what it can and cannot answer. Use when the user needs to justify method choice, compare quantitative/qualitative/mixed-method designs, build a methods table, or turn \"I will use this method\" into a defensible argument tied to the research question. 触发词：方法比较、研究方法选择理由、方法论证。"
metadata:
  version: "0.2.0"
---

# Compare Research Methods

## Goal

Help the user treat method choice as an argument, not a format requirement. Every recommended method should explain what part of the research question it answers, what it cannot answer, and why it fits better than alternatives.

## Workflow

1. Restate the research question and the most important thing it needs to know: breadth, depth, correlation, causality, mechanism, process, comparison, or prediction.
2. List plausible methods rather than jumping to the user's preferred method.
3. Build a three-column comparison: method route, can answer, cannot answer.
4. Identify the tradeoff that matters most for this question.
5. Recommend a method or mixed sequence with a concise methodological rationale.

## Comparison Table Template

Use this structure:

```markdown
| Method route | Can answer | Cannot answer |
|---|---|---|
| Survey + regression | Which factors are significantly associated with the outcome | How participants actually make decisions or interpret tradeoffs |
| In-depth interviews | Why actors persist, withdraw, or change behavior | Whether the pattern generalizes to a larger population |
| Panel data | How behavior changes before/after an event or policy shift | The lived mechanism that makes the change happen |
| Case comparison | How context shapes mechanisms across cases | Precise population-level effect size |
```

Adapt the method list to the user's field and data reality.

## Rationale Pattern

Write method justification with this chain:

```text
Because prior studies mainly [current limitation], and this question needs to explain [target need], use [method/design] to [specific function]. This method can clarify [answer], but it cannot fully resolve [boundary], so [supplement/limitation statement].
```

For mixed methods, specify the sequence:

- Quantitative first: use when broad patterns or key variables must be identified before explaining mechanisms.
- Qualitative first: use when concepts, mechanisms, or categories are unclear and need exploration before measurement.
- Parallel design: use when breadth and depth are both needed and can be compared after collection.

## Output Format

Provide:

```markdown
## Method Need

[What the research question most needs]

## Method Comparison

| Method route | Can answer | Cannot answer |
|---|---|---|

## Recommended Design

[Method or sequence]

## 段落草稿（需作者改写并核对来源）

[Draft paragraph. Start with: "以下为草稿，请改写成你自己的论证，并逐句核对来源后再使用。" Tag every literature-dependent sentence with source and status, or [需补来源]]

## Boundary Statement

[What this design still cannot claim]

## 待核实清单

[Unverified sources, "未查到" results, sentences marked [需补来源], and inferences that still need checking; write "无" if empty]

## 给作者的问题

[Judgment calls that belong to the author; write "无" if empty]
```

The output sections above, and the two closing sections, keep fixed names and order; see `references/output-contract.md` at the repository root.

## Guardrails

- Do not say a method is "best" without naming the question need it satisfies.
- Do not hide limitations; make them part of the justification.
- Do not recommend mixed methods as a default. Use mixed methods only when the question genuinely needs complementary evidence.
- Source integrity: follow `../../references/source-integrity.md`. Any statement about what prior studies did must point to a tagged source or be marked [需补来源]. Use only sources the user provided or that are verified, tag each with a status (用户提供 / 已核验 / 未核验), write "未查到" instead of completing authors, year, journal, or pages, and put anything unverified in `## 待核实清单`. If that file is not available, still apply these rules.

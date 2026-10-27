---
name: map-literature-contradictions
description: "Analyze conflicting findings in a literature review and turn disagreement into structured insight. Use when the user has papers, abstracts, notes, or claims that disagree and needs to identify consensus, explain contradictions by sample/method/indicator/context/time differences, define explanation boundaries, or write a stronger synthesis section. 触发词：文献结论矛盾、研究结论不一致、综述论证、梳理分歧。"
metadata:
  version: "0.2.0"
---

# Map Literature Contradictions

## Goal

Use contradiction as information. Instead of avoiding inconsistent findings, map what researchers agree on, where they diverge, and what hidden conditions or method limits explain the disagreement.

## Workflow: Comb Method

1. Find consensus: list findings repeatedly supported across studies, settings, or methods.
2. Separate contradictions: name the exact claim that conflicts rather than saying "the literature is mixed".
3. Compare study conditions: inspect object, sample, indicator, method, time window, and context.
4. Infer why the difference matters: connect the comparison to theory, mechanism, or validity.
5. Mark explanation boundaries: identify what current methods or data cannot answer.
6. Convert the boundary into a possible research contribution.

## Contradiction Matrix

Use this table when the user provides multiple papers or claims. Leave the status column honest: if the user gave no source for a claim, write "未提供出处" and do not fill in a citation; if a check found nothing, write "未查到".

```markdown
| Study/claim | Finding | Object/sample | Method | Indicator | Time/context | Possible reason for difference | Source / verification status (出处/核验状态) |
|---|---|---|---|---|---|---|---|
| ... | ... | ... | ... | ... | ... | ... | Author (year) · 用户提供/已核验/未核验 · how verified |
```

Then summarize in prose:

```text
The disagreement is less about whether [factor] matters and more about when it matters. Studies using [sample/method/indicator] tend to find [result], while studies in [context/time] find [different result]. This suggests the effect may be conditional on [boundary], rather than universally positive or negative.
```

## Difference Dimensions To Check

- Research object: region, industry, population, organization type, development stage.
- Sample: size, selection method, subgroup, representativeness.
- Indicator: how the key variable or outcome is measured.
- Method: cross-sectional, longitudinal, interview, experiment, case, meta-analysis.
- Time window: policy period, crisis period, before/after intervention, short vs long term.
- Theoretical lens: rational choice, institutional, social network, capability, cultural, ecological, etc.

## Output Format

Provide:

```markdown
## Consensus

- ...

## Main Contradictions

1. ...

## Contradiction Matrix

| Study/claim | Finding | Object/sample | Method | Indicator | Time/context | Possible reason | Source / verification status (出处/核验状态) |
|---|---|---|---|---|---|---|---|

## 段落草稿（需作者改写并核对来源）

[Draft synthesis paragraph. Start with: "以下为草稿，请改写成你自己的论证，并逐句核对来源后再使用。" Tag every literature-dependent sentence with source and status, or [需补来源]]

## Explanation Boundaries

- Current literature cannot yet explain ...

## 待核实清单

[Unverified sources, "未查到" results, sentences marked [需补来源], and inferences that still need checking; write "无" if empty]

## 给作者的问题

[Judgment calls that belong to the author; write "无" if empty]
```

The output sections above, and the two closing sections, keep fixed names and order; see `references/output-contract.md` (a copy bundled in this skill folder).

## Guardrails

- Do not force agreement by selecting only consistent studies.
- Do not claim a contradiction is solved unless the provided evidence supports the explanation.
- Distinguish observed differences from inferred importance; label inferences clearly.
- Source integrity: follow `references/source-integrity.md`. Every row of the contradiction matrix needs a source and status; do not invent rows to fill the table. Use only sources the user provided or that are verified, tag each with a status (用户提供 / 已核验 / 未核验), write "未查到" instead of completing authors, year, journal, or pages, and put anything unverified in `## 待核实清单`. If that file is not available, still apply these rules.

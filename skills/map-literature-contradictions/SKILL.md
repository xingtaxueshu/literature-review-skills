---
name: map-literature-contradictions
description: Analyze conflicting findings in a literature review and turn disagreement into structured insight. Use when the user has papers, abstracts, notes, or claims that disagree and needs to identify consensus, explain contradictions by sample/method/indicator/context/time differences, define explanation boundaries, or write a stronger synthesis section.
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

Use this table when the user provides multiple papers or claims:

```markdown
| Study/claim | Finding | Object/sample | Method | Indicator | Time/context | Possible reason for difference |
|---|---|---|---|---|---|---|
| ... | ... | ... | ... | ... | ... | ... |
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

| Study/claim | Finding | Object/sample | Method | Indicator | Time/context | Possible reason |
|---|---|---|---|---|---|---|

## Synthesis Paragraph

[Ready-to-use review synthesis]

## Explanation Boundaries

- Current literature cannot yet explain ...
```

## Guardrails

- Do not force agreement by selecting only consistent studies.
- Do not claim a contradiction is solved unless the provided evidence supports the explanation.
- Distinguish observed differences from inferred importance; label inferences clearly.

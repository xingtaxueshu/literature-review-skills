---
name: literature-review-skills
description: "Use when the user wants to do a literature review but does not know which step to start with, or asks which of the five literature-review skills (refine question, decompose modules, compare methods, map contradictions, locate research gap) to use. 用户要做文献综述但不知从哪步开始时使用；也用于选题太宽、综述结构、方法比较、文献矛盾、研究空白等综述各阶段的分流。"
metadata:
  version: "0.2.0"
---

# Literature Review Skills

This is the entry point for the five literature-review skills in this repository.

Use it when a user wants help with a literature review but has not yet chosen a specific skill. Route the user to the smallest skill that matches the current stage of work.

## Skill Map

1. `refine-literature-question`
   - Use when the user has a broad topic and needs a sharp one-sentence review question.
2. `decompose-review-modules`
   - Use when the user already has a core question and needs 3-5 review modules.
3. `compare-research-methods`
   - Use when the user needs to justify method choices or compare method routes.
4. `map-literature-contradictions`
   - Use when the user has conflicting findings, notes, claims, or abstracts and needs a structured synthesis.
5. `locate-review-research-gap`
   - Use when the user needs to turn the review ending into a concrete research gap or future study direction.

## Source Integrity

Before starting any step, ask whether the user has real references (full records, abstracts, or notes). Follow `references/source-integrity.md`: use only sources the user provided or that are verified, tag each with a status (用户提供 / 已核验 / 未核验), and write "未查到" instead of completing authors, year, journal, or pages. If the user has no references yet, say so in the output and give a method framework without literature claims. If that file is not available, still apply these rules.

Every skill ends with the same closing sections, in this order: `## 段落草稿（需作者改写并核对来源）` (only for skills that draft a paragraph), `## 待核实清单`, `## 给作者的问题`. See `references/output-contract.md`.

## Recommended Sequence

If the user is starting from scratch, use the skills in this order:

```text
refine-literature-question -> decompose-review-modules -> compare-research-methods -> map-literature-contradictions -> locate-review-research-gap
```

Do not treat this workflow as ghostwriting. The skills should help the researcher clarify questions, organize evidence, and test logic. They should not fabricate sources, invent findings, or replace the researcher's academic judgment. Generated paragraphs are drafts for the author to rewrite and check against sources.

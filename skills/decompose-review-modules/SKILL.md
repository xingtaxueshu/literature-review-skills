---
name: decompose-review-modules
description: Decompose a refined research question for a literature review into 3-5 clear, mostly non-overlapping review modules. Use when the user has a core review question and needs to build a literature review structure, reading map, subsection outline, coding scheme, or module-based search plan instead of listing papers author by author.
---

# Decompose Review Modules

## Goal

Convert one core research question into a small set of review modules that cover the key dimensions of the problem without collapsing into a loose topic list.

## Workflow

1. Restate the core question in one sentence.
2. Identify the main actors, mechanisms, outcomes, contexts, and constraints embedded in the question.
3. Propose 3-5 modules that are independent enough to become review sections.
4. Check overlap: if one paper naturally belongs to three modules, the module boundaries are probably weak.
5. Check coverage: the modules together should explain the main question's key dimensions.
6. Flag likely dense, thin, or promising modules based on expected literature distribution.

## Module Design Rules

Good modules should be:

- Mutually distinguishable: each module asks a different sub-question.
- Collectively useful: together they help answer the core question.
- Literature-searchable: each can generate keywords, inclusion criteria, and section titles.
- Analytical rather than decorative: avoid generic buckets like "background", "status", or "problems" unless they express a real mechanism.

## Common Module Axes

Choose axes that fit the question:

- Drivers: economic incentives, capability thresholds, social networks, institutional environment.
- Mechanisms: perception, decision process, resource allocation, coordination, feedback loops.
- Actors: individuals, organizations, platforms, governments, communities.
- Stages: adoption, use, persistence, exit, diffusion.
- Contexts: region, industry, policy period, population type, technology maturity.
- Outcomes: performance, equity, participation, sustainability, resilience.

## Output Format

Provide:

```markdown
## Core Question

[One sentence]

## Proposed Modules

| Module | Sub-question | Include | Exclude |
|---|---|---|---|
| ... | ... | ... | ... |

## Coverage Check

- What the modules cover well: ...
- Possible missing dimension: ...
- Possible overlap to revise: ...

## Suggested Review Outline

1. ...
2. ...
3. ...
```

## Guardrails

- Do not create more than five main modules unless the user explicitly asks for a large taxonomy.
- Do not organize modules only by author, year, country, or method unless that is the analytical point.
- When the user gives only a broad topic, first invoke question refinement logic before decomposing modules.

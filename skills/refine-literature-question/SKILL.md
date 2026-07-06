---
name: refine-literature-question
description: Refine a broad literature review topic, research direction, thesis idea, or fuzzy academic interest into a sharp one-sentence research question. Use when the user is preparing a literature review, thesis proposal, research design, or paper outline and needs to move from a theme like "XX research review" to a concrete "why/how/mechanism" question that can guide literature search and screening.
---

# Refine Literature Question

## Goal

Turn a broad topic into a usable question anchor before searching, reading, or writing the review. The output should be a one-sentence research question that forces selection: some papers become clearly relevant, and others become safe to skip.

## Workflow

1. Identify whether the user's input is a topic, a phenomenon, or an actual question.
2. Rewrite vague nouns into observable relationships, mechanisms, conditions, or puzzles.
3. Generate 5-10 alternative question angles rather than one premature answer.
4. Evaluate each candidate against the three-anchor test.
5. Recommend one primary question and 1-2 backups, then explain what each would make the review include or exclude.

## Three-Anchor Test

A strong literature review question should:

- Contain a concrete "why", "how", "through what mechanism", or "under what conditions" focus.
- Force literature selection by making some studies irrelevant to the question.
- Feel worth answering if a reader could get a credible answer from the review.

If the question fails any item, revise it before proceeding to search or outline the literature.

## Question Patterns

Use these patterns when generating candidates:

- Mechanism: `Why does [phenomenon] occur in [context], and through what mechanism?`
- Contrast: `Why does [outcome] differ between [group/place/time A] and [group/place/time B]?`
- Condition: `Under what conditions does [factor] influence [outcome]?`
- Tension: `Why do existing studies disagree about [relationship/result]?`
- Process: `How does [actor/system] move from [state A] to [state B]?`

## Output Format

Provide:

```markdown
## Candidate Questions

1. ...
2. ...

## Recommended Anchor

[One sentence]

## Why This Works

- Selection boundary: ...
- Likely literature modules: ...
- What to skip: ...

## Revision Notes

- If the user wants broader scope: ...
- If the user wants narrower scope: ...
```

## Guardrails

- Do not accept `XX research review`, `current situation of XX`, or `development of XX` as the final anchor.
- Do not invent a domain-specific claim when the user has not provided enough context; offer candidate angles and mark assumptions.
- Treat AI as a sparring partner: generate options and pressure-test wording, but keep the user's academic judgment in charge.

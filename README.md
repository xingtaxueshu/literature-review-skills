# Literature Review Skills

A practical five-skill workflow for planning, structuring, and sharpening literature reviews. It helps you refine a question, break the review into modules, compare methods, handle contradictions, and locate a defensible research gap. It does not write the review for you; you still make the academic decisions, verify the literature, and write the final argument.

[中文说明](README.zh-CN.md)

## Who This Is For

- Graduate students preparing a thesis proposal, course paper, or dissertation literature review.
- Researchers who need to turn scattered readings into a clear review structure.
- Supervisors who want a repeatable workflow for guiding students through review design.
- Claude Code and Codex users who want reusable skills for academic thinking tasks.

## The Five-Skill Workflow

| Step | Skill | Use it to |
|---|---|---|
| 1 | `refine-literature-question` | Turn a broad topic into a focused review question that guides search and screening. |
| 2 | `decompose-review-modules` | Break the question into 3-5 review modules with clear boundaries. |
| 3 | `compare-research-methods` | Compare method routes and explain what each method can and cannot answer. |
| 4 | `map-literature-contradictions` | Turn conflicting findings into structured synthesis instead of vague disagreement. |
| 5 | `locate-review-research-gap` | Convert the synthesis into a concrete, defensible research gap or future direction. |

## Install This Skill Set

You do not need to copy commands for each individual skill. This repository includes a root `SKILL.md` as the entry point, plus the five working skills under `skills/`.

### Method 1: One-Line Install (Recommended)

If your environment supports the Agent Skills installer, run:

```bash
npx skills add https://github.com/xingtaxueshu/literature-review-skills
```

This is the cleanest option when you want the installer to place the skill set in the right local skills directory.

### Method 2: Ask Your Agent To Install It

Ask Claude Code, Codex, Cursor, or any compatible coding agent:

```text
Please find and install this skill set: https://github.com/xingtaxueshu/literature-review-skills
```

The agent should clone the repository, place it in the appropriate skills directory, and make the root `SKILL.md` available as the entry point.

### Method 3: Manual Clone

For Claude Code users:

```bash
git clone https://github.com/xingtaxueshu/literature-review-skills.git ~/.claude/skills/literature-review-skills
```

For Codex users:

```bash
git clone https://github.com/xingtaxueshu/literature-review-skills.git ~/.agents/skills/literature-review-skills
```

After installation, ask your agent to use the skill set:

```text
Use literature-review-skills to help me turn my broad topic into a literature review question, modules, method comparison, contradiction map, and research gap.
```

You can also call an individual skill directly when you already know the stage you are working on:

```text
Use refine-literature-question on this topic: rural e-commerce participation.
```

## Suggested Workflow

Sample prompt:

```text
I am writing a literature review on how rural e-commerce affects household income and local development. Help me turn this broad topic into a review question, modules, method comparison, contradiction map, and research gap.
```

Recommended sequence:

1. Use `refine-literature-question` to convert the topic into a focused question, such as how rural e-commerce changes household income through market access, labor allocation, or platform participation.
2. Use `decompose-review-modules` to create review sections, such as adoption conditions, income mechanisms, platform roles, regional differences, and policy environment.
3. Use `compare-research-methods` to understand what surveys, panel data, interviews, case studies, and mixed methods can and cannot answer.
4. Use `map-literature-contradictions` to compare studies that report positive, weak, uneven, or negative effects and identify why results differ.
5. Use `locate-review-research-gap` to state what the literature explains, where it gets stuck, and what a next study could examine.

## Responsible Use

These skills are a thinking workflow, not a ghostwriter. Use them to clarify questions, organize evidence, test logic, and improve research design. Do not use them to fabricate sources, outsource academic judgment, or submit generated prose without checking it against real literature and your own argument.

## Contact

Questions, examples, or collaboration ideas are welcome.

- WeChat: `xingtacc`
- Email: [xingtaxueshu@outlook.com](mailto:xingtaxueshu@outlook.com)

Scan the QR code to add the WeChat account:

<img src="assets/wechat-qr.jpg" alt="WeChat QR code for 星塔学术" width="320">

Follow the WeChat Official Account:

<img src="assets/wechat-official-account-qr.png" alt="WeChat Official Account QR code for 星塔学术" width="520">

## Contributing

Contributions are welcome if they make the workflow clearer, more practical, or easier to use. Good contributions include sharper skill instructions, better examples, field-specific templates, and corrections to installation notes. Keep examples realistic and avoid inflated claims.

## License

This project is released under the MIT License. See `LICENSE` for the full text.

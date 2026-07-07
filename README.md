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

## Install Claude Code

Install Claude Code with one of the official commands for your system:

```bash
curl -fsSL https://claude.ai/install.sh | bash
```

```bash
brew install --cask claude-code
```

```powershell
winget install Anthropic.ClaudeCode
```

Then start Claude Code:

```bash
claude
```

## Install These Skills For Claude Code

For a personal install available across projects:

```bash
mkdir -p ~/.claude/skills
cp -R skills/* ~/.claude/skills/
```

For a project-local install:

```bash
mkdir -p .claude/skills
cp -R skills/* .claude/skills/
```

Invoke a skill directly in Claude Code, for example:

```text
/refine-literature-question
```

## Install Codex CLI

Install Codex CLI with one of the official commands for your system:

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

Then start Codex:

```bash
codex
```

## Install These Skills For Codex

For a repository-local install:

```bash
mkdir -p .agents/skills
cp -R skills/* .agents/skills/
```

For a user-level install available across projects:

```bash
mkdir -p ~/.agents/skills
cp -R skills/* ~/.agents/skills/
```

Mention a skill directly in Codex, for example:

```text
$refine-literature-question
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

## Contributing

Contributions are welcome if they make the workflow clearer, more practical, or easier to use. Good contributions include sharper skill instructions, better examples, field-specific templates, and corrections to installation notes. Keep examples realistic and avoid inflated claims.

## License

This project is released under the MIT License. See `LICENSE` for the full text.

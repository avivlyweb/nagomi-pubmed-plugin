<p align="center">
  <img src="docs/images/banner.svg" alt="Nagomi PubMed Research" width="100%"/>
</p>

<h1 align="center">Nagomi PubMed Research</h1>
<p align="center">
  <em>Forensic-grade PubMed research engine for Claude Code</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/claude--code-plugin-8B5CF6?style=flat-square" alt="Claude Code Plugin"/>
  <img src="https://img.shields.io/badge/PubMed-MCP-D4A574?style=flat-square" alt="PubMed MCP"/>
  <img src="https://img.shields.io/badge/license-MIT-3D3D3D?style=flat-square" alt="MIT License"/>
</p>

---

## What it does

Five research tools accessible as slash commands in Claude Code:

| Command | Description |
|---------|-------------|
| `/nagomi:search` | Search PubMed with PICO-structured queries |
| `/nagomi:synthesis` | PhD-level evidence synthesis across studies |
| `/nagomi:analyze` | Critical appraisal of article trustworthiness |
| `/nagomi:verify` | Verify citations against PubMed records |
| `/nagomi:export` | Export references in APA, Vancouver, or BibTeX |

Plus a **research-assistant** agent for comprehensive literature reviews combining all tools.

## Install

```bash
claude plugin install avivlyweb/nagomi-pubmed-plugin
```

Or test locally:

```bash
claude --plugin-dir /path/to/nagomi-pubmed-plugin
```

Dependencies (Python 3.9+) are installed automatically on first use.

## Usage

```
/nagomi:search CRISPR gene therapy sickle cell
/nagomi:synthesis long COVID cognitive outcomes
/nagomi:analyze 38547891
/nagomi:verify 10.1001/jama.2023.12345
/nagomi:export yoga neuroplasticity --format apa
```

## How it works

The plugin bundles a Python MCP server that queries PubMed E-utilities (NCBI) directly. No API key required. The server provides:

- **Enhanced search** with study design classification and evidence leveling
- **Trustworthiness analysis** using Oxford CEBM hierarchy and risk-of-bias assessment
- **Research synthesis** with GRADE-style confidence ratings
- **Reference verification** via fuzzy matching against PubMed records
- **Citation export** in standard academic formats

## License

MIT

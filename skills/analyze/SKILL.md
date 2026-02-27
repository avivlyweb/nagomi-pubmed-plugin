---
description: Critically appraise article quality and trustworthiness
globs:
alwaysApply: false
---

# Article Analysis Skill

When the user asks to evaluate article quality, assess trustworthiness, or critically appraise a study, use the `analyze_article_trustworthiness` MCP tool.

## When to activate
- User asks to "analyze", "appraise", or "evaluate" a specific article
- User provides a PMID or article details and asks about quality
- User wants to know if a study is reliable

## How to use

1. Call `analyze_article_trustworthiness` with:
   - `pmid`: The PubMed ID of the article
   - OR `title` and `authors` to identify it

2. **Present the analysis** with:
   - Study design classification
   - Evidence level (Oxford CEBM hierarchy)
   - Risk of bias assessment
   - Sample size adequacy
   - Methodology quality indicators
   - Journal impact and credibility
   - Overall trustworthiness score with explanation

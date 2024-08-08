---
title: "Cytora"
description: "Reducing the underwriting process from 2 weeks to 20 minutes with RiskGPT"
date: 2019-10-03
weight: 1
header_transparent: true
fa_icon: "fab fa-codepen"
icon: "assets/images/icons/casestudy-100.png"
thumbnail: "/assets/images/clients/cytora-thumbnail.png"
image: "/assets/images/clients/cytora.png"

hero:
  enabled: true
  heading: "Cytora"
  sub_heading: "Reducing the underwriting process from 2 weeks to 20 minutes with RiskGPT"
  text_color: "#ffffff"
  background_color: ""
  background_gradient: true
  background_image_blend_mode: "overlay" # "overlay", "multiply", "screen"
  background_image: "/assets/images/clients/cytora.png"
  fullscreen_mobile: false
  fullscreen_desktop: false
  height: 660px
  buttons:
    enabled: false
    list:
      - text: "Buy Now"
        url: "https://www.zerostatic.io/theme/jekyll-advance/"
        external: true
        fa_icon: false
        size: large
        outline: false
        style: "primary"
---

# Cytora

**RiskGPT**

In 2023, Juan helped [Cytora](https://www.cytora.com/) with their goal of reducing the underwriting process from 2 weeks to 20 minutes using the latest developments in document understanding and language models.

> I really want to thank Juan for the contributions he's made to Cytora over the last year, the work we have done on LLMs has driven a compelling new direction for our product.

&mdash; [Sam Lewis](https://www.linkedin.com/in/sam-lewis-93b84bb/), VP Product, Cytora

## Detail

- fine-tuning smaller (3-7b parameters) open-source models with applications in structured data extraction (fields, addresses), and singular field extraction ("single field experts")
  - applied: dolly
  - research: llama(+derivatives)/mistral/mixtral, mixtures of experts
- prompt engineering
  - applied: zero/few-shot, chain-of-thought
  - research: prompt chaining, automatic reasoning, auto prompts, function calling
- fine-tuning large foundational models
  - applied: Google's PaLM2/Vertex, Databricks
  - research: Amazon Bedrock
- research into layout detection (LayoutXLM trained with DocLayNet/PubLayNet)
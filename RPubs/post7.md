---
title: "Análise de confiabilidade em R"
subtitle: "Parte 1/3"
author: "Adelmo Filho ( <aguiar.soul@gmail.com> )"
date: "09 junho, 2020"
output:
  html_document:
    fig_width: 7
    fig_height: 6
    fig_align: "center"
    keep_md: true
    mathjax: default
    code_folding: show
    theme: default
    highlight: haddock
    toc: true
    number_sections: false
    toc_float:
      collapsed: false
      smooth_scroll: false
---



# Distribuições de probabilidade

Na análise de confiabilidade, nosso objeto de estudo (evento de interesse) é o tempo de vida de equipamentos ou sistemas, seus equivalentes e derivados (e.g. tempo médio entre falhas, taxa de falha).

O procedimento adotado para este tipo de análise envolve ajustar a um determinado **modelo probabilistico**, em outras palavras, utiliza-se os dados de falha para estimar os parâmetros de uma **função de densidade de probabilidade**. A vantagem desta abordagem está no significado e aplicabilidade associados ao valor dos parâmetros da distribuição de probabilidade.

**O que é uma função de densidade de probabilidade?**





<img src="post7_files/figure-html/unnamed-chunk-1-1.png" style="display: block; margin: auto;" />




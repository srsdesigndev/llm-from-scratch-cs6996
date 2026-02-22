# LLM From Scratch

Building a Large Language Model from scratch following Sebastian Raschka's book *Build a Large Language Model (From Scratch)*, as part of an independent study at Youngstown State University.

**Student:** Sundar Raj Sharma
**Advisor:** Dr. Feng (George) Yu
**Course:** CS-6996 Independent Study
**Institution:** Youngstown State University

---

## Repository Structure

```
LLM-FROM-SCRATCH/
├── code/
│   ├── main/
│   │   └── llm_scratch_is_6996.ipynb      # Main implementation notebook
│   ├── numpy/
│   │   └── numpy_basics.ipynb             # NumPy foundations refresher
│   └── torch/
│       ├── pytorch_basics.ipynb           # PyTorch foundations refresher
│       └── dependencies.md                # Full dependency list
├── docs/
│   ├── colab/                             # Colab-specific documentation
│   ├── markdown/                          # Markdown notes
│   └── overleaf/                          # LaTeX source files
│       ├── main.tex
│       ├── week01.tex
│       ├── week02.tex
│       ├── week03.tex
│       ├── week04.tex
│       └── week05.tex
├── pdf/
│   └── ids_llm_from_scratch_sr.pdf        # Weekly report PDF
├── theory/
│   └── statistics/
│       └── Basics.txt                     # Statistics foundations notes
├── .gitignore
└── README.md
```

---

## Main Notebook

**[llm_scratch_is_6996.ipynb](code/main/llm_scratch_is_6996.ipynb)** — Complete implementation following the book chapter by chapter.

[Open in Colab](https://colab.research.google.com/github/YOUR-USERNAME/llm-from-scratch-is-6996/blob/main/code/main/llm_scratch_is_6996.ipynb)

---

## Foundations

Before diving into the LLM implementation, two refresher notebooks cover the mathematical and computational foundations:

**[numpy_basics.ipynb](code/numpy/numpy_basics.ipynb)**
NumPy from installation through linear algebra — arrays, broadcasting, indexing, SVD, and a complete data preprocessing pipeline. Every concept is tied to its role in machine learning practice.

**[pytorch_basics.ipynb](code/torch/pytorch_basics.ipynb)**
PyTorch from tensors through Autograd — tensor operations, GPU usage, the computation graph, and a full training loop built from scratch before introducing `nn.Module`.

---

## What I'm Building

Implementing all core LLM components from scratch:

- Tokenization (Byte Pair Encoding)
- Token embeddings and positional encoding
- Self-attention and scaled dot-product attention
- Multi-head attention
- Transformer blocks
- GPT-2 architecture
- Pretraining and fine-tuning

---

## Weekly Progress

Weekly write-ups are maintained as LaTeX source files in `docs/overleaf/` and compiled to PDF in `pdf/`. Reports cover implementation notes, concepts studied, and observations from each week of the independent study.

---

## Tech Stack

Python · PyTorch · NumPy · Google Colab

See [dependencies.md](code/torch/dependencies.md) for the full package list.

---

## Reference

**Book:** *Build a Large Language Model (From Scratch)* — Sebastian Raschka, Manning Publications
[Read on O'Reilly](https://learning.oreilly.com/library/view/build-a-large/9781633437166/)

**Papers and guides:**
- [Attention Is All You Need](https://arxiv.org/abs/1706.03762) — Vaswani et al., 2017
- [The Illustrated Transformer](http://jalammar.github.io/illustrated-transformer/) — Jay Alammar
- [Author's GitHub](https://github.com/rasbt/LLMs-from-scratch)
- [PyTorch Documentation](https://pytorch.org/docs/stable/index.html)

---

## Contact

**Student:** ssharma33@student.ysu.edu
**Advisor:** fyu@ysu.edu

---

*Last updated: February 21, 2026*
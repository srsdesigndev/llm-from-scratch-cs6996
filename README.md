# LLM From Scratch - Independent Study CS-6996

Implementation of a Large Language Model from scratch, following Sebastian Raschka's book "Build a Large Language Model (From Scratch)". This independent study replicates LLM architecture step-by-step to understand transformers, attention mechanisms, and modern language model development.

**Course:** CS-6996 Independent Study (3 Credit Hours)  
**Semester:** Spring 2025  
**Institution:** Youngstown State University

---

## 👨‍🏫 Advisor

**Feng (George) Yu, Ph.D.**  
Professor, Computer Science and Information Systems  
Youngstown State University  
Youngstown, OH 44555

---

## 📓 Main Notebook

**[llm-scratch-is-6996.ipynb](llm-scratch-is-6996.ipynb)** - Complete implementation  
🔗 [Open in Colab](https://colab.research.google.com/github/your-username/llm-from-scratch/blob/main/llm-scratch-is-6996.ipynb)

---

## 📚 Book Reference

**Build a Large Language Model (From Scratch)**  
By Sebastian Raschka  
Publisher: Manning Publications  
🔗 [O'Reilly Link](https://learning.oreilly.com/library/view/build-a-large/9781633437166/)

---

## 📅 Weekly Progress

| Week | Dates | Topic | Chapter | Hours | Status | Links |
|------|-------|-------|---------|-------|--------|-------|
| 1 | Jan 22-28 | Introduction & Tokenization | Ch 2 | 3h | ✅ Complete | [Notes](weeks/week-01/) · [Code](#week-1-tokenization) · [Reference](https://learning.oreilly.com/library/view/build-a-large/9781633437166/Text/chapter-2.html) |
| 2 | Jan 29 - Feb 4 | Embeddings & Positional Encoding | Ch 2 | 3h | ✅ Complete | [Notes](weeks/week-02/) · [Code](#week-2-embeddings) · [Reference](https://learning.oreilly.com/library/view/build-a-large/9781633437166/Text/chapter-2.html) |
| 3 | Feb 5-11 | Attention Mechanisms | Ch 3.1-3.2 | 3h | ✅ Complete | [Notes](weeks/week-03/) · [Code](#week-3-attention) · [Reference](https://learning.oreilly.com/library/view/build-a-large/9781633437166/Text/chapter-3.html) |
| 4 | Feb 12-18 | Self-Attention | Ch 3.3-3.4 | 3h | 🔄 In Progress | [Notes](weeks/week-04/) · [Code](#week-4-self-attention) · [Reference](https://learning.oreilly.com/library/view/build-a-large/9781633437166/Text/chapter-3.html#p3) |
| 5 | Feb 19-25 | Causal Attention | Ch 3.5 | 3h | ⏳ Planned | [Notes](weeks/week-05/) · [Code](#week-5-causal-attention) · [Reference](https://learning.oreilly.com/library/view/build-a-large/9781633437166/Text/chapter-3.html#p5) |
| 6 | Feb 26 - Mar 4 | Multi-Head Attention | Ch 3.6 | 3h | ⏳ Planned | [Notes](weeks/week-06/) · [Code](#week-6-multi-head-attention) · [Reference](https://learning.oreilly.com/library/view/build-a-large/9781633437166/Text/chapter-3.html#p6) |
| 7 | Mar 5-11 | GPT Architecture | Ch 4.1-4.4 | 3h | ⏳ Planned | [Notes](weeks/week-07/) · [Code](#week-7-gpt-architecture) · [Reference](https://learning.oreilly.com/library/view/build-a-large/9781633437166/Text/chapter-4.html) |
| 8 | Mar 12-18 | **Spring Break** | - | - | - | - |
| 9 | Mar 19-25 | Transformer Blocks | Ch 4.5-4.6 | 3h | ⏳ Planned | [Notes](weeks/week-09/) · [Code](#week-9-transformer-blocks) · [Reference](https://learning.oreilly.com/library/view/build-a-large/9781633437166/Text/chapter-4.html#p5) |
| 10 | Mar 26 - Apr 1 | Text Generation | Ch 4.7 | 3h | ⏳ Planned | [Notes](weeks/week-10/) · [Code](#week-10-text-generation) · [Reference](https://learning.oreilly.com/library/view/build-a-large/9781633437166/Text/chapter-4.html#p7) |
| 11 | Apr 2-8 | Pretraining Setup | Ch 5.1-5.2 | 3h | ⏳ Planned | [Notes](weeks/week-11/) · [Code](#week-11-pretraining) · [Reference](https://learning.oreilly.com/library/view/build-a-large/9781633437166/Text/chapter-5.html) |
| 12 | Apr 9-15 | Training & Decoding | Ch 5.3-5.5 | 3h | ⏳ Planned | [Notes](weeks/week-12/) · [Code](#week-12-training) · [Reference](https://learning.oreilly.com/library/view/build-a-large/9781633437166/Text/chapter-5.html#p3) |
| 13 | Apr 16-22 | Fine-tuning (Classification) | Ch 6 | 3h | ⏳ Planned | [Notes](weeks/week-13/) · [Code](#week-13-classification) · [Reference](https://learning.oreilly.com/library/view/build-a-large/9781633437166/Text/chapter-6.html) |
| 14 | Apr 23-29 | Instruction Fine-tuning | Ch 7 | 3h | ⏳ Planned | [Notes](weeks/week-14/) · [Code](#week-14-instruction-finetuning) · [Reference](https://learning.oreilly.com/library/view/build-a-large/9781633437166/Text/chapter-7.html) |
| 15 | Apr 30 - May 6 | Final Project & Documentation | Review | 3h | ⏳ Planned | [Notes](weeks/week-15/) · [Code](#week-15-final-project) · [Reference](#) |

---

## 📖 Book Content Coverage

### **Part 1: Understanding and Preparing Data**
- ✅ **Chapter 1:** Understanding large language models
- ✅ **Chapter 2:** Working with text data
  - Word embeddings & tokenization
  - Token IDs & special tokens
  - Byte pair encoding (BPE)
  - Token embeddings & positional encoding

### **Part 2: Building the Architecture**
- 🔄 **Chapter 3:** Coding attention mechanisms
  - Self-attention mechanism
  - Causal attention & masking
  - Multi-head attention
- ⏳ **Chapter 4:** Implementing GPT model from scratch
  - LLM architecture
  - Layer normalization & GELU
  - Transformer blocks
  - Text generation

### **Part 3: Training and Fine-tuning**
- ⏳ **Chapter 5:** Pretraining on unlabeled data
  - Loss calculation & evaluation
  - Training loop implementation
  - Decoding strategies (temperature, top-k)
  - Loading pretrained weights
- ⏳ **Chapter 6:** Fine-tuning for classification
- ⏳ **Chapter 7:** Fine-tuning to follow instructions

---

## 🎯 Learning Objectives

By the end of this independent study, I will:

1. **Understand** the complete transformer architecture from first principles
2. **Implement** all core components of an LLM from scratch:
   - Tokenization and embeddings
   - Self-attention mechanisms
   - Multi-head attention
   - Transformer blocks
   - GPT architecture
3. **Train** a language model on unlabeled data
4. **Fine-tune** the model for specific tasks
5. **Generate** coherent text using various decoding strategies
6. **Document** the learning process for reproducibility

---

## 💻 Implementation Stack

- **Language:** Python 3.x
- **Framework:** PyTorch
- **Environment:** Google Colab
- **Key Libraries:**
  - `torch` - Neural network implementation
  - `numpy` - Numerical operations
  - `matplotlib` - Visualization
  - `tiktoken` - Tokenization (OpenAI's BPE)

---

## 📁 Repository Structure
```
llm-from-scratch/
├── README.md                      # This file
├── llm-scratch-is-6996.ipynb     # Main implementation notebook
├── weeks/                         # Weekly documentation
│   ├── week-01/
│   ├── week-02/
│   ├── week-03/
│   ├── week-04/                  # Current week
│   └── ...
└── resources/                     # Additional materials
```

---

## 📊 Current Progress

- **Weeks Completed:** 3/15 (20%)
- **Current Focus:** Week 4 - Self-Attention Implementation
- **Total Hours Logged:** ~9 hours (3 hrs/week × 3 weeks)
- **Notebook Sections Completed:** Chapters 1-2, Chapter 3 (partial)

---

## 🔗 Key Resources

### Official Course Materials
- [Book on O'Reilly](https://learning.oreilly.com/library/view/build-a-large/9781633437166/)
- [Author's GitHub Repository](https://github.com/rasbt/LLMs-from-scratch)

### Supplementary Materials
- [Attention Is All You Need](https://arxiv.org/abs/1706.03762) - Original Transformer paper
- [The Illustrated Transformer](http://jalammar.github.io/illustrated-transformer/) - Visual guide
- [GPT-3 Paper](https://arxiv.org/abs/2005.14165) - Language Models are Few-Shot Learners
- [PyTorch Documentation](https://pytorch.org/docs/stable/index.html)

---

## 📝 Course Requirements

- **Credit Hours:** 3 (3 hours of work per week)
- **Duration:** 15 weeks (Spring 2025)
- **Deliverables:**
  1. Complete implementation in Colab notebook
  2. Weekly progress documentation
  3. Final project report
  4. Code demonstration and presentation

---

## 📈 Grading Components

*To be determined with advisor*

- Weekly progress and participation
- Code implementation quality
- Documentation and understanding
- Final project completion

---

## 🚀 Getting Started
```bash
# Clone this repository
git clone https://github.com/your-username/llm-from-scratch.git

# Open the main notebook in Colab
# Click the "Open in Colab" button above
```

---

## 📧 Contact

For questions about this independent study:

**Student:** Sundar Raj Sharma  
**Email:** ssharma33@student.ysu.edu

**Advisor:** Dr. Feng (George) Yu  
**Email:** fyu@ysu.edu

---

## 📄 License

This is an educational project for academic purposes at Youngstown State University.

---

**Last Updated:** February 12, 2025  
**Status:** Week 4 - In Progress
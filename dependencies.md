# Dependencies

List of Python packages used in this project, organized by purpose and book chapters.

---

## 🔧 Core Framework

### PyTorch
**Package:** `torch >= 2.2.2`  
**Used in:** All chapters  
**Purpose:** Deep learning framework for building and training neural networks. Core library for implementing the LLM architecture, attention mechanisms, and all model components.

**Platform-specific:**
- Intel macOS: `torch >= 2.2.2, < 2.6`
- All other platforms: `torch >= 2.2.2`

---

## 📊 Development & Visualization

### JupyterLab
**Package:** `jupyterlab >= 4.0`  
**Used in:** All chapters  
**Purpose:** Interactive development environment for writing and running Python code in notebooks. Provides the interface for the entire implementation.

### Matplotlib
**Package:** `matplotlib >= 3.7.1`  
**Used in:** Chapters 4, 6, 7  
**Purpose:** Plotting and visualization library. Used for visualizing attention weights, training curves, loss graphs, and model performance metrics.

---

## 🔤 Text Processing

### Tiktoken
**Package:** `tiktoken >= 0.5.1`  
**Used in:** Chapters 2, 4, 5  
**Purpose:** OpenAI's Byte Pair Encoding (BPE) tokenizer. Used for tokenizing text into subword units, essential for converting raw text into token IDs that the model can process.

---

## 🤖 Data & Evaluation

### TensorFlow
**Package:** `tensorflow >= 2.18.0`  
**Used in:** Chapters 5, 6, 7  
**Purpose:** Used for loading and processing datasets. Provides utilities for data pipelines and evaluation metrics during training and fine-tuning.

**Platform-specific:**
- Intel macOS: `tensorflow >= 2.16.2`
- All other platforms: `tensorflow >= 2.18.0`

---

## 🛠️ Utilities

### tqdm
**Package:** `tqdm >= 4.66.1`  
**Used in:** Chapters 5, 7  
**Purpose:** Progress bar library. Displays training progress, iteration counts, and estimated time remaining during model training and fine-tuning.

### NumPy
**Package:** `numpy >= 1.26`  
**Used in:** All chapters (dependency)  
**Purpose:** Fundamental package for numerical computing. Handles arrays, mathematical operations, and is a dependency for PyTorch and other libraries.

### Pandas
**Package:** `pandas >= 2.2.1`  
**Used in:** Chapter 6  
**Purpose:** Data manipulation and analysis library. Used for loading, processing, and organizing datasets, especially for classification tasks.

### psutil
**Package:** `psutil >= 5.9.5`  
**Used in:** Chapter 7  
**Purpose:** System and process monitoring. Tracks memory usage, CPU utilization during training. Automatically installed as a PyTorch dependency.

---

## 📦 Installation

### Quick Install (All Packages)
```bash
pip install torch>=2.2.2 jupyterlab>=4.0 tiktoken>=0.5.1 matplotlib>=3.7.1 tensorflow>=2.18.0 tqdm>=4.66.1 numpy>=1.26 pandas>=2.2.1 psutil>=5.9.5
```

### Chapter-by-Chapter Install

**Chapter 2 (Tokenization):**
```bash
pip install torch tiktoken numpy
```

**Chapters 4-5 (Architecture & Training):**
```bash
pip install torch tiktoken matplotlib tensorflow tqdm numpy
```

**Chapters 6-7 (Fine-tuning):**
```bash
pip install torch matplotlib tensorflow tqdm numpy pandas psutil
```

---

## 🍎 macOS Intel-Specific Notes

If you're on Intel macOS (x86_64), use these versions:
```bash
pip install torch>=2.2.2,<2.6 tensorflow>=2.16.2
```

For all other packages, use the standard versions listed above.

---

## 🔍 Dependency Tree
```
torch (core)
├── numpy (numerical operations)
├── psutil (system monitoring)
│
jupyterlab (development environment)
│
tiktoken (tokenization)
│
matplotlib (visualization)
│
tensorflow (datasets & evaluation)
├── numpy
│
tqdm (progress tracking)
│
pandas (data processing)
├── numpy
```

---

## ✅ Verification

Check installed versions:
```python
import torch
import tiktoken
import matplotlib
import tensorflow as tf
import tqdm
import numpy as np
import pandas as pd
import psutil

print(f"PyTorch: {torch.__version__}")
print(f"Tiktoken: {tiktoken.__version__}")
print(f"Matplotlib: {matplotlib.__version__}")
print(f"TensorFlow: {tf.__version__}")
print(f"NumPy: {np.__version__}")
print(f"Pandas: {pd.__version__}")
print(f"psutil: {psutil.__version__}")
```

---

**Last Updated:** February 12, 2025
# Dependencies

Python packages used in this project and what they do.

---

## PyTorch
Deep learning framework for building neural networks. The core library used to implement the entire LLM architecture - attention mechanisms, transformer blocks, embeddings, and all trainable components.

---

## JupyterLab
Interactive notebook environment for writing and running Python code. Provides the interface where all the implementation happens.

---

## Tiktoken
OpenAI's tokenizer for breaking text into subword tokens using Byte Pair Encoding (BPE). Converts raw text into token IDs that the model can understand and process.

---

## Matplotlib
Plotting and visualization library. Used to visualize attention patterns, plot training loss curves, and create graphs to understand model behavior.

---

## TensorFlow
Machine learning framework used here mainly for loading datasets and evaluation utilities during training and fine-tuning phases.

---

## NumPy
Fundamental library for numerical computing in Python. Handles arrays and mathematical operations. Used throughout as a dependency for PyTorch and other libraries.

---

## tqdm
Progress bar utility. Shows real-time progress during training loops - how many iterations completed, estimated time remaining, etc.

---

## Pandas
Data manipulation library. Used for loading, organizing, and preprocessing datasets, especially when working with CSV files and tabular data.

---

## psutil
System monitoring tool. Tracks memory usage and CPU utilization during training to monitor resource consumption.

---

## Installation
```bash
pip install torch jupyterlab tiktoken matplotlib tensorflow tqdm numpy pandas psutil
```

Or install in Google Colab as needed (most are pre-installed).
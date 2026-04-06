# GPT from Scratch — Experiment Documentation

## Overview

This experiment builds and trains a **GPT-style language model from scratch** using PyTorch. The model is trained on the complete works of Shakespeare to learn to generate Shakespearean-style text. The notebook covers the full pipeline: data loading, tokenization, model architecture, training, evaluation, and text generation.

---

## Environment & Setup

- **Platform:** Google Colab with GPU (A100)
- **Python:** 3.10
- **Device:** CUDA (GPU confirmed at runtime — output: `device: cuda`)
- **Key Libraries:**
  - `torch` — deep learning framework
  - `tiktoken` — OpenAI's BPE tokenizer (GPT-2 vocabulary)
  - `datasets` — HuggingFace dataset utilities
  - `matplotlib` — training curve visualization

---

## Step 1 — Data Loading

**Source:** MIT OCW Shakespeare dataset  
**URL:** `https://ocw.mit.edu/ans7870/6/6.006/s08/lecturenotes/files/t8.shakespeare.txt`

The text was downloaded and split:
- First and last 5,000 characters were trimmed (boilerplate/license header)
- **90%** used for training (`raw_text`)
- **10%** used for validation (`val_text`)

**Sample output (train split start):**
```
BY PROJECT GUTENBERG ETEXT OF
ILLINOIS BENEDICTINE COLLEGE WITH PERMISSION.
...
```

**Sample output (val split start):**
```
Yourself shall feast with us before you go,
And find the welcome of a noble foe.
  ULYSSES. Nestor!
...
```

---

## Step 2 — Tokenizer

Using the **GPT-2 BPE tokenizer** via `tiktoken`:

| Parameter    | Value  |
|--------------|--------|
| Vocabulary Size | **50,257** tokens |

---

## Step 3 — Dataset Configuration

| Parameter       | Value |
|-----------------|-------|
| Context Length  | 128 tokens |
| Stride          | 64 tokens |
| Batch Size      | 256 |

A custom `GPTDataset` class creates sliding-window input/target pairs from the tokenized text.

**Dataset output:**
```
train: 31,148 samples | 121 batches
val  :  2,965 samples |  12 batches
```

---

## Step 4 — Model Architecture

### Configuration

| Parameter       | Value   |
|-----------------|---------|
| Vocab Size      | 50,257  |
| Context Length  | 128     |
| Embedding Dim   | 384     |
| Attention Heads | 6       |
| Transformer Layers | 6   |
| Dropout Rate    | 0.2     |
| QKV Bias        | False   |

**Model size output:**
```
params: 49,287,168 | size: 188.0 MB
```

### Components Built from Scratch

- **`LayerNorm`** — custom layer normalization with learnable scale and shift
- **`GELU`** — Gaussian Error Linear Unit activation
- **`FeedForward`** — 2-layer MLP with 4× hidden expansion
- **`MultiHeadAttention`** — scaled dot-product attention with causal mask
- **`TransformerBlock`** — pre-norm residual block (attention + feedforward)
- **`GPTModel`** — full model with token + position embeddings, stacked transformer blocks, and linear output head

---

## Step 5 — Training

### Training Configuration

| Parameter       | Value  |
|-----------------|--------|
| Learning Rate   | 3e-4   |
| Weight Decay    | 0.2    |
| Epochs          | 20     |
| Eval Frequency  | Every 20 steps |
| Optimizer       | AdamW  |
| Start Prompt    | `"To be or not to be"` |

### Training Results (Selected Steps)

| Epoch | Step  | Train Loss | Val Loss | Gap    | Perplexity |
|-------|-------|------------|----------|--------|------------|
| 1     | 0     | 10.013     | 10.314   | +0.301 | 22317.5    |
| 1     | 120   | 5.033      | 5.494    | +0.462 | 153.3      |
| 5     | 600   | 3.506      | 3.920    | +0.414 | 33.3       |
| 10    | 1200  | 3.132      | 3.436    | +0.303 | 22.9       |
| 15    | 1800  | 2.825      | 3.153    | +0.328 | 16.9       |
| 20    | 2400  | 2.577      | 2.943    | +0.366 | 13.2       |

### Final Losses
```
final train loss: 2.577 | ppl: 13.2
final val   loss: 2.943 | ppl: 19.0
```

### Text Generated Per Epoch (Prompt: "To be or not to be")

| Epoch | Generated Text |
|-------|---------------|
| 1 | *(whitespace / no coherent output)* |
| 2 | `And I am a man, And I have a man, And I have a man,` |
| 3 | `To be or not to be so. And I am not so much,` |
| 5 | `To be or not to be a man. I'll have a man.` |
| 12 | `To be or not to be a good man. I'll be a man, and I will not be a man.` |
| 16 | `To be or not to be a good man. I'll be sworn to you, and I'll be a man.` |
| 20 | `To be or not to be a king. But, by my troth, I'll be sworn to you.` |

The model progressively learns Shakespearean syntax, character speech patterns, and thematic vocabulary.

---

## Step 6 — Loss & Overfitting Visualization

A matplotlib plot was generated with two panels:
- **Left:** Train vs Validation loss across 20 epochs — both curves decrease steadily
- **Right:** Overfitting gap (val − train) — gap remains relatively stable around **+0.3–0.4**, indicating mild but controlled overfitting

Plot title captures config: `lr=0.0003 | layers=6 | heads=6 | emb=384 | drop=0.2`

---

## Step 7 — Generation Experiments (Temperature & Top-K)

After training, the model was tested with different decoding strategies using the prompt `"To be or not to be"` (40 max tokens):

| Strategy     | Temperature | Top-K | Output |
|--------------|-------------|-------|--------|
| Greedy       | 0.0         | None  | `To be or not to be a king. But, by my troth, I'll be sworn to you.` |
| Conservative | 0.5         | 10    | `To be or not to be so. I'll be a man, if I be not a man, And I'll be a soldier...` |
| Balanced     | 1.0         | 25    | `To be or not to be a king. CLARENCE. And so he is, that he may live and yield;` |
| Creative     | 1.5         | 50    | `To be or not to be a thing from France I was in thee. KING EDWARD. But, Buckingham...` |
| Wild         | 2.0         | None  | *(incoherent / nonsensical text)* |

**Observation:** Temperature 1.0 with Top-K=25 produces the most fluent and creative Shakespearean output.

---

## Step 8 — Model Checkpoint Save & Load

The trained model was saved and reloaded successfully:

```
saved: gpt_checkpoint.pth
loaded ok
```

Checkpoint stores: `model_state`, `optimizer_state`, and `config`.

---

## Step 9 — Custom Prompt Generation

The loaded model was used to generate text from 5 custom prompts (`temperature=1.0`, `top_k=25`, `max_new_tokens=50`):

| Prompt | Generated Continuation |
|--------|----------------------|
| `What is the nature of man` | `...the only man- Whiles the sea, the rest are not all. O, the King is as well asham'd as in love...` |
| `The king shall rise` | `...into England's bed, And in them all in a kind state?` |
| `I will not yield to` | `...us and be hang'd, And let him be gone. FLORIZEL. Why, this was most fair and well-disposed.` |
| `Speak to me of love` | `...I had heard the Duke of Westmoreland, To have a soldier's life a king's son.` |
| `Death comes for us` | `...And if you should not, the lords, To-day shall be satisfied- yet your brother. CLARENCE. Ay, my soul is the heir...` |

All outputs are grammatically Shakespearean in style, using period-appropriate vocabulary, verse structure, and character speech.

---

## Summary

| Item | Detail |
|------|--------|
| Model | GPT (decoder-only transformer, built from scratch) |
| Dataset | Complete Works of Shakespeare |
| Parameters | ~49.3M |
| Training | 20 epochs, AdamW, lr=3e-4 |
| Final Train Loss | 2.577 (ppl: 13.2) |
| Final Val Loss | 2.943 (ppl: 19.0) |
| Best Decoding | Temperature=1.0, Top-K=25 |
| Output Quality | Coherent Shakespearean prose and verse |
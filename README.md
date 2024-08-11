# Architectures

`nix develop` (optional)
`poetry install`  
`poetry run coordinator`


### General Idea

Create a smaller, more expressive and grokked hybrid architecture with long context window.

Take Inspiration from Zamba's hybrid architecture's global attention on Mamba 2.
combined with Million Mixture-of-Depths-and-Experts (MoDE)
And utilise various techniques from Super Tiny Language Models

### References

#### Current Generation Issues

- [Alice in Wonderland: Simple Tasks Showing Complete Reasoning Breakdown in State-Of-the-Art Large Language Models](http://arxiv.org/abs/2406.02061)
- [The Parallelism Tradeoff: Limitations of Log-Precision Transformers](http://arxiv.org/abs/2207.00729)
- [Grokked Transformers are Implicit Reasoners: A Mechanistic Journey to the Edge of Generalization](http://arxiv.org/abs/2405.15071)
  - Grokking can get generalised circuits for implicit reasoning but not for compositionality
- [Are We Done with MMLU?](http://arxiv.org/abs/2406.04127)
- [Repeat After Me: Transformers are Better than State Space Models at Copying](http://arxiv.org/abs/2402.01032)
- [Scaling Laws vs Model Architectures: How does Inductive Bias Influence Scaling?](http://arxiv.org/abs/2207.10551)

#### Training

##### Pretraining

- [POA: Pre-training Once for Models of All Sizes](http://arxiv.org/abs/2408.01031)
- [Grokked Transformers are Implicit Reasoners: A Mechanistic Journey to the Edge of Generalization](http://arxiv.org/abs/2405.15071)
- [Grokfast: Accelerated Grokking by Amplifying Slow Gradients](http://arxiv.org/abs/2405.20233)
- [Think before you speak: Training Language Models With Pause Tokens](http://arxiv.org/abs/2310.02226)
- [Dropout Reduces Underfitting](http://arxiv.org/abs/2303.01500)
- [Masked Structural Growth for 2x Faster Language Model Pre-training](http://arxiv.org/abs/2305.02869)    
- [Scaling LLM Test-Time Compute Optimally can be More Effective than Scaling Model Parameters](http://arxiv.org/abs/2408.03314)
- [Sheared LLaMA: Accelerating Language Model Pre-training via Structured Pruning](http://arxiv.org/abs/2310.06694)
- [Tensor Programs VI: Feature Learning in Infinite-Depth Neural Networks](http://arxiv.org/abs/2310.02244)

##### Finetuning

 - [Self-Play Preference Optimization for Language Model Alignment](http://arxiv.org/abs/2405.00675)

#### Architecture Design

- [Super Tiny Language Models](http://arxiv.org/abs/2405.14159)
    - ffn sharing, weight tying, byte tokenising, self-play
    - [ALBERT: A Lite BERT for Self-supervised Learning of Language Representations](http://arxiv.org/abs/1909.11942)
- [Mechanistic Design and Scaling of Hybrid Architectures](http://arxiv.org/abs/2403.17844)
- [Neural Architecture Search: Insights from 1000 Papers](http://arxiv.org/abs/2301.08727)
- [Learning to (Learn at Test Time): RNNs with Expressive Hidden States](http://arxiv.org/abs/2407.04620)
  - https://github.com/test-time-training/ttt-lm-jax
- [Using the Output Embedding to Improve Language Models](http://arxiv.org/abs/1608.05859)
- [LayerSkip: Enabling Early Exit Inference and Self-Speculative Decoding](http://arxiv.org/abs/2404.16710)
      - [Large Memory Layers with Product Keys](http://arxiv.org/abs/1907.05242)
- [Associative Recurrent Memory Transformer](http://arxiv.org/abs/2407.04841)
- [Universal Transformers](http://arxiv.org/abs/1807.03819) / [Block-Recurrent Transformers](http://arxiv.org/abs/2203.07852) / [Sparse Universal Transformer](http://arxiv.org/abs/2310.07096)
  - The Universal Transformer (UT) is a variant of the Transformer that shares parameters across its layers. Empirical evidence shows that UTs have better **compositional generalization** than Vanilla Transformers (VTs) in formal language tasks.
  - The parameter-sharing also affords it better parameter efficiency than VTs. Despite its many advantages, scaling UT parameters is much more compute and memory intensive than scaling up a VT.
  - [The Devil is in the Detail: Simple Tricks Improve Systematic Generalization of Transformers](http://arxiv.org/abs/2108.12284   )
- [KAN or MLP: A Fairer Comparison](http://arxiv.org/abs/2407.16674)
  - KAN B-Spline Activations applied to MLPs
- [Lessons on Parameter Sharing across Layers in Transformers](http://arxiv.org/abs/2104.06022                  )

##### Small Language Models

- [MiniCPM: Unveiling the Potential of Small Language Models with Scalable Training Strategies](http://arxiv.org/abs/2404.06395)
  - [DeepSeek LLM: Scaling Open-Source Language Models with Longtermism](http://arxiv.org/abs/2401.02954)
- [Textbooks Are All You Need](http://arxiv.org/abs/2306.11644)
- [Textbooks Are All You Need II: phi-1.5 technical report](http://arxiv.org/abs/2309.05463)
- [Phi-3 Technical Report: A Highly Capable Language Model Locally on Your Phone](http://arxiv.org/abs/2404.14219)
- [Gemma: Open Models Based on Gemini Research and Technology](http://arxiv.org/abs/2403.08295)
- [TinyLlama: An Open-Source Small Language Model](http://arxiv.org/abs/2401.02385)
- [Small-scale proxies for large-scale Transformer training instabilities](http://arxiv.org/abs/2309.14322)
- [MobiLlama: Towards Accurate and Lightweight Fully Transparent GPT](http://arxiv.org/abs/2402.16840)
- [Qwen2 Technical Report](http://arxiv.org/abs/2407.10671)

##### Mamba

- [Transformers are SSMs: Generalized Models and Efficient Algorithms Through Structured State Space Duality](http://arxiv.org/abs/2405.21060)
- [The Illusion of State in State-Space Models](http://arxiv.org/abs/2404.08819)
  - [Liquid Structural State-Space Models](http://arxiv.org/abs/2209.12951)
  - We show how SSMs can be extended to close the gap in expressive power with RNNs, allowing them to express S5. Two simple extensions can bring about this increase in expressive power, assuming layer input dimension k > 1. First, adding a nonlinearity makes the SSM into an RNN, adding expressive power but degrading parallelism. On the other hand, allowing  ̄ Ai to be input-dependent makes the SSM more like a weighted finite automaton (WFA; Mohri, 2009), adding expressive power while remaining parallelizable.
- [BlackMamba: Mixture of Experts for State-Space Models](http://arxiv.org/abs/2402.01771)
- [Zamba: A Compact 7B SSM Hybrid Model](http://arxiv.org/abs/2405.16712)
- [Jamba: A Hybrid Transformer-Mamba Language Model](http://arxiv.org/abs/2403.19887)
- [MambaByte: Token-free Selective State Space Model](http://arxiv.org/abs/2401.13660)
- [The Hidden Attention of Mamba Models](http://arxiv.org/abs/2403.01590)
- [Hydra: Bidirectional State Space Models Through Generalized Matrix Mixers](http://arxiv.org/abs/2407.09941)

##### (Sparse) Mixture-of-Depths-and-Experts (MoDE)

- [PEER - Mixture of A Million Experts](http://arxiv.org/abs/2407.04153)
- [Mixture-of-Depths: Dynamically allocating compute in transformer-based language models](http://arxiv.org/abs/2404.02258)
- [Theory on Mixture-of-Experts in Continual Learning](http://arxiv.org/abs/2406.16437)
- [Outrageously Large Neural Networks: The Sparsely-Gated Mixture-of-Experts Layer](http://arxiv.org/abs/1701.06538)
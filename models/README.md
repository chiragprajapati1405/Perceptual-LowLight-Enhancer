# 🧠 Trained Models

Model weight files (`.keras`) are **not tracked by Git** due to their size.

## Available Models

| Model | Description | Size |
|-------|-------------|------|
| `original_baseline_model.keras` | Baseline U-Net (MSE loss only) | ~3.5 MB |
| `best_model_perceptual.keras` | Best model with VGG perceptual loss | ~10.4 MB |
| `exp_lambda1e4_*.keras` | Experiment: λ = 1×10⁻⁴ | ~10.4 MB |
| `exp_perc_norm_*.keras` | Experiment: perceptual + normalization | ~10.4 MB |
| `exp_perc_norm_l5e4_*.keras` | Experiment: perceptual + norm + λ = 5×10⁻⁴ | ~10.4 MB |

## How to Obtain

### Option 1: Train from scratch

Run the notebooks in `notebooks/` to train your own models:

```bash
jupyter notebook notebooks/02_perceptual_training.ipynb
```

Trained weights will be saved into this directory.

### Option 2: Download pre-trained weights

> Pre-trained weights will be available in the [Releases](../../releases) section.

## Usage

```python
from tensorflow import keras

model = keras.models.load_model("models/best_model_perceptual.keras")
enhanced = model.predict(low_light_image)
```

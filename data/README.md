# 📂 Dataset

This directory is **not tracked by Git** due to its size (~230 MB).

## Structure

```
data/
├── train/      # Training image pairs (low-light → normal-light)
├── eval/       # Validation image pairs
└── test/       # Test image pairs
```

## Download

You can use the **LOL (Low-Light) dataset** or any paired low-light / normal-light dataset.

### LOL Dataset

1. Download from the [official source](https://daooshee.github.io/BMVC2018website/)
2. Extract into this directory so the structure matches above

### Custom Dataset

Organize your images as paired directories of low-light inputs and corresponding ground-truth (normal-light) images inside `train/`, `eval/`, and `test/`.

## Notes

- Images are normalized to `[0, 1]` during preprocessing
- Supported formats: `.png`, `.jpg`, `.bmp`

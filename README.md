# Late-Night Smartphone Activity and Sleep Physiology in Students

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Python 3.11](https://img.shields.io/badge/python-3.11-blue.svg)](https://www.python.org/downloads/)

## Authors

- Alikhan Nurmetov
- Tanirbergen Bekzhan

## Overview

This repository contains the data-processing and statistical-analysis pipeline for a quantitative, within-subject (repeated-measures) observational study of how late-night mobile gaming and social media use relate to objective and subjective sleep characteristics in university students.

**Research questions**

- **RQ2 (exploratory):** How is the duration of late-night mobile gaming and social media activity associated with total sleep time and subjective sleep quality?
- **RQ3 (explanatory):** How is the same activity associated with sleep onset latency (SOL), wake after sleep onset (WASO), and the share of Deep N3 and REM sleep?

**Hypotheses**

- **H0:** Late-night gaming and social media duration have no statistically significant association with SOL, TST, WASO, sleep-stage ratios, or sleep quality.
- **H1:** Longer late-night gaming and social media duration is significantly associated with longer SOL, shorter TST, more WASO, and lower Deep N3 / REM ratios.

**Primary metric:** Sleep Onset Latency (SOL = T_sleep_onset − T_lights_out, minutes).
**Baseline:** nights with no screen activity during the 60 minutes before the sleep attempt.

## Planned Benchmarks

| Condition | Definition | Compared against | Metrics |
| :--- | :--- | :--- | :--- |
| A (baseline) | No screen activity ≥ 60 min before sleep attempt | – | SOL (primary); TST, WASO, Deep/REM % (secondary) |
| B | Interactive mobile gaming ≥ 45 min before sleep | A | same |
| C | Passive social media scrolling ≥ 45 min before sleep | A, B | same |

Guardrail: share of nights with valid wearable and app-tracker data (nights below the threshold in `config.yaml` are excluded).
Covariates: caffeine intake, stress (PSS-10), physical activity, chronotype.

## Repository Structure

```
sleep-smartphone-research/
├── config.yaml              # Experiment parameters (conditions, thresholds, paths)
├── data/
│   ├── sample/              # Tiny sample file (5–10 rows) for pipeline smoke test
│   ├── raw/                 # Raw exports (git-ignored)
│   └── processed/           # Cleaned data (git-ignored)
├── notebooks/
│   └── 01_eda_and_stats.ipynb
├── src/
│   ├── main.py              # Entry point: runs the pipeline on the configured data
│   ├── data_preprocessing.py
│   └── statistical_tests.py
├── outputs/                 # Generated logs and results (git-ignored)
├── Dockerfile
├── docker-compose.yml
├── requirements.txt         # Exact version pins
├── LICENSE
└── README.md
```

## System Requirements

- Docker 24+ (recommended), or Python 3.11 with `pip`
- Git
- About 1 GB of free disk space

## Quickstart

```bash
git clone https://github.com/Rubickstealer/sleep-smartphone-research.git && cd sleep-smartphone-research
docker build -t sleep-research .
docker run --rm -v "$(pwd)/outputs:/app/outputs" sleep-research python src/main.py --config config.yaml
```

This runs the pipeline on `data/sample/` and writes the result and a log to `outputs/`.

Without Docker:

```bash
pip install -r requirements.txt && python src/main.py --config config.yaml
```

Optional, to explore the notebook: `docker compose up`, then open http://localhost:8888.

## Configuration

All experiment parameters (screen-time thresholds per condition, minimum valid-night ratio, data paths, significance level) are defined in `config.yaml`. No values are hard-coded in `src/`.

## License

Released under the [MIT License](LICENSE).

## Citation

```
Nurmetov, A., & Bekzhan, T. (2026). Late-Night Smartphone Activity and Sleep
Physiology in Students [Software repository].
https://github.com/Rubickstealer/sleep-smartphone-research
```

# The Association Between Gaming and Social Media Activity on Smartphones During Late-Night Hours and the Physiological Characteristics of Sleep Among Students

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Python 3.11](https://img.shields.io/badge/python-3.11-blue.svg)](https://www.python.org/downloads/)
[![Status: Active Research](https://img.shields.io/badge/status-active%2520research-success.svg)]()

## Authors
- **Alikhan Nurmetov**[cite: 1]
- **Tanirbergen Bekzhan**[cite: 1]

---

## Project Overview & Research Aim
This repository contains the data analysis pipeline, scripts, and Jupyter notebooks for research investigating how late-night smartphone usage—specifically focusing on high-arousal mobile gaming versus passive social media scrolling—affects the physiological and subjective sleep characteristics of university students[cite: 1]. 

- **Research Question 2 (Exploratory):** How is the duration of gaming and social media activity on smartphones during late-night hours associated with total sleep duration and subjective sleep quality among students?[cite: 1]
- **Research Question 3 (Explanatory):** How is the duration of gaming and social media activity on smartphones during late-night hours associated with sleep onset latency, the number of nighttime awakenings, and the duration of individual sleep stages among students?[cite: 1]
- **Core Hypothesis ($H_1$):** Longer gaming and social media activity during late-night hours is statistically significantly associated with shorter total sleep duration, poorer subjective sleep quality, longer sleep onset latency, a greater number of nighttime awakenings, and altered sleep stage distributions[cite: 2].

---

## Repository Structure
```text
sleep-smartphone-research/
├── data/
│   ├── raw/                # Raw questionnaire responses and tracker exports (unmodified)
│   └── processed/          # Cleaned and preprocessed datasets ready for analysis
├── notebooks/
│   └── 01_eda_and_stats.ipynb # Exploratory Data Analysis and statistical hypothesis testing
├── src/
│   ├── __init__.py
│   ├── data_preprocessing.py # Script for data cleaning and variable encoding
│   └── statistical_tests.py # Statistical models (regression, correlation for H0/H1)
├── .gitignore              # Excludes logs, cache, and temporary files
├── requirements.txt        # Pinned Python dependencies
└── README.md               # Project documentation
```  

---

## System Requirements & Prerequisites
- **Operating System:** Cross-platform (Windows, macOS, Linux)
- **Software:** Python 3.11+, Git
- **Key Libraries:** Pandas, NumPy, Matplotlib, Seaborn, SciPy (указаны в `requirements.txt`)

---

## Quickstart & Reproducibility Guide
1. **Clone the repository:**
   ```bash
   git clone https://github.com/Rubickstealer/sleep-smartphone-research.git
   cd sleep-smartphone-research
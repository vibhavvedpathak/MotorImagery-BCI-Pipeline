# MotorImagery-BCI-Pipeline
Project Context

This repository was developed as part of my university course on Brain–Computer Interfaces (BCI). The course explores how brain signals can be recorded, interpreted, and translated into meaningful commands. One of the central topics in BCI research is motor imagery (MI)—imagining a movement without physically performing it. Despite the lack of real motion, MI produces recognizable EEG patterns, especially over the sensorimotor cortex.

Purpose of the Project

The assignment required implementing a complete EEG analysis and classification pipeline on real motor imagery data. The goal was to gain hands-on experience with:

Loading and inspecting raw EEG recordings

Preprocessing (filtering, re-referencing, and ICA)

Identifying event markers and segmenting trials

Extracting features relevant to motor imagery

Training and evaluating a classifier

This project transitions theoretical BCI concepts into practical skills using real data.

Why Subject S008?

This project uses Subject S008 from the EEG Motor Movement/Imagery Dataset (Schalk et al., 2022), hosted on OpenNeuro.
This dataset was chosen because it provides:

High-quality EEG recorded with a 64-channel extended 10–10 cap

Clear labels for motor imagery conditions (T1 = left hand, T2 = right hand)

A standardized recording environment (160 Hz sampling rate)

A well-established structure widely used in BCI research

Working with a single subject allowed for a focused, detailed analysis that is ideal for learning core BCI processing techniques.

Methodological Approach

All analysis steps were performed in MATLAB 2019a, following the GUI-based workflow demonstrated in the course materials (similar to the Oddball Task example). No custom scripting was required; instead, the project emphasizes understanding the preprocessing and classification procedures via EEGLAB and BCILAB.

Key steps included:

Preprocessing

Filtering the EEG signals

Applying average re-referencing

Removing noisy channels

Running ICA and rejecting artifact components using ICLabel

Epoching around motor imagery events (T1, T2)

Analysis and Classification

Extracting features such as bandpower or CSP components

Using BCILAB to train a classifier

Running cross-validation to evaluate classification performance

Interpreting spatial patterns (e.g., C3/C4 activation differences)

These steps form a complete BCI pipeline—from raw EEG to classification results.

Contribution to the BCI Report

This project directly supports my BCI course report, demonstrating my ability to:

Apply EEG preprocessing techniques

Understand sensorimotor dynamics in motor imagery

Build and evaluate machine-learning models for EEG

Relate preprocessing choices to classification performance

The repository includes all relevant datasets (processed versions), figures, and methodological notes required for reproducibility and documentation.

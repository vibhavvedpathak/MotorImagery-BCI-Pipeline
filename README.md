# MotorImagery-BCI-Pipeline
<h1>Project Context</h1>

<p>
This repository was developed as part of my university course on 
<strong>Brain–Computer Interfaces (BCI)</strong>. 
The course explores how brain signals can be recorded, interpreted, 
and translated into meaningful commands. One of the central topics in BCI 
research is <em>motor imagery (MI)</em>—imagining a movement without physically
performing it. Even without real motion, MI produces recognizable EEG patterns, 
particularly over the sensorimotor cortex.
</p>

<hr/>

<h2>Purpose of the Project</h2>

<p>
The assignment required implementing a 
<strong>complete EEG analysis and classification pipeline</strong> 
on real motor imagery data. The goal was to gain practical experience in:
</p>

<ul>
  <li>Loading and inspecting raw EEG recordings</li>
  <li>Filtering and re-referencing signals</li>
  <li>Running ICA and removing artifacts</li>
  <li>Identifying events and segmenting trials</li>
  <li>Extracting motor-imagery-related features</li>
  <li>Training and evaluating a classifier</li>
</ul>

<p>
This project bridges theoretical BCI concepts with hands-on analysis using
real EEG data.
</p>

<hr/>

<h2>Why Subject S008?</h2>

<p>
This project uses <strong>Subject S008</strong> from the 
<em>EEG Motor Movement/Imagery Dataset</em> (Schalk et al., 2022), 
published on OpenNeuro. The dataset was selected because it offers:
</p>

<ul>
  <li>High-quality EEG with a 64-channel extended 10–10 cap</li>
  <li>Clear event markers (<code>T1</code> = left hand, <code>T2</code> = right hand)</li>
  <li>A standardized 160 Hz sampling rate</li>
  <li>A widely used structure in motor imagery BCI research</li>
</ul>

<p>
Working with a single subject enabled a focused and deeply detailed analysis, 
ideal for learning core BCI processing techniques.
</p>

<hr/>

<h2>Methodological Approach</h2>

<p>
All analysis was performed using <strong>MATLAB 2019a</strong> with 
<strong>EEGLAB</strong> and <strong>BCILAB</strong>, following the step-by-step 
GUI workflow shown in the course instruction files (similar to the Oddball Task example).
No custom scripting was needed; instead, the emphasis was on understanding the logic 
behind each preprocessing and classification step.
</p>

<h3>Preprocessing steps included:</h3>
<ul>
  <li>Filtering the raw EEG signals</li>
  <li>Applying average re-referencing</li>
  <li>Removing noisy channels</li>
  <li>Performing ICA and rejecting artifact components with ICLabel</li>
  <li>Epoching around motor imagery events (<code>T1</code>, <code>T2</code>)</li>
</ul>

<h3>Analysis and classification steps included:</h3>
<ul>
  <li>Extracting bandpower or CSP-based features</li>
  <li>Training a classifier using BCILAB</li>
  <li>Performing cross-validation</li>
  <li>Inspecting spatial patterns such as C3/C4 activations</li>
</ul>

<hr/>

<h2>Contribution to the BCI Report</h2>

<p>
This project forms an essential part of my <strong>BCI course report</strong>. 
It demonstrates my understanding of EEG preprocessing, sensorimotor rhythms, 
and the practical steps required to classify motor imagery using machine-learning techniques. 
The repository includes processed datasets, visualizations, classification results, 
and methodological notes that support the written report.
</p>


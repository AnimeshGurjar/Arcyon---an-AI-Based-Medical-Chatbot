# AI-Based Medical Chatbot

This project builds an intelligent medical chatbot that predicts possible diseases based on user-input symptoms using machine learning. The chatbot aims to offer a first-level diagnostic experience and assist users in identifying conditions based on their descriptions.

## 💡 Motivation
The goal is to reduce the burden on healthcare professionals by offering an accessible and interactive tool that uses machine learning to simulate basic diagnostic reasoning.

## 🧠 Core Features
- **Symptom-to-Disease Prediction**: Users enter symptoms, and the chatbot returns the most probable diseases.
- **Model Evaluation and Selection**: Multiple ML models were trained and evaluated to determine the best-performing algorithm for this classification task.

## 🛠️ Technologies Used
- **Languages**: Python
- **Libraries**: scikit-learn, pandas, numpy, matplotlib
- **Interface**: Streamlit

## 📊 Machine Learning Models
- Multinomial Naive Bayes
- Random Forest Classifier
- Stochastic Gradient Descent (SGD) Classifier
- Multi-layer Perceptron (Neural Networks)

Performance of each model was compared using accuracy and class probability thresholds to ensure consistent disease prediction.

## 🖥️ Deployment
A **Streamlit-based web interface** was created to make the chatbot interactive and user-friendly.

## 🔍 Dataset
The dataset includes 132 symptoms and 41 diseases. Data preprocessing included:
- One-hot encoding of symptoms
- Grouping similar symptoms
- Splitting into training and testing sets

> Note: Due to dataset licensing, raw data is not included in this repository.

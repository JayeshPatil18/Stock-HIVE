<div align="left">
  <h1>GHR Incog 🚀 - Flutter App</h1>
  <img alt="Flutter" src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" style="margin-left: 10px;">
  <img alt="Dart" src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" style="margin-left: 10px;">
  <img alt="Firebase" src="https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black" style="margin-left: 10px;">
  <img alt="Node.js" src="https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=node.js&logoColor=white" style="margin-left: 10px;">
  <img alt="JavaScript" src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black" style="margin-left: 10px;">
  <img alt="MySQL" src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" style="margin-left: 10px;">
  <img alt="AWS" src="https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white" style="margin-left: 10px;">
  <img alt="Figma" src="https://img.shields.io/badge/Figma-F24E1E?style=for-the-badge&logo=figma&logoColor=white" style="margin-left: 10px;">
  <a href="https://github.com/JayeshPatil18/Stock-HIVE">
    <img alt="GitHub" src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" style="margin-left: 10px;">
  </a>
</div>
</br>


Welcome to **Stock HIVE**, a platform for sharing thoughts and ideas. Users can post messages and receive advice and opinions from others. Earn points for sharing helpful information. User-friendly and easy to participate and engage with others.

</br>

*Available Soon on Play Store.*

![Available](https://github.com/JayeshPatil18/Stock-HIVE/blob/master/stock-hive.png)

## Description

**Stock HIVE** facilitates open communication where users can share their thoughts and receive feedback anonymously. This platform emphasizes interaction and engagement, allowing users to contribute and earn points for sharing valuable insights.

## Features

- **Post Messages**: Share thoughts, ideas, and questions with the community.
- **Receive Advice/Opinions**: Get feedback and suggestions from other users.
- **Earn Points**: Gain points for contributing helpful information to the platform.
- **User-Friendly Interface**: Easy navigation and interaction for seamless engagement.

## Technology Used

- **Flutter**: For a smooth and intuitive cross-platform mobile application experience.
- **JavaScript**: Used for interactive elements and dynamic functionality.
- **MySQL**: Database management system for storing and retrieving data.
- **Dart**: Programming language for building user interfaces and logic within Flutter.
- **Node.js**: Backend environment for running server-side JavaScript code.
- **Amazon Web Services (AWS)**: Provides scalable cloud computing and storage solutions.


## Project Structure

We follow a clean architecture approach to ensure a scalable and maintainable codebase. Below is an overview of our project structure:

```plaintext
lib
│
├── constants
│   ├── utils
│   ├── routes
│
├── features
│   ├── authentication
│   │   ├── data
│   │   │   └── repository
│   │   ├── domain
│   │   │   └── entities
│   │   ├── presentation
│   │       ├── bloc
│   │       ├── provider
│   │       ├── pages
│   │       └── widgets
│   │
│   ├── post
│       ├── data
│       │   └── repository
│       ├── domain
│       │   └── entities
│       ├── presentation
│           ├── bloc
│           ├── provider
│           ├── pages
│           └── widgets
```

## Getting Started

To get started with **Review House**, follow these steps:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/JayeshPatil18/Stock-HIVE.git

1. **Install dependencies**:
   ```bash
   flutter pub get

1. **Run applicatoin**:
   ```bash
   flutter run

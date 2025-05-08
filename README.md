# README
Toy project for experimentating with rails 8 features. 
## Overview

Open Graph Viewer is a lightweight and user-friendly application designed to help developers and content creators preview and debug Open Graph metadata for their web pages. Open Graph metadata is essential for controlling how your content appears when shared on social media platforms like Facebook, Twitter, and LinkedIn. This tool ensures that your Open Graph tags are correctly implemented and display as intended.

## Features

- **Preview Open Graph Metadata**: See how your web pages will appear when shared on social media.
- **Customizable Testing**: Test different URLs and simulate various scenarios.
- **User-Friendly Interface**: Simple and intuitive design for easy navigation.


### Prerequisites

Before you begin, ensure you have the following installed on your system:

- **Ruby**: Version 3.4 or higher.
- **Bundler**: For managing Ruby gems.
- **Git**: To clone the repository.

### Installation

1. Clone the repository:
  ```bash
  git clone https://github.com/yourusername/open_graph_viewer.git
  cd open_graph_viewer
  ```

2. Install dependencies:
  ```bash
  bundle install
  ```

3. Start the application:
  ```bash
  rails server
  ```

4. Open your browser and navigate to:
  ```
  http://localhost:3000
  ```

---

## Usage

1. Enter the URL of the web page you want to test in the input field.
2. Click the "Preview" button to fetch and display the Open Graph metadata.
3. Review the preview to ensure the metadata is correct.

---

## Contributing

We welcome contributions to improve Open Graph Viewer! Here's how you can help:

1. Fork the repository on GitHub.
2. Create a new branch for your feature or bug fix:
  ```bash
  git checkout -b feature-name
  ```
3. Make your changes and commit them:
  ```bash
  git commit -m "Add feature-name"
  ```
4. Push your changes to your fork:
  ```bash
  git push origin feature-name
  ```
5. Open a pull request on the main repository.

### Guidelines

- Follow the existing code style and conventions.
- Write clear and concise commit messages.
- Include tests for new features or bug fixes.

---

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

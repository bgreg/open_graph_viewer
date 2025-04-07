# README

## Overview

Open Graph Viewer is a lightweight and user-friendly application designed to help developers and content creators preview and debug Open Graph metadata for their web pages. Open Graph metadata is essential for controlling how your content appears when shared on social media platforms like Facebook, Twitter, and LinkedIn. This tool ensures that your Open Graph tags are correctly implemented and display as intended.

## Features

- **Preview Open Graph Metadata**: See how your web pages will appear when shared on social media.
- **Customizable Testing**: Test different URLs and simulate various scenarios.
- **User-Friendly Interface**: Simple and intuitive design for easy navigation.


## Design
As a personal challenge, I decided to use as many of the new Rails 8 features as I could. I had experimented a little with the latest Rails 7 before this, but I am delighted to report that building a fresh app on Rails 8 was a breeze. Rails continues it's tradition of a "batteries included" philosophy. Specifically, I was able to stream data from a controller with only a few lines of code—and without Redis! Rails now ships with its own key/value store called Solid Queue to support Action Cable, streaming via Turbo, and async job handling.

Sticking with the theme of experimenting with all the new defaults, I also used SQLite. Of course, the database choice for a toy project isn't critical, but it was nice that SQLite came as the default and required zero configuration.

That said, I did incorporate some of my personal preferences. I like to test with RSpec, debug with Pry, authenticate with Devise, and lint with StandardRB. StandardRB is particularly nice because it provides a simple, no-customization, take-it-or-leave-it approach to code style. This eliminates bike-shedding conversations—similar to tools like Go's formatter.

## Challenges
While I was cruising along with the defaults for most of the project, I was initially surprised that the flash messages were not working. Turns out I almost forgot I was still building a single page application, it felt like a typical rails feature the whole time! Views were being rendered on the server and sent to the front end via sockets. This meant that we also had to stream in our flash messages to ensure they displayed correctly.

## Future
Over my career, I’ve deployed Rails apps in various ways. I’ve used Heroku countless times, appreciating its fast and simple deployment process, effortless scaling, free load balancing, and convenient plugin tools. I’ve also worked with bare-metal setups, including a memorable project where I built a self-installing RPM package to distribute a Rails app to every Apple Maps server worldwide.

I just finished reading about Kamal, and I would love to experiment with it. Perhaps I will, just for fun.  I was pleasantly surprised to learn how much complexity Kamal removes from container services. Anyone who has worked with Kubernetes knows how quickly container orchestration systems can become overwhelming. Kamal seems to offer a refreshing simplification in this space, at least for small to medium applications.


## Getting Started

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



<div align="center">
  <h1><b> Market Place API </b></h1>
</div>

<hr>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)  
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

# 📖  Market Place API  <a name="about-project"></a>

> The  Market Place API will provide functionality to create, read, and destroy data related to market place. It will serve as the server-side component responsible for handling requests and managing the database. The React client will interact with this backend to perform actions such as creating new market place and reservations, see the place details, and removing market place from the system.

[Link to the Front End Repo](https://github.com/dennis-every/book-an-appointment-front-end) <br>
[Backend Deployed link](http://boiling-taiga-49294-bcedd3da6f09.herokuapp.com/api-docs/index.html)

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
    <ul>
    <li><a href="https://react.dev/">React</a></li>
    <li><a href="https://redux.js.org/">Redux</a></li>
  </ul>
</details>
<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
  </details>
  <details>
  <summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

### Key Features <a name="key-features"></a>

- **Data Model**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running follow these simple example steps.

### Prerequisites

> You need the following tools be installed in your computer:

> - [Rails](https://guides.rubyonrails.org/)
> - [Git](https://www.linode.com/docs/guides/how-to-install-git-on-linux-mac-and-windows/)
> - [Ruby](https://github.com/microverseinc/curriculum-ruby/blob/main/simple-ruby/articles/ruby_installation_instructions.md)


### Setup

Clone this repository to your desired folder:

```sh
cd my-prefered-folder
  
git clone https://github.com/dennis-every/market_place_ror.git

```

### Install

Install this project with:

```sh
cd market_place_ror
  
bundle
```

### 💾 Database

Create the databases, run migrations, and populate it with seed data:

```sh
rails db:create
rails db:migrate
rails db:seed
```

### Usage

To run the project run the following commands:

```sh
rails s
```

### Run tests

To run tests, run the following command:


```sh
rspec spec --exclude-pattern "spec/integration/api/*_spec.rb"
```
To test the API documentation, run the following command:

```sh
rake rswag:specs:swaggerize
```
<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👥 Authors <a name="author"></a>


👤 **Nilton Segura**

- GitHub: [@Nkaleth](https://github.com/Nkaleth)
- Twitter: [@NoeSeguraL](https://twitter.com/NoeSeguraL)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/niltonsegura/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Complete the CRUD for market place and reservations.**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/dennis-every/market_place_ror/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

If you like this project please give it a star 😁🌟✨

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

Thanks to [Murat Korkmaz](https://www.behance.net/muratk) for the aswesome [design](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
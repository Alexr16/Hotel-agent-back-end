# HotelAgent API

This is the back-end API for HotelAgent, an app in which you can reserve a hotel. 

- Sign up and sign in to access the app.
- Add and Remove the hotel that you want to stay in.
- Reserve how many rooms days you need.
- Get cost information for the reservation process.
- Cancel reservation.

The API has endpoints for users/reservations/hotels.

Read the complete documentation [here](https://infinite-falls-52470.herokuapp.com/api-docs/index.html).

## UI Repo

Check the UI of this App [here](https://github.com/ahmedadel56/hotel-agent-front-end).


## Built With

- Ruby 3.1.2
- Ruby on Rails 7.0.3
- PostgreSQL 


## Getting Started

To get a local copy up and running follow these simple example steps.

- Click on the top right green "code" button.
- On the dropdown menu, choose the "download with zip" button.
- After download, extract the zip file and you have the project on your machine.
- Make sure that your PostgreSQL server is running and that you can establish a connection with the database.
- Execute `rails db:create` to create the database.
- Execute `rails db:migrate` to migrate the database.
- Execute `rails db:seed` to migrate the database.
- Run `rails s` to run the application.


## Tests

- If you want to run some unit tests, all you need to do is:
- On your terminal execute: `gem install rspec`
- Run the `rspec` command in this case over the path of `spec/`, and the resulting command will look like this: `rspec spec/`.
- If you want to run the tests over the entire project, you can execute the following command: `rspec`
- you can make a documentation test by just running `rake rswag:specs:swaggerize `.

## Deployment

[Live UI]()

Admin Account for Demo/testing: admin@hotmail.com (password: 123456)


[API Link](https://infinite-falls-52470.herokuapp.com/v1/most_recent)

## Kanban Board

In this project 3 developers have participated, connect with them in the [authors](#authors) section.

Check out the backend(API) kanban board: https://github.com/users/Alexr16/projects/3

This was the kanban board a the beginning of the project

![Start_kanban_board](https://user-images.githubusercontent.com/95060298/183961648-724a294f-a3f0-40bb-a37a-c89e3bde5375.png)

## Authors

👤 **Ahmed Adel**

- GitHub: [Ahmed](https://github.com/ahmedadel56)
- LinkedIn: [Ahmed Adel](https://www.linkedin.com/in/ahmed-adel56/)

👤 **Jorge Rios**


- GitHub: [@Alexr16](https://github.com/Alexr16)
- Twitter: [@ReveloJ](https://twitter.com/ReveloJ)
- LinkedIn: [Jorge Ríos](https://www.linkedin.com/in/jorgeriosr/) 

👤 **Sediqullah Badakhsh**

- GitHub: [@sediqullahbadakhsh](https://github.com/sediqullahbadakhsh)
- LinkedIn: [@sediqullah](https://www.linkedin.com/in/sediqullah/) 
- Twitter: [@sediqullah6](https://twitter.com/sediqullah6) 


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!
Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](./LICENSE) licensed.

# Quantum Circuit Simulator

*This is only the backend code for the Quantum Circuit Simulator project.*

A web application that allows the user to graphically build quantum circuits and view the results on a dashboard. This project combines **React(JavaScript)** frontend with a **Flask(Python)** backend that is the host program to call **Q#** functions to perform quantum operations.

I rewrote the backend logic in JavaScript and you can visit the deployed, fully functional app at https://master.d2fi7ys7p5ku9u.amplifyapp.com/.

![app](./../quantum-react-frontend/src/app.png)

Fully functional frontend source code and installation guide can be found [here](https://github.com/XandraV/quantum-react-frontend).

## Installation

You will need to have the latest version of Python 3, pip and Flask installed on your machine. [Here](https://flask.palletsprojects.com/en/1.1.x/installation/) you can find the official guide on how to set up a flask server.

Clone the master branch and then run 
`python app.py` from the project folder to start the local server.

## Resources

| Description                                                        | Link                                                                      |
| :----------------------------------------------------------------- | :------------------------------------------------------------------------ |
| Flask web application framework             | [Flask](https://flask.palletsprojects.com/en/1.1.x/) |

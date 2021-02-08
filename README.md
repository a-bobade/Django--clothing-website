# Django clothing website
This is a very simple e-commerce website built with Django.
# Project website 
http://eashop.herokuapp.com
# Project Summary
The website displays products. Users can add products to their cart. They can then enter their information and choose Paystack to handle the payment processing.
# Running this project
- To get this project up and running you should start by having Python installed on your computer. 

- Activate the virtual environment with:\
  venv\Scripts\activate

- Clone or download this repository and open it in your editor of choice. 

- Then install the project dependencies with:\
  pip install -r requirements.txt

- Import the djangodatabase.sql file

- You need to connect to a MySQL server to run this project.\
  Edit DATABASES configurations in shopping/settings.py

- Edit EMAIL configurations also in shopping/settings.py

- Make migrations with these commands:\
  python manage.py makemigrations\
  python manage.py migrate

- Now you can run the project with this command:\
  python manage.py runserver

- Note if you want payments to work, you will need to enter your own Paystack API keys into the settings files.

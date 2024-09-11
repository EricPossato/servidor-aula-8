# Use the desired base image
FROM python:3.9

# change the working directory to /app
WORKDIR /app

# Copy the source code to the container
COPY . /app

# Install all system dependencies
RUN pip install -r src/ericalp_requirements.txt

# Copy the users.csv file to the container directory
COPY src/users.csv /app/src/users.csv

# Set the port on which the server will run
EXPOSE 8080

# Create volume for persistent storage
VOLUME [ "/app/src" ]

#change the working directory to /app/src
WORKDIR /app/src

# Set the command to initialize the database and run the server
CMD ["bash", "-c", "python3 initialize.py && python3 adduser.py && python3 softdes.py"]

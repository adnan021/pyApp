# downloads latest version
FROM python:latest



#Labels as key value pair
LABEL Maintainer="madnan"

# Any working directory can be chosen as per choice like '/' or '/home' etc
# i have chosen /usr/local/source/
WORKDIR /pyApp

# Copy the requirements file into the container at /app
COPY requirements.txt /pyApp/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

#COPY the remote file at working directory in container
COPY app.py ./

# Now the structure looks like this 'usr/local/source/repos/pyApp/app.py'


#CMD instruction should be used to run the software
#contained by your image, along with any arguments.
CMD ["python3", "./app.py"]
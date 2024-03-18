# Start with the base Python container
# FIXME: Update the version
FROM docker.io/python:3.9.2

# Install packages that are required. 
RUN pip install Django==4.2.9 
RUN pip install psutil
RUN mkdir /data

# Copy the Python code into the container
COPY mysite /mysite

# Set environment variables 
ENV PORT=8000 
ENV STUDENT_NAME=JesusG
ENV SITE_NAME=CIS92
ENV SECRET_KEY=2121
ENV DEBUG=1
ENV DATA_DIR=/data

# Set the working directory
WORKDIR /mysite 

# Default command to execute in the container
CMD python ./manage.py runserver 0.0.0.0:$PORT
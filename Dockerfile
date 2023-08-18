FROM tensorflow/tensorflow:1.14.0-gpu-py3

# python3.5 has its problems
#FROM tensorflow/tensorflow:1.13.1-gpu-py3

WORKDIR ~/build

RUN chmod 1777 /tmp
RUN pip install --upgrade pip cmake

# frankly, this is not okay, seems to be custom OS-dependent stuff
# todo: remove
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A4B469963BF863CC

RUN apt-get update && apt install libgl1 -y
COPY ./context/requirements.txt .
RUN pip install -r requirements.txt

RUN rm -rf ~/build

COPY . /project
WORKDIR /project

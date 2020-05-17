FROM python:3.7

RUN mkdir flask

COPY . /flask/

WORKDIR /flask

RUN chmod +x entrypoint.sh

# Install the dependnecies
RUN pip3 install --no-cache-dir -r requirements.txt

EXPOSE 5000


CMD ["bash", "entrypoint.sh"]

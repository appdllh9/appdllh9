FROM jmthonar1/userbot:alpine

#clonning repo 
RUN git clone https://github.com/jmthonar1/userbot/tree/master.git /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]

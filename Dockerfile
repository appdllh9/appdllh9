FROM jmthonar/userbot:alpine

#clonning repo 
RUN git clone https://github.com/jmthonar/userbot/tree/master.git /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r mohamad/requirements.txt

ENV PATH="/home/userbot/mohamad/bin:$PATH"

CMD ["python3","-m","userbot"]

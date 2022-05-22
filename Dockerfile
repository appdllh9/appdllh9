FROM jmthonar/userbot:slim-buster

#clonning repo 
RUN git clone https://github.com/jmthonar/userbot.git /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]

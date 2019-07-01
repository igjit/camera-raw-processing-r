FROM igjit/r-raw-processing

RUN apt update && apt install -y \
    fonts-ipaexfont \
 && apt clean \
 && rm -rf /var/lib/apt/lists/*

RUN install2.r --error \
    bookdown

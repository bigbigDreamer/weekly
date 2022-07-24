FROM squidfunk/mkdocs-material
COPY ./ .
RUN pip install -r .requirements.txt

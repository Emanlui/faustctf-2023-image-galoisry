# TODO: correct path
FROM localhost:8000/image-galoisry-deps
#FROM localhost/dtenbrinck/image-galoisry-deps

# INSTALL APP
COPY app app
EXPOSE 5000/tcp

# RUN WEBAPP
WORKDIR "/app"
ENTRYPOINT ["python", "./main.py"]
#ENTRYPOINT ["gunicorn", "--chdir", "app", "--bind", "[::]:5000", "main:app"]

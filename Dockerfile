FROM base/archlinux
MAINTAINER citrux <369565@gmail.com>
RUN pacman -Sy && pacman -S python-flask python-markdown python-pip gunicorn --noconfirm
CMD ["gunicorn", "--bind", "0.0.0.0", "--chdir", "/app", "main:app"]

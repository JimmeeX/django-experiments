from django.http import HttpResponse

import logging

logger = logging.getLogger(__name__)
logger.setLevel(logging.DEBUG)

formatter = logging.Formatter(
    fmt="[%(asctime)s %(levelname)s %(name)s:%(lineno)d] %(message)s",
    datefmt="%d/%m/%Y %H:%M:%S",
)

stream_handler = logging.StreamHandler()
stream_handler.setFormatter(formatter)

logger.addHandler(stream_handler)


def home(request):
    print("GOODBYE")
    logger.critical("HELLo")
    return HttpResponse("lolo!")

# alpine-drawio-batch ![alpine-drawio-batch](https://github.com/Burnett01/docker-images/workflows/alpine-drawio-batch/badge.svg?branch=alpine-drawio-batch)

Docker Image for converting draw.io compressed XML-documents to ``jpeg|png|svg|pdf`` using [drawio-batch](https://github.com/languitar/drawio-batch).

+ Node.js stable (Alpine)
+ Chromium

This image installs Chromium from the Alpine package repos in order to provide a fast build for [drawio-batch]().<br />
Downloading Chromium via the underlaying puppeteer package would take insanely long.

## Instructions:

> FROM burnett0/alpine-drawio-batch

> docker run ``<input-file>`` ``<output-file>``

> docker run test.drawio test.jpeg


Available flags:

```
--quality (Image quality for png|jpeg)

--scale (Scales the output file size for pixel-based output formats)

--format (pdf|svg|png|jpeg) (Not needed because format is determined from the output extension)
```

### Example:

1. Place your drawio document (test.drawio) into a folder (src) and mount that folder into your container.
2. Run:
> docker run burnett0/alpine-drawio-batch -v $(pwd)/src:/src --quality 100 --scale 1.0 src/test.drawio src/test.png


---

## Github Action

This image is also available for Github Actions:

[actions-drawio](https://github.com/Burnett01/actions-drawio/)

---

## Contribution

[drawio-batch](https://github.com/languitar/drawio-batch/)


---
layout: post
title: "OCR for PDF using Google Vision."
date: 2018-09-13T05:22:42Z
authors: ["Juan Uys"]
categories: ["Tech"]
description: "Showing how to get OCR for PDF using Google Vision."
thumbnail: "/assets/images/gen/blog/blog-10-thumbnail.webp"
image: "/assets/images/gen/blog/blog-10.webp"
---

Here we show how to get Google Vision to run OCR on a PDF in Google Storage using NodeJS.

Firstly, install the SDK.

    npm install --save @google-cloud/vision


Here's the code. It will grab the PDF (or TIFF - the other supported format) from the location `gcsSourceUri` and once completed, put the OCR JSON in the location `gcsDestinationUri`.

```
const vision = require('@google-cloud/vision')

function ocr() {
  const gcsSourceUri = `gs://your-bucket-name/path/to/the.pdf`
  const gcsDestinationUri = `gs://your-bucket-name/path/to/ocr.json`

  const inputConfig = {
    // Supported mime_types are: 'application/pdf' and 'image/tiff'
    mimeType: 'application/pdf',
    gcsSource: {
      uri: gcsSourceUri
    }
  }
  const outputConfig = {
    gcsDestination: {
      uri: gcsDestinationUri
    }
  }
  const features = [{ type: 'DOCUMENT_TEXT_DETECTION' }]
  const request = {
    requests: [
      {
        inputConfig: inputConfig,
        features: features,
        outputConfig: outputConfig
      }
    ]
  }

  return client.asyncBatchAnnotateFiles(request)
    .then(([operation]) => operation.promise())
    .then(([filesResponse]) => {
      return filesResponse
    })
}
```

The response `filesResponse` contains some more details about the completed operation, but you can now find your OCR result in Google Storage at the defined location.
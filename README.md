# shellcodeExtract

## 概要

ctfなどで、byte codeを手っ取り早く吐いてほしいときに使う感じのやつ

## 使い方

```bash
$ ./shellcodeExtract orw.bin
\xb8\x02\x00\x00\x00\x48\xbf\x54\x00\x00\x00\x00\x00\x00\x00\xbe\x00\x00\x00\x00\x0f\x05\x48\x89\xc7\x48\xbe\x64\x00\x00\x00\x00\x00\x00\x00\xba\x14\x00\x00\x00\xb8\x00\x00\x00\x00\x0f\x05\xb8\x01\x00\x00\x00\xbf\x01\x00\x00\x00\x48\xbe\x64\x00\x00\x00\x00\x00\x00\x00\xba\x14\x00\x00\x00\x0f\x05\xb8\x3c\x00\x00\x00\x0f\x05\x00\x00\x00\x2f\x74\x6d\x70\x2f\x66\x6c\x61\x67\x2e
```

これをコピーして`payload`変数とかに`b""`で挟んで使う予定。
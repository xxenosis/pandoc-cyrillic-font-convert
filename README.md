# Pandoc converter with Cyrillic fonts support

## Usage

### Build docker image

```shell
$ docker build -t pandoc-cyrillic-convert .
```

Optionally you can add fonts to `fonts` catalog and rebuild image. It may be configured in `config.yaml` used 
due convert

### Convert .md to .pdf

In local directory make script executable and run docker image with default config file:

```shell
$ chmod +x convert
$ ./convert source.md output.pdf
```

Convert script uses default image name _`pandoc-cyrillic-convert`_

## More

Use [Pandoc Manual](https://pandoc.org/MANUAL.html) for additional config options

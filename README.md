# mousecloak/docker-unflac

Unofficial [unflac](https://git.sr.ht/~ft/unflac) Docker image.

## Introduction

[unflac](https://git.sr.ht/~ft/unflac) is a command line tool for fast frame accurate audio image + cue sheet splitting.

This is a Docker image that contains the unflac utility and its dependencies, ready to run.


## Get it

```shell
docker pull mousecloak/unflac
```

## Run it
```shell
docker run -v "$PWD:$PWD" -w "$PWD" --rm mousecloak/unflac -h
```
```shell
Usage: unflac [OPTION] ... [INPUT] ...

INPUT can be either a directory or a CUE sheet file.
If no inputs where specified, a current directory is used.

  -arg-ffmpeg value
    	Add an argument to ffmpeg. Example: "-arg-ffmpeg -qscale:a --arg-ffmpeg 2"
  -d	Dry run
  -f string
    	Output format. Example: "-f ogg". Any format that ffmpeg supports can be used (default "flac")
  -h	Show command usage
  -j	Dump all inputs as json
  -n string
    	File naming template (default "{{.Input.Artist | Elem -}} / {{- with .Input.Date}}{{.}} - {{end}}{{with .Input.Title}}{{. | Elem}}{{else}}Unknown Album{{end -}} / {{- printf .Input.TrackNumberFmt .Track.Number}} - {{.Track.Title | Elem}}")
  -o string
    	Output directory (default ".")
  -q	Only print errors
  -t value
    	Extract specific track(s). Example: "-t 1 -t 2"
```

### Shell suits

For a seamless experience, consider using a shell alias:

#### Bash
```shell
alias unflac='docker run -v "$PWD:$PWD" -w "$PWD" --rm mousecloak/unflac'
```

#### Fish
```shell
alias unflac 'docker run -v "$PWD:$PWD" -w "$PWD" --rm mousecloak/unflac'
```
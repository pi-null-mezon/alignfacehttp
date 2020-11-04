alignfacehttp
===

Face alignment http server was designed to make one specific task - face alignment. So, it performs affine transformation of the input image with rescaling.
As output you will get face with fixed **distance** between eyes, eyes-line will be horizontal and image dimensions will be scaled to **width**x**height**.

Single call to apply alignment: 

```
curl -X POST -F file=@mypic.jpg -F distance=90 -F width=300 -F height=400 http://localhost:5000/align 
```

# Example



# Installation

```
git clohe http://github.com/pi-null-mezon/alignfacehttp.git
cd alignfacehttp
sudo docker build -t alignfacehttp --force-rm .
sudo docker run -p 5000:5000 -d --name alignfacehttp --rm -v ${PWD}:/usr/src/app alignfacehttp

```

# Thanks

* [Opencv](https://opencv.org/)
* [Dlib](http://dlib.net/)







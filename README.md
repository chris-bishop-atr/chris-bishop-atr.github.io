### Jekyll Minima Theme Git Repo:
- [Jekyll - Minima](https://github.com/jekyll/minima)

### Jekyll Codex PureCSS Based Image Slider / Carousel:
- [Jekyll Codex - Slider/Carousel](https://jekyllcodex.org/without-plugin/slider/)

### Convert Work Docx Resume to Markdown with Pandoc CLI:
- [Git -HSF - Pandoc](https://github.com/HSF/hsf.github.io/blob/master/jekyll-beginners.md#converting-contents-from-word-or-googledoc)
- [Pandoc](http://pandoc.org/)

**Example Conversion Command**

```bash
pandoc -t gfm --atx-headers -o chris-bishop-resume.markdown chris-bishop-resume.docx
```

**TODO:**

Import `chris-bishop-resume.markdown` in to its own section of `/about/` - OR - make it its own page and update `_includes/header.html > nav`

**Local gem Directory:**

```bash
cbishop@penguin:~/scripts/gh-pages/chris-bishop.github.io$ 
cbishop@penguin:~/scripts/gh-pages/chris-bishop.github.io$ pwd
/home/cbishop/scripts/gh-pages/chris-bishop.github.io
cbishop@penguin:~/scripts/gh-pages/chris-bishop.github.io$ 
cbishop@penguin:~/scripts/gh-pages/chris-bishop.github.io$ bundle show minima
/home/cbishop/gems/bundler/gems/minima-7a326eb6df07
cbishop@penguin:~/scripts/gh-pages/chris-bishop.github.io$ ls -latr /home/cbishop/gems/bundler/gems/minima-7a326eb6df07/
total 164
drwxr-xr-x 1 cbishop cbishop    38 Dec  4 02:52 ..
-rw-r--r-- 1 cbishop cbishop   251 Dec  4 02:52 .gitignore
drwxr-xr-x 1 cbishop cbishop    18 Dec  4 02:52 .github
-rw-r--r-- 1 cbishop cbishop   208 Dec  4 02:52 .editorconfig
-rw-r--r-- 1 cbishop cbishop   264 Dec  4 02:52 .travis.yml
-rw-r--r-- 1 cbishop cbishop 12668 Dec  4 02:52 README.md
-rw-r--r-- 1 cbishop cbishop  1115 Dec  4 02:52 LICENSE.txt
-rw-r--r-- 1 cbishop cbishop  6652 Dec  4 02:52 History.markdown
-rw-r--r-- 1 cbishop cbishop   194 Dec  4 02:52 Gemfile
-rw-r--r-- 1 cbishop cbishop  3228 Dec  4 02:52 CODE_OF_CONDUCT.md
-rw-r--r-- 1 cbishop cbishop   398 Dec  4 02:52 404.html
drwxr-xr-x 1 cbishop cbishop   198 Dec  4 02:52 _includes
-rw-r--r-- 1 cbishop cbishop  1583 Dec  4 02:52 _config.yml
drwxr-xr-x 1 cbishop cbishop    78 Dec  4 02:52 _layouts
drwxr-xr-x 1 cbishop cbishop    12 Dec  4 02:52 _sass
drwxr-xr-x 1 cbishop cbishop   362 Dec  4 02:52 _posts
-rw-r--r-- 1 cbishop cbishop   539 Dec  4 02:52 about.md
-rw-r--r-- 1 cbishop cbishop   290 Dec  4 02:52 index.md
drwxr-xr-x 1 cbishop cbishop    52 Dec  4 02:52 assets
-rw-r--r-- 1 cbishop cbishop 96543 Dec  4 02:52 screenshot.png
drwxr-xr-x 1 cbishop cbishop   418 Dec  4 02:52 .
drwxr-xr-x 1 cbishop cbishop    54 Dec  4 02:52 script
drwxr-xr-x 1 cbishop cbishop   176 Dec  4 02:52 .git
-rw-r--r-- 1 cbishop cbishop  2517 Dec  4 02:52 minima.gemspec
cbishop@penguin:~/scripts/gh-pages/chris-bishop.github.io$
```

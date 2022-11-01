# PhD Thesis of Rémi Monthiller, entitled "A mechanistic approach to plankton migration"

[![standard-readme compliant](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)

My PhD thesis, feel free to use any of this if it can be of any use for you.
This thesis is based of the awesome [template of Dr Jean-Paul Ebejer (University of Malta)](https://github.com/jp-um/university_of_malta_LaTeX_dissertation_template).
If you are looking for a template, you should definitely check out his project before checking this one and most of the "template aspects" of this project should be credited to him.

## Table of Contents

- [Background](#background)
- [Install](#install)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Background

This software has been produced during my PhD thesis and as part as the European Research Council project: [C0PEP0D](https://c0pep0d.github.io/)

# Install

## Dependencies

* "you will need the beautiful Lato font for headings.  This sans font creates a pleasing contrast with the serif text.  `lato.sty` can be installed (on Ubuntu) with:", cited from the original template's README FILE.

```
sudo apt install texlive-fonts-extra
```

### Installing

Start by cloning this repository with its submodules.

```sh
$ git clone --recurse-submodules https://github.com/C0PEP0D/sheld0n.git
```

## Usage

Just run the following to compile the document.

```sh
$ pdflatex -shell-escape main.tex
$ bibtex main.aux
$ makeindex main.nlo -s nomencl.ist -o main.nls
$ pdflatex -shell-escape main.tex
$ pdflatex -shell-escape main.tex
```

## Maintainers

Rémi Monthiller - [@rmonthil](https://gitlab.com/rmonthil) - remi.monthiller@gmail.com

## Contributing

Feel free to dive in! [Open an issue](https://github.com/rmonthil/c0pep0d/issues/new) or submit PRs.
Or just propose corrections if you notice anything that would need correction.

## License

[GPLv3](LICENSE) © Rémi Monthiller

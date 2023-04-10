
<!-- README.md is generated from README.qmd. Please edit that file -->

# Quarto profiles example

It’s possible to create multiple versions of the same document with the
same output format (i.e. multiple types of PDFs) using Quarto’s [Project
Profiles](https://quarto.org/docs/projects/profiles.html). This
repository shows a quick example of how to do it.

There are three `_quarto.yml` files here:

1.  `_quarto.yml` defines the overall project settings and sets the
    default profile to `nice`:

    ``` yaml
    project:
      title: "Profiles example"

    profile: 
      default: nice
    ```

2.  `_quarto-nice.yml` defines the document settings when using the
    `nice` profile (with [EB
    Garamond](https://fonts.google.com/specimen/EB+Garamond) and
    [Jost](https://fonts.google.com/specimen/Jost) from Google Fonts).
    It places the rendered PDF in a folder named “output”:

    ``` yaml
    project:
      output-dir: "output"

    format:
      pdf:
        mainfont: "EB Garamond"
        sansfont: "Jost"
    ```

3.  `_quarto-ugly.yml` defines the document settings when using the
    `ugly` profile. It places the rendered PDF in a folder named
    “output-ugly”:

    ``` yaml
    project:
      output-dir: "output-ugly"

    format:
      pdf:
        mainfont: "Comic Sans MS"
        sansfont: "Papyrus"
    ```

With these three files, rendering the document will automatically use
the `nice` profile and generate a PDF like this at
[`output/example.pdf`](output/example.pdf):

<img src="img/example-nice.png" style="width:100.0%" />

To generate the ugly PDF, you can either set an environment variable:

``` sh
export QUARTO_PROFILE=ugly
asdf
quarto render example.qmd
```

Or use a command line option:

``` sh
quarto render example.qmd --profile ugly
```

This will tell Quarto to use the `ugly` profile and it will generate a
PDF like this at [`output-ugly/example.pdf`](output-ugly/example.pdf):

<img src="img/example-ugly.png" style="width:100.0%" />

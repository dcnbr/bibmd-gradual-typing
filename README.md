A [knowledge graph](https://en.wikipedia.org/wiki/Knowledge_graph)
bibliography, marked-down, for literature concerning
[gradual typing](https://en.wikipedia.org/wiki/Gradual_typing).

Dependancies:
- [GNU make](https://git.savannah.gnu.org/git/make.git)
- [BibTool](https://github.com/ge-ne/bibtool)


# Usage
`~$ make` or `~$ make all` gathers the entire bibliography into a
single file `all.bib`.
Use `~$ make clean` to clear all generated .bib files.


# Format
Bibliography entries are `*.md`, but are interoperable with bibtex.
Generally, they adhere the following format:

```
---
bibtex: |
  @type{citekey,
	<bibtex fields>
  }

<other yaml frontmatter>
---

<ordinary markdown>

# Cites
- <wikilinks to other bibliography entries>

``` 

Some particular details about the format:

## Avoid "@" in plaintext
Bibtex disregards text until it encounters an "@", at which point it
attempts to parse a bibtex entry of the usual format.
Since "@" is not a special markdown character, a markdown file can
simultaneously be valid bibtex without loss of syntax features, so
long as "@" is only used to declare a bibtex entry.

## YAML indentation matters
In order for the front matter bibtex entry to interpret as a valid
yaml multiline block, the entire entry must be indented at least one
space.
The indentation can vary per line, but must exist. 

## "# Cites" and Wikilinks
Ideally, each marked-bib entry links back to other entries that

1. the paper itself cites, and
2. also has an entry in the bibliography

Doing so enables PKG tools like
[Obsidian](https://obsidian.md/) or
[logseq](https://logseq.com/).
Wikilinks look like:
```
[[foo.md]]
```

## Filenames and Citekeys
...should be identical (other than the .md file extension).
This isn't strictly nessecary, but it really should be.

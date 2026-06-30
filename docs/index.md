# IDUtils

Small library for validating and normalising persistent identifiers used in scholarly communication.

- Free software: Revised BSD license
- Source: [github.com/inveniosoftware/idutils](https://github.com/inveniosoftware/idutils)
- PyPI: [pypi.org/project/idutils](https://pypi.org/project/idutils/)

## Features

- Addition of custom schemes supporting all features of predefined schemes
- Validation and normalization of persistent identifiers
- Detection of persistent identifier scheme
- Generation of resolving links for persistent identifiers
- Supported schemes: ISBN10, ISBN13, ISSN, ISTC, DOI, Handle, EAN8, EAN13, ISNI,
  ORCID, ARK, PURL, LSID, URN, Bibcode, arXiv, PubMed ID, PubMed Central ID,
  GND, SRA, BioProject, BioSample, Ensembl, UniProt, RefSeq, Genome Assembly,
  GEO, ArrayExpress, OpenAlex, Wikidata QID, CSTR, RRID

## Installation

```console
pip install idutils
```

## Quick start

```python
import idutils

# Validate an identifier
idutils.is_doi("10.1234/foo")  # True
idutils.is_orcid("0000-0002-1825-0097")  # True

# Detect the scheme of an identifier
idutils.detect_identifier_schemes("10.1234/foo")  # ['doi']

# Normalize an identifier
idutils.normalize_doi("https://doi.org/10.1234/foo")  # "10.1234/foo"

# Generate a URL for an identifier
idutils.to_url("10.1234/foo", "doi")  # "https://doi.org/10.1234/foo"
```

# note-aggr

Experiment to use LLMs to generate small wiki-like knowledge bases for daily notes.

Short-term vision:
- Generate topic related pages
- Generate entity related pages (people, organizations)
- Cross-link topic and entity pages

## Usage

```bash
source .env.sh

# process notes & generate docs
./bin/process --documents ./documents/daily/2025-08-16 \
    ./ingest/daily/2025-08-16
```

## Setup

```bash
# Install dependencies (manjaro / arch)
pamac install httpie jq go-yq
```

```bash
# copy env template
cp .env.sh .env.local.sh

# fill in secrets  🤭
nvim .env.local.sh
```

```bash
source .env.sh

mkdir ./documents

# Explain what you're interested in
./bin/aboutme-normalize <<EOF > ./documents/about-me.md
My name is Peter Haßler. I am a software developer working at Fancy Travel Corp. My main focus areas are ...
EOF
```

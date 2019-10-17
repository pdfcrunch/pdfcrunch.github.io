#!/bin/bash

set -e

DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%T")

read -p "Enter the title:" TITLE
TITLE=${TITLE:-The good, the bad, and the ugly.}

KEBAB=$(echo $TITLE | tr -cd '[:alnum:][:space:]' | tr [:upper:] [:lower:] | tr [:space:] '-')

NEW=_posts/${DATE}-${KEBAB%?}.md
cp _drafts/template.md $NEW

read -p "A comma-delimited list of tags:" TAGS
TAGS=${TAGS:-life}

read -p "Category (default: blog):" CATEGORY
CATEGORY=${CATEGORY:-blog}

sed -i '' "s/%TITLE%/$TITLE/" $NEW
sed -i '' "s/%DESCRIPTION%/$TITLE/" $NEW
sed -i '' "s/%TAGS%/$TAGS/" $NEW
sed -i '' "s/%CATEGORY%/$CATEGORY/" $NEW


echo "New post ready for edits at $NEW"

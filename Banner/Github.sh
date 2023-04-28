#! /bin/bash

# Set your GitHub username and access token

USERNAME="Vikash-8090-Yadav"
ACCESS_TOKEN="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"

# Set the path to your new profile picture
IMAGE_PATH="Profile.png"
gzip -c "$IMAGE_PATH" > "$IMAGE_PATH.gz"

# Encode the compressed image in base64
IMAGE_BASE64=$(base64 -w 0 "$IMAGE_PATH.gz")

# Encode the image in base64
#IMAGE_BASE64=$(base64 -w 0 "$IMAGE_PATH")

# Update your profile picture using the GitHub API
#curl --request PATCH \
 # --url "https://api.github.com/user" \
 # --header "Authorization: Bearer $ACCESS_TOKEN" \
 # --header "Content-Type: application/json" \
#  --data "{\"avatar_url\": \"data:image/png;base64,$IMAGE_BASE64\"}"

JSON_FILE=$(mktemp)


echo "{\"avatar_url\": \"data:image/png;base64,$IMAGE_BASE64\"}" > "$JSON_FILE"

# Update your profile picture using the GitHub API
curl --request PATCH \
  --url "https://api.github.com/user" \
  --header "Authorization: Bearer $ACCESS_TOKEN" \
  --header "Content-Type: application/json" \
  --data @"$JSON_FILE"

# Delete the temporary file
rm "$JSON_FILE"

rm "$IMAGE_PATH.gz"

echo "Done"

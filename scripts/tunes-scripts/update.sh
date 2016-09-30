curl --include --request PATCH http://localhost:3000/tunes/1 \
  --header "Content-Type: application/json" \
  --data '{
    "tune": {
      "name": "I am a tune"
    }
  }'

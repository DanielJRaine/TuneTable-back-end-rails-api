curl --include --request GET http://localhost:3000/tune \
  --header "Content-Type: application/json" \
  --data '{
    "tune_data": {
      "name": "Dusky Night"
    }
  }'

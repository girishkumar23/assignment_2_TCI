#using jq command line json parser
curl -s https://api.covid19india.org/v4/min/data.min.json | jq 'keys[] as $k | "State: \($k), ActiveCases: \(.[$k] | .total.confirmed - (.total.deceased + .total.recovered))"'

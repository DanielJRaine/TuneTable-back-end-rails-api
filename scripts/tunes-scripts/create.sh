curl --include --request POST http://localhost:3000/tunes \
  --header "Content-Type: application/json" \
  --data '{
    "tune_data": {
      "name": "Dusky Night",
      "ABCnotation": "X: 1\nT: Dusky Night\nS: Thompson 1777\nN: From Apted Book of Country Dances\nN: abc version by Robert Bley-Vroman vroman@hawaii.edu 14 October 1996\nM: 6/8\nL: 1/8\nK:D\n|: A | d2d A2G  | F>EF D2A | B2A G2F | F3   E2E  |\n       A2 A B2B | c>Bc A2A | d2d e2e | f>ef d2F |\n      B>cd e>fg | A>Bc d2A | B2B A>GA | D3-D2  :|\n|: F/D/ | A2A  A2A | A3-A2  B/A/ | d2d d>ef | d3-d2 A |\nB>cd e>fg| A>Bc d2A | B2G A2A  | D3-D2 :|"
    }
  }'

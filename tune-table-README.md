### Tunes
`T: Dusky Night
S: Thompson 1777
N: From Apted Book of Country Dances
N: abc version by Robert Bley-Vroman vroman@hawaii.edu 14 October 1996
M: 6/8
L: 1/8
K:D
|: A | d2d A2G  | F>EF D2A | B2A G2F | F3   E2E  |
       A2 A B2B | c>Bc A2A | d2d e2e | f>ef d2F |
      B>cd e>fg | A>Bc d2A | B2B A>GA | D3-D2  :|
|: F/D/ | A2A  A2A | A3-A2  B/A/ | d2d d>ef | d3-d2 A |
          B>cd e>fg| A>Bc d2A | B2G A2A  | D3-D2 :|`
          
with escaped linebreaks


# tonic_note: 'Bb',
# base_key_quality: 'minor',
# mode_name: 'Phrygian',
# mode_scale_degree_from_base: '5',
# time_signature: '6/8',
# meter_name: 'jig',

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| GET    | `/tunes`               | `tunes#index`     |
| GET    | `/tunes/:id`           | `tunes#show`      |
| POST   | `/tunes`               | `tunes#create`    |
| PATCH  | `/tunes/:id`           | `tunes#update`    |
| DELETE | `/tunes/:id`           | `tunes#destroy`   |

#### POST /sign-up

Request:

```sh
curl --include --request POST http://localhost:3000/tunes \
  --header "Content-Type: application/json" \
  --data '{
    "tune_data": {
      "name": "Dusky Night",
      "ABCnotation": "X: 1\nT: Dusky Night\nS: Thompson 1777\nN: From Apted Book of Country Dances\nN: abc version by Robert Bley-Vroman vroman@hawaii.edu 14 October 1996\nM: 6/8\nL: 1/8\nK:D\n|: A | d2d A2G  | F>EF D2A | B2A G2F | F3   E2E  |\n       A2 A B2B | c>Bc A2A | d2d e2e | f>ef d2F |\n      B>cd e>fg | A>Bc d2A | B2B A>GA | D3-D2  :|\n|: F/D/ | A2A  A2A | A3-A2  B/A/ | d2d d>ef | d3-d2 A |\nB>cd e>fg| A>Bc d2A | B2G A2A  | D3-D2 :|"
    }
  }'
```

```sh
scripts/sign-up.sh
```

Response:

```md
HTTP/1.1 201 Created
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "an@example.email"
  }
}
```

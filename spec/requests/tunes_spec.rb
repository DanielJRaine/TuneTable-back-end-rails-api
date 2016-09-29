require 'rails_helper'
# We will parse an ABC file on the backend.
# Don't worry about supplying all the parameters on the Front-end.
RSpec.describe 'Tune API' do
  def tune_params
    {
      name: 'Dusky Night',
      ABCnotation:
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
      # tonic_note: 'Bb',
      # base_key_quality: 'minor',
      # mode_name: 'Phrygian',
      # mode_scale_degree_from_base: '5',
      # time_signature: '6/8',
      # meter_name: 'jig',
    }
  end

  describe 'POST /'
end

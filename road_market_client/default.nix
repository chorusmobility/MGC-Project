{ stdenv
, mkRosPackage
, robonomics_comm 
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "road_market_client";
  version = "master";

  src = ./.;

  propagatedBuildInputs = [ robonomics_comm ];

  meta = with stdenv.lib; {
    description = "Road peer-to-peer market client package";
    homepage = https://github.com/airalab/mobi_grand_challenge;
    license = licenses.bsd3;
    maintainers = with maintainers; [ akru ];
  };
}

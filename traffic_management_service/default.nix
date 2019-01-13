{ stdenv
, mkRosPackage
, robonomics_comm 
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "traffic_management_service";
  version = "master";

  src = ./.;

  propagatedBuildInputs = [ robonomics_comm ];

  meta = with stdenv.lib; {
    description = "Unmanned traffic management service";
    homepage = https://github.com/airalab/mobi_grand_challenge;
    license = licenses.bsd3;
    maintainers = with maintainers; [ akru ];
  };
}

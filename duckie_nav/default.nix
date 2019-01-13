{ stdenv
, mkRosPackage
, robonomics_comm 
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "duckie_nav";
  version = "master";

  src = ./.;

  propagatedBuildInputs = [ robonomics_dev ];

  meta = with stdenv.lib; {
    description = "Duckbots navigation in duckietown";
    homepage = https://github.com/airalab/mobi_grand_challenge;
    license = licenses.bsd3;
    maintainers = with maintainers; [ akru ];
  };
}

{ lib
, buildPythonPackage
, fetchFromGitHub
, numpy
, scipy
, matplotlib
}:

buildPythonPackage rec {
  pname = "pyspectra";
  version = "unstable-2026-10-20";

  src = fetchFromGitHub {
    owner = "fujiisoup";
    repo = "pyspectra";
    rev = "master";
    sha256 = "1qi3jlw9xsgam0fvl94pw9mi0pndc7n3wyrhmsjwwyg2zcmsi9hc";
  };

  propagatedBuildInputs = [
    numpy
    scipy
    matplotlib
  ];

  doCheck = false;

  meta = with lib; {
    description = "Python tools for spectral analysis";
    homepage = "https://github.com/fujiisoup/pyspectra";
    license = licenses.unfree;
    maintainers = with maintainers; [ jtcook025 ];
  };
}


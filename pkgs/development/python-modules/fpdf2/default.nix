{ lib, buildPythonPackage, fetchPypi, pillow }:

buildPythonPackage rec {
  pname = "fpdf2";
  version = "2.3.2";

  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256-Ehhiz8d57OzyibpzrdIuAwzqUef5RW13E4+cC3TiNsw=";
  };

  propagatedBuildInputs = [ pillow ];

  meta = {
    homepage = "https://github.com/PyFPDF/fpdf2";
    description = "Simple PDF generation for Python";
    license = lib.licenses.lgpl3;
  };
}

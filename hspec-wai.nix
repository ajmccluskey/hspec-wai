{ mkDerivation, base, base-compat, bytestring, case-insensitive
, exceptions, hspec, hspec-core, hspec-expectations, http-types
, QuickCheck, stdenv, text, transformers, wai, wai-extra
}:
mkDerivation {
  pname = "hspec-wai";
  version = "0.9.0";
  src = ./.;
  libraryHaskellDepends = [
    base base-compat bytestring case-insensitive exceptions hspec-core
    hspec-expectations http-types QuickCheck text transformers wai
    wai-extra
  ];
  testHaskellDepends = [
    base base-compat bytestring case-insensitive hspec hspec-core
    hspec-expectations http-types QuickCheck text transformers wai
    wai-extra
  ];
  homepage = "https://github.com/hspec/hspec-wai#readme";
  description = "Experimental Hspec support for testing WAI applications";
  license = stdenv.lib.licenses.mit;
}

-- Query para tabla principal
CREATE TABLE reporte(
    IDreporte int primary key,
    IDcovid19 int,
    IDgdp int,
    IDhospitals int,
    IDlockdown int,
    IDmaskUse int,
    IDpovertyIncome int,
    IDunemployment int,
    IDvaccination int,
     CONSTRAINT IDcovid19
      FOREIGN KEY(IDcovid19)
	  REFERENCES "covid"("IDcovid19")
	  ON DELETE CASCADE,

    CONSTRAINT IDgdp
      FOREIGN KEY(IDgdp)
	  REFERENCES "gdp"("IDgdp")
	  ON DELETE CASCADE,

	CONSTRAINT IDhospitals
      FOREIGN KEY(IDhospitals)
	  REFERENCES "hospitals"("IDhospitals")
	  ON DELETE CASCADE,

    CONSTRAINT IDlockdown
      FOREIGN KEY(IDlockdown)
	  REFERENCES "lockcdown"("IDlockdown")
	  ON DELETE CASCADE,

	CONSTRAINT IDmaskUse
      FOREIGN KEY(IDmaskUse)
	  REFERENCES "maskUse"("IDmaskUse")
	  ON DELETE CASCADE,

	CONSTRAINT IDpovertyIncome
      FOREIGN KEY(IDpovertyIncome)
	  REFERENCES "povertyIncome"("IDpovertyIncome")
	  ON DELETE CASCADE,

	CONSTRAINT IDunemployment
      FOREIGN KEY(IDunemployment)
	  REFERENCES "unemployment"("IDunemployment")
	  ON DELETE CASCADE,

	CONSTRAINT IDvaccination
      FOREIGN KEY(IDvaccination)
	  REFERENCES "vaccination"("IDvaccination")
	  ON DELETE CASCADE
);
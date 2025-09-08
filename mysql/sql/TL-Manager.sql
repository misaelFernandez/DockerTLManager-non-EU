-- Parámetros iniciales de la aplicación
--
-- Opcionalmente, podemos cargar la siguiente información paramétrica.
--

-- Countrycodename
DELETE FROM `tsl-noneu`.TL_COUNTRIES WHERE CODE_TERRITORY='TT';
INSERT INTO `tsl-noneu`.TL_COUNTRIES (CODE_TERRITORY, COUNTRY_NAME) VALUES('AR', 'Argentina');
INSERT INTO `tsl-noneu`.TL_COUNTRIES (CODE_TERRITORY, COUNTRY_NAME) VALUES('BO', 'Bolivia');
INSERT INTO `tsl-noneu`.TL_COUNTRIES (CODE_TERRITORY, COUNTRY_NAME) VALUES('BR', 'Brasil');
INSERT INTO `tsl-noneu`.TL_COUNTRIES (CODE_TERRITORY, COUNTRY_NAME) VALUES('CL', 'Chile');
INSERT INTO `tsl-noneu`.TL_COUNTRIES (CODE_TERRITORY, COUNTRY_NAME) VALUES('CO', 'Colombia');
INSERT INTO `tsl-noneu`.TL_COUNTRIES (CODE_TERRITORY, COUNTRY_NAME) VALUES('EC', 'Ecuador');
INSERT INTO `tsl-noneu`.TL_COUNTRIES (CODE_TERRITORY, COUNTRY_NAME) VALUES('MX', 'México');
INSERT INTO `tsl-noneu`.TL_COUNTRIES (CODE_TERRITORY, COUNTRY_NAME) VALUES('PY', 'Paraguay');
INSERT INTO `tsl-noneu`.TL_COUNTRIES (CODE_TERRITORY, COUNTRY_NAME) VALUES('PE', 'Perú');
INSERT INTO `tsl-noneu`.TL_COUNTRIES (CODE_TERRITORY, COUNTRY_NAME) VALUES('UY', 'Uruguay');
INSERT INTO `tsl-noneu`.TL_COUNTRIES (CODE_TERRITORY, COUNTRY_NAME) VALUES('VE', 'Venezuela');
INSERT INTO `tsl-noneu`.TL_COUNTRIES (CODE_TERRITORY, COUNTRY_NAME) VALUES('CU', 'Cuba');
INSERT INTO `tsl-noneu`.TL_COUNTRIES (CODE_TERRITORY, COUNTRY_NAME) VALUES('PA', 'Panamá');
INSERT INTO `tsl-noneu`.TL_COUNTRIES (CODE_TERRITORY, COUNTRY_NAME) VALUES('AA', 'ALADI');
INSERT INTO `tsl-noneu`.TL_COUNTRIES (CODE_TERRITORY, COUNTRY_NAME) VALUES('MB', 'MERCOSUR');

-- Languages
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Español', 'es', 'LANGUAGES');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Portugues', 'pt', 'LANGUAGES');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Guarani', 'gn', 'LANGUAGES');

-- Service Status
DELETE FROM `tsl-noneu`.TL_PROPERTIES WHERE PROPERTIES_ID=12;
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Deprecated at National Level', 'http://uri.etsi.org/TrstSvc/TrustedList/Svcstatus/deprecatedatnationallevel', 'SERVICE_STATUS');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Recognised at National Level', 'http://uri.etsi.org/TrstSvc/TrustedList/Svcstatus/recognisedatnationallevel', 'SERVICE_STATUS');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('set by national law', 'http://uri.etsi.org/TrstSvc/TrustedList/Svcstatus/setbynationallaw', 'SERVICE_STATUS');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('deprecated by national law', 'http://uri.etsi.org/TrstSvc/TrustedList/Svcstatus/deprecatedbynationallaw', 'SERVICE_STATUS');

-- Service Status Prefix
DELETE FROM `tsl-noneu`.TL_PROPERTIES WHERE PROPERTIES_ID=5;
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Service Status Prefix', 'http://uri.etsi.org/TrstSvc/TrustedList/Svcstatus', 'SERVICE_STATUS_PREFIX');

-- Service Types Identifiers
DELETE FROM `tsl-noneu`.TL_PROPERTIES WHERE PROPERTIES_ID=11;
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('National Root CA for Qualified Certificates', 'http://uri.etsi.org/TrstSvc/Svctype/NationalRootCA-QC', 'SERVICE_TYPES_IDENTIFIERS');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Qualified certificate issuing trust service creating and signing qualified certificates', 'http://uri.etsi.org/TrstSvc/Svctype/CA/QC', 'SERVICE_TYPES_IDENTIFIERS');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('A certificate validity status information service issuing Online Certificate Status Protocol (OCSP) signed responses', 'http://uri.etsi.org/TrstSvc/Svctype/Certstatus/OCSP/QC', 'SERVICE_TYPES_IDENTIFIERS');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('A certificate validity status information services issuing and signing Certificate Revocation Lists (CRLs)', 'http://uri.etsi.org/TrstSvc/Svctype/Certstatus/CRL/QC', 'SERVICE_TYPES_IDENTIFIERS');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('A qualified electronic time stamp generation service creating and signing qualified electronic time stamps', 'http://uri.etsi.org/TrstSvc/Svctype/TSA/QTST', 'SERVICE_TYPES_IDENTIFIERS');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('A qualified preservation service for qualified electronic signatures and/or qualified electronic seals', 'http://uri.etsi.org/TrstSvc/Svctype/PSES/Q', 'SERVICE_TYPES_IDENTIFIERS');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('A qualified validation service for qualified electronic signatures and/or qualified electronic seals', 'http://uri.etsi.org/TrstSvc/Svctype/QESValidation/Q', 'SERVICE_TYPES_IDENTIFIERS');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('A qualified service for remote QSCD (qualified electronic signature / seal creation device) management which supports generation and management of signature creation data within QSCD(s) on behalf and under control of remote signers or seal creators.', 'http://uri.etsi.org/TrstSvc/Svctype/RemoteQSCDManagement/Q', 'SERVICE_TYPES_IDENTIFIERS');

-- Service Types Prefix
DELETE FROM `tsl-noneu`.TL_PROPERTIES WHERE PROPERTIES_ID=6;
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Service Type Prefix', 'http://uri.etsi.org/TrstSvc/Svctype', 'SERVICE_TYPES_PREFIX');

-- TL Communityrule
DELETE FROM `tsl-noneu`.TL_PROPERTIES WHERE PROPERTIES_ID=8;
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('common', 'http://uri.etsi.org/TrstSvc/eSigDir-1999-93-EC-TrustedList/schemerules/common', 'TL_COMMUNITYRULE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Argentina', 'http://uri.etsi.org/TrstSvc/TrustedList/schemerules/AR', 'TL_COMMUNITYRULE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Bolivia', 'http://uri.etsi.org/TrstSvc/TrustedList/schemerules/BO', 'TL_COMMUNITYRULE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Brasil', 'http://uri.etsi.org/TrstSvc/TrustedList/schemerules/BR', 'TL_COMMUNITYRULE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Chile', 'http://uri.etsi.org/TrstSvc/TrustedList/schemerules/CL', 'TL_COMMUNITYRULE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Colombia', 'http://uri.etsi.org/TrstSvc/TrustedList/schemerules/CO', 'TL_COMMUNITYRULE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Ecuador', 'http://uri.etsi.org/TrstSvc/TrustedList/schemerules/EC', 'TL_COMMUNITYRULE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('México', 'http://uri.etsi.org/TrstSvc/TrustedList/schemerules/MX', 'TL_COMMUNITYRULE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Paraguay', 'http://uri.etsi.org/TrstSvc/TrustedList/schemerules/PY', 'TL_COMMUNITYRULE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Perú', 'http://uri.etsi.org/TrstSvc/TrustedList/schemerules/PE', 'TL_COMMUNITYRULE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Uruguay', 'http://uri.etsi.org/TrstSvc/TrustedList/schemerules/UY', 'TL_COMMUNITYRULE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Venezuela', 'http://uri.etsi.org/TrstSvc/TrustedList/schemerules/VE', 'TL_COMMUNITYRULE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Cuba', 'http://uri.etsi.org/TrstSvc/TrustedList/schemerules/CU', 'TL_COMMUNITYRULE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Panamá', 'http://uri.etsi.org/TrstSvc/TrustedList/schemerules/PA', 'TL_COMMUNITYRULE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('ALADI', 'http://uri.etsi.org/TrstSvc/TrustedList/schemerules/AA', 'TL_COMMUNITYRULE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('MERCOSUR', 'http://uri.etsi.org/TrstSvc/TrustedList/schemerules/MB', 'TL_COMMUNITYRULE');

-- TL Status Determ Type
DELETE FROM `tsl-noneu`.TL_PROPERTIES WHERE PROPERTIES_ID=7;
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Argentina', 'http://uri.etsi.org/TrstSvc/TrustedList/StatusDetn/ARdetermination', 'TL_STATUS_DETERM_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Bolivia', 'http://uri.etsi.org/TrstSvc/TrustedList/StatusDetn/BOdetermination', 'TL_STATUS_DETERM_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Brasil', 'http://uri.etsi.org/TrstSvc/TrustedList/StatusDetn/BRdetermination', 'TL_STATUS_DETERM_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Chile', 'http://uri.etsi.org/TrstSvc/TrustedList/StatusDetn/CLdetermination', 'TL_STATUS_DETERM_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Colombia', 'http://uri.etsi.org/TrstSvc/TrustedList/StatusDetn/COdetermination', 'TL_STATUS_DETERM_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Ecuador', 'http://uri.etsi.org/TrstSvc/TrustedList/StatusDetn/ECdetermination', 'TL_STATUS_DETERM_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('México', 'http://uri.etsi.org/TrstSvc/TrustedList/StatusDetn/MXdetermination', 'TL_STATUS_DETERM_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Paraguay', 'http://uri.etsi.org/TrstSvc/TrustedList/StatusDetn/PYdetermination', 'TL_STATUS_DETERM_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Perú', 'http://uri.etsi.org/TrstSvc/TrustedList/StatusDetn/PEdetermination', 'TL_STATUS_DETERM_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Uruguay', 'http://uri.etsi.org/TrstSvc/TrustedList/StatusDetn/UYdetermination', 'TL_STATUS_DETERM_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Venezuela', 'http://uri.etsi.org/TrstSvc/TrustedList/StatusDetn/VEdetermination', 'TL_STATUS_DETERM_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Cuba', 'http://uri.etsi.org/TrstSvc/TrustedList/StatusDetn/CUdetermination', 'TL_STATUS_DETERM_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Panamá', 'http://uri.etsi.org/TrstSvc/TrustedList/StatusDetn/PAdetermination', 'TL_STATUS_DETERM_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('ALADI', 'http://uri.etsi.org/TrstSvc/TrustedList/StatusDetn/AAdetermination', 'TL_STATUS_DETERM_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('MERCOSUR', 'http://uri.etsi.org/TrstSvc/TrustedList/StatusDetn/MBdetermination', 'TL_STATUS_DETERM_TYPE');

-- TL Type
DELETE FROM `tsl-noneu`.TL_PROPERTIES WHERE PROPERTIES_ID=10;
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('generic', 'http://uri.etsi.org/TrstSvc/eSigDir-1999-93-EC-TrustedList/TSLType/generic', 'TL_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Argentina', 'http://uri.etsi.org/TrstSvc/TrustedList/TSLType/ARlist', 'TL_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Bolivia', 'http://uri.etsi.org/TrstSvc/TrustedList/TSLType/BOlist', 'TL_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Brasil', 'http://uri.etsi.org/TrstSvc/TrustedList/TSLType/BRlist', 'TL_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Chile', 'http://uri.etsi.org/TrstSvc/TrustedList/TSLType/CLlist', 'TL_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Colombia', 'http://uri.etsi.org/TrstSvc/TrustedList/TSLType/COlist', 'TL_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Ecuador', 'http://uri.etsi.org/TrstSvc/TrustedList/TSLType/EClist', 'TL_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('México', 'http://uri.etsi.org/TrstSvc/TrustedList/TSLType/MXlist', 'TL_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Paraguay', 'http://uri.etsi.org/TrstSvc/TrustedList/TSLType/PYlist', 'TL_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Perú', 'http://uri.etsi.org/TrstSvc/TrustedList/TSLType/PElist', 'TL_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Uruguay', 'http://uri.etsi.org/TrstSvc/TrustedList/TSLType/UYlist', 'TL_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Venezuela', 'http://uri.etsi.org/TrstSvc/TrustedList/TSLType/VElist', 'TL_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Cuba', 'http://uri.etsi.org/TrstSvc/TrustedList/TSLType/CUlist', 'TL_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('Panamá', 'http://uri.etsi.org/TrstSvc/TrustedList/TSLType/PAlist', 'TL_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('ALADI', 'http://uri.etsi.org/TrstSvc/TrustedList/TSLType/AAlist', 'TL_TYPE');
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('MERCOSUR', 'http://uri.etsi.org/TrstSvc/TrustedList/TSLType/MBlist', 'TL_TYPE');

-- TSL Tag Value
DELETE FROM `tsl-noneu`.TL_PROPERTIES WHERE PROPERTIES_ID=9;
INSERT INTO `tsl-noneu`.TL_PROPERTIES (DESCRIPTION, LABEL, PROPERTIES_LIST_CODE) VALUES('ETSI TSL Tag', 'http://uri.etsi.org/19612/TSLTag', 'TSL_TAG_VALUE');

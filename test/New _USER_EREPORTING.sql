SELECT 
TO_NUMBER(EXTRACT(XMLTYPE(XML), 
'/dec/DataSet/Header/IDNO/text()')) 

FROM F_XML_FORMS

 WHERE FORMID IN (20061883);
 
 
 
      SELECT
        CUIIO,
        COUNT(CUIIO) INTO vCUIIO, vCNT_CUIIO
      FROM
        IDNO_CUIIO
      WHERE
        IDNO IN (SELECT TO_NUMBER(EXTRACT(XMLTYPE(XML), '/dec/DataSet/Header/IDNO/text()')) FROM F_XML_FORMS WHERE FORMID IN (20061883))
      GROUP BY
        CUIIO;
        
        
        SELECT TO_NUMBER(EXTRACT(XMLTYPE(XML), '/dec/DataSet/Header/IDNO/text()'))||'_'||
                                    TO_NUMBER(EXTRACT(XMLTYPE(XML), '/dec/DataSet/Header/CUIIO/text()')) FROM F_XML_FORMS WHERE FORMID IN (20061883)
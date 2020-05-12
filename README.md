# cisw440-final-project

CISW 440 XML Final Project
CRC Spring 2020
Professor Sung


# Requirements:
  ------------

1. You need to create an XML solution for an industry of your choice. The lab assignments were based on the health care industry using health record data elements. You are now in control of your own destiny. _**You must have at least 6 data elements**_ such as ID, name, date of birth, gender, service date, procedure code, and primary diagnosis. You cannot use the data or data elements from the lab assignments. Use at least one attribute in your XML. My recommendation is to use the attribute as an identifier to your record. For example the attribute is either a patientID, inventoryID, recordID, memberID, or something similar. Reach out to me if you have any questions. 

1. You must have a parent data element then a child data element that may contain multiple sequences. See the example below or your lab assignments. _**You must have at least 20 records**_. Your style sheet (XSLT) must output to HTML. The first portion of your output must be in paragraph form where you describe why you chose the particular industry, how can XML help with displaying information, and you will need to use XPath to obtain data from your XML file without hard coding the values in your HTML. For example, you need to use record count to tell us about the amount of data. Use the XPath search function to find one record of interest to you for this first part of the paragraph. Tell me why you chose this record to highlight.

1. The second portion to the assignment is to create an XML Schema or DTD Elements for your project. Ensure your XML is well-formed and follows your DTD or XML Schema. Include at least two entities that are used throughout your HTML and create the name entity as a shortcut if you chose DTD instead of XML Schema. See lab 4 to help with the entity portion of the assignment.

1. The third portion to the assignment is to display your XML data as a table with border and unsorted. Then display your XML data as a table with border and sorted on your column of choice but you must include a paragraph below the table with your explanation of the XPath function and why you choose to sort the particular column.

    ### Example HTML Table Output
        -------------------------
    ![image](/images/ex-output.png)


1. Last section to your output is to include a paragraph on what you learned and how you will use your knowledge.

## Note:  Your rendered HTML should contain the following sections:
   ---------------------------------------------------------------
* The first portion of your output must be in paragraph form where you describe why you chose the particular industry, how can XML help with displaying information, and you will need to use XPath to obtain data from your XML file without hard coding the values in your HTML.

* HTML table of the XML data with border and sorted on the column of your choice. 

* Make sure you have a sentence below your table calling out which field was sorted.

* Output a paragraph on one of the records of your choice using XPATH to display the data within the paragraph. Why did you chose this record? What XPATH function did you use?


### Last paragraph on the out of the HTML should be on:
    --------------------------------------------------
* What you learned? 
* What will you do with this knowledge?  
* Do you see XML differently now after completing this course?

### Your grade:
    ----------
* Creativity: 20%
* Difficulty: 5%
* HTML Output: 20%
* XML StyleSheet, DTD ELEMENT & DTD ENTITY, XML Schema Files: 40%
* Screenshot of the validation of your XML against DTD Elements or XML Schema XSD: 5%
* PDF output file: 10%

(rubric)
![image](/images/rubric.png)

## Deliverables:
   ------------
1. XML file, XML StyleSheet, DTD, XML Schema, and PDF version of your HTML output.
2. Screenshot of the validation of your XML against the DTD Elements or XML Schema XSD.
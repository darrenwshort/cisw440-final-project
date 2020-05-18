<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:output method="html"/>

  <xsl:template match="/">

    <html>
      <head>
        <title>Concert Events</title>
        <link rel="stylesheet" type="text/css" href="final-project-concert-series.css"/>
      </head>

      <div id="heading">
        <p id="head">Summer 2020 - Concert in The Park Series!</p>
      </div>

      <body>
        <div id="wrapper">
          <div id="top">
            <p id="note1">
              <xsl:value-of select="ConcertSeries/Note1"/>
            </p>
            <!-- single record selection requirement -->
            <p id="chosen-record">
              * The following record example was chosen, because it represents my favorite Rock-n-Roll band,
                of all time - <span class="italicize font-26px">Iron Maiden</span>.
            </p>
              <div id="fav-band">

                <table>
                  <!-- display table header row -->
                  <tr bgcolor="gray">
                    <th>Event Name</th>
                    <th>Event Date</th>
                    <th>Venue</th>
                    <th>Ticket Price</th>
                    <th>Band Name</th>
                    <th>Band Origin</th>
                    <th>Genre</th>
                    <th>Years Active</th>
                  </tr>
                  <tr class="odd">
                    <td>
                      <xsl:value-of select="ConcertSeries/Event[@id='1']/EventName"/>
                    </td>
                    <td>
                      <xsl:value-of select="ConcertSeries/Event[@id='1']/EventDate/Month"/>
                      &#160;
                      <xsl:value-of select="ConcertSeries/Event[@id='1']/EventDate/Day"/>
                      ,&#160;
                      <xsl:value-of select="ConcertSeries/Event[@id='1']/EventDate/Year"/> <br />
                      &#160;(Start Time:
                      <xsl:value-of select="ConcertSeries/Event[@id='1']/EventDate/StartTime"/>
                      / End Time:
                      <xsl:value-of select="ConcertSeries/Event[@id='1']/EventDate/EndTime"/>)
                    </td>
                    <td>
                      <xsl:value-of select="ConcertSeries/Event[@id='1']/Venue"/>
                    </td>
                    <td>
                      <xsl:value-of select="ConcertSeries/Event[@id='1']/TicketPrice"/>
                    </td>
                    <td>
                      <xsl:value-of select="ConcertSeries/Event[@id='1']/BandName"/>
                    </td>
                    <td>
                      <xsl:value-of select="ConcertSeries/Event[@id='1']/BandOrigin"/>
                    </td>
                    <td>
                      <xsl:value-of select="ConcertSeries/Event[@id='1']/BandGenre"/>
                    </td>
                    <td>
                      <xsl:value-of select="ConcertSeries/Event[@id='1']/BandYearsActive"/>
                    </td>
                  </tr>
                </table>
              </div>
          </div> <!-- div 'top' -->

          <div id="main">
            <div id="unsorted-table">
              <table>
                
                <th class="th-head-lrg" colspan="8">Events Listing (Unsorted)</th>

                <!-- display table header row -->
                <tr bgcolor="gray">
                  <th>Event Name</th>
                  <th>Event Date</th>
                  <th>Venue</th>
                  <th>Ticket Price</th>
                  <th>Band Name</th>
                  <th>Band Origin</th>
                  <th>Genre</th>
                  <th>Years Active</th>
                </tr>

                <xsl:for-each select="ConcertSeries/Event">

                  <!-- set bgcolor of row - alternating for easier view of data -->
                  <!-- class names .... 'even' or 'odd' for alternating rows -->
                  <!-- #D3D3D3 = light gray-ish ; #A8DFF0 = light blue-ish -->
                  <xsl:variable name="className">
                    <xsl:choose>
                      <xsl:when test="position() mod 2 = 0">even</xsl:when>
                      <xsl:otherwise>odd</xsl:otherwise>
                    </xsl:choose>
                  </xsl:variable>

                  <tr class="{$className}">
                    <td>
                      <xsl:value-of select="./EventName"/>
                    </td>
                    <td>
                      <xsl:value-of select="./EventDate/Month"/>
                      &#160;
                      <xsl:value-of select="./EventDate/Day"/>
                      ,&#160;
                      <xsl:value-of select="./EventDate/Year"/> <br />
                      &#160;(Start Time:
                      <xsl:value-of select="./EventDate/StartTime"/>
                      / End Time:
                      <xsl:value-of select="./EventDate/EndTime"/>)
                    </td>
                    <td>
                      <xsl:value-of select="Venue"/>
                    </td>
                    <td>
                      <xsl:value-of select="TicketPrice"/>
                    </td>
                    <td>
                      <xsl:value-of select="BandName"/>
                    </td>
                    <td>
                      <xsl:value-of select="BandOrigin"/>
                    </td>
                    
                    <td>
                      <xsl:value-of select="BandGenre"/>
                    </td>
                    <td>
                      <xsl:value-of select="BandYearsActive"/>
                    </td>
                  </tr>

                </xsl:for-each>

              </table>
            </div>
            
            <div id="sorted-table">
              <table>

                <th class="th-head-lrg" colspan="8">Events Listing (Sorted by Band Years Active)</th>

                <!-- display table header row -->
                <tr bgcolor="gray">
                  <th>Event Name</th>
                  <th>Event Date</th>
                  <th>Venue</th>
                  <th>Ticket Price</th>
                  <th>Band Name</th>
                  <th>Band Origin</th>
                  <th>Genre</th>
                  <th>Years Active</th>
                </tr>

                
                <!-- SORTED TABLE, BY BandYearsActive field -->
                <xsl:for-each select="ConcertSeries/Event">
                <xsl:sort select="BandYearsActive" order="descending" data-type="number"/>
                  <!-- set bgcolor of row - alternating for easier view of data -->
                  <!-- class names .... 'even' or 'odd' for alternating rows -->
                  <!-- #D3D3D3 = light gray-ish ; #A8DFF0 = light blue-ish -->
                  <xsl:variable name="className">
                    <xsl:choose>
                      <xsl:when test="position() mod 2 = 0">even</xsl:when>
                      <xsl:otherwise>odd</xsl:otherwise>
                    </xsl:choose>
                  </xsl:variable>

                  <tr class="{$className}">
                    <td>
                      <xsl:value-of select="./EventName"/>
                    </td>
                    <td>
                      <xsl:value-of select="./EventDate/Month"/>
                      &#160;
                      <xsl:value-of select="./EventDate/Day"/>
                      ,&#160;
                      <xsl:value-of select="./EventDate/Year"/> <br />
                      &#160;(Start Time:
                      <xsl:value-of select="./EventDate/StartTime"/>
                      / End Time:
                      <xsl:value-of select="./EventDate/EndTime"/>)
                    </td>
                    <td>
                      <xsl:value-of select="Venue"/>
                    </td>
                    <td>
                      <xsl:value-of select="TicketPrice"/>
                    </td>
                    <td>
                      <xsl:value-of select="BandName"/>
                    </td>
                    <td>
                      <xsl:value-of select="BandOrigin"/>
                    </td>
                    
                    <td>
                      <xsl:value-of select="BandGenre"/>
                    </td>
                    <td style="background-color: yellow;"> <!-- yellow for highlight effect -->
                      <xsl:value-of select="BandYearsActive"/>
                    </td>
                  </tr>

                </xsl:for-each>

              </table>
            </div> <!-- sorted table -->
            <div id="reason">
              <p class="note-section">
                * In the table directly above, I chose the field, BandYearsActive, in descending sort order (data-type: number), because my goal was to list the bands with 
                  the most 'senority' at the top.   The bands who have been active the longest are towards the top,
                  while the newcomers to music, reside towards the bottom.
              </p>
            </div>
          </div> <!-- main -->

          <div id="summary-heading">
            <p>What did I learn from the course, CISW 440?  And, what will I do next with this new found knowledge?</p>
          </div>

          <div id="summary">
              <ul id="list1">
                <li><span class="highlight-it">XML</span> is a way of storing data in a file, similar to HTML. Although they have this similarity, XML is used
                    for storing and transporting data, whereas, HTML is used for displaying data.
                </li>
                <li><span class="highlight-it">XML</span> follows strict adherence and can be well-formed, by utilizing DTDs and XML Schemas.</li>
                <li><span class="highlight-it">XML</span> can be parsed using XSLT(style-sheets), to be rendered or delivered in another format(eg: HTML, JSON, or another XML file)</li>
                <li><span class="highlight-it">XML</span> is human-readable, as well as, system-readable. </li>
                <li><span class="highlight-it">XML</span> tags are custom-created, so defining your data by describing it makes it more understandable.</li>
                <li style="list-style-type: none" />
              </ul>
              <p id="learned">I've learned quite a bit in this XML course, in regards to how I can use the markup language:</p>
              <ul id="list2">
                <li>As I've been primarily learning web development this semester at CRC, <span class="highlight-it">XML</span> is another option I will
                be delving deeper into, similar to my use of MySQL and JSON.</li>
                <li>I would like to also look into tranporting <span class="highlight-it">XML</span> between multiple systems and attempt to parse at the different endpoints.  At each endpoint, possibly work on getting 
                    data between <span class="highlight-it">XML</span> and a database.   I think this exercise would really be helpful for future projects.</li>
                <li>I've learned you really need to have a keen eye on working with <span class="highlight-it">XML</span> and its well-formedness.  One missing or extra character can really have you scratching 
                    your head wondering what could be wrong.  As they say, "practice makes perfect", well, at least as close to perfect as we can. :-)</li>
              </ul>
              <p class="resources">*** This rendered <span class="highlight-it">XML</span> can also be publicly viewed on my GitHub 
                <a target="_blank" href="https://darrenwshort.github.io/cisw440-final-project/final-project-concert-series.xml">Here</a>
              </p>
              <p class="resources">*** All the source code, for this project, can also be found on my GitHub <a target="_blank" href="https://github.com/darrenwshort/cisw440-final-project">Here</a></p>

          </div> <!-- summary -->

        </div> <!-- wrapper -->
      </body>
    </html>

  </xsl:template>

</xsl:stylesheet>

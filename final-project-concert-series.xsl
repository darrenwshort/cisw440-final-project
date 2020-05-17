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
        <p id="head">Summer 2020 Concert in The Park Series!</p>
      </div>

      <body>
        <div id="wrapper">
          <div id="top">
            <p id="note1"><xsl:value-of select="ConcertSeries/Note1"/></p>
            <!-- single record selection requirement -->
            <p id="chosen-record">
              * The following record example was chosen, because it represents my favorite Rock-n-Roll band,
                of all time - Iron Maiden.
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
          </div> <!-- main -->
        </div> <!-- wrapper -->
      </body>
    </html>

  </xsl:template>

</xsl:stylesheet>

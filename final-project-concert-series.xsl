<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html"/>
  <xsl:template match="/">

    <html>
      <head>
        <title>Concert Events</title>
        <link rel="stylesheet" type="text/css" href="final-project-concert-series.css"/>
      </head>
      <body>
        <table>
          <!-- display table header row -->
          <tr bgcolor="gray">
            <th>Event Name</th>
            <th>Event Date</th>
            <th>Venue</th>
            <th>Ticket Price</th>
            <th>Band Name</th>
            <th>Band Origin</th>
            <th># Of Band Members</th>
            <th>Genre</th>
            <th>Years Active</th>
          </tr>

          <xsl:for-each select="ConcertSeries/Event">

            <!-- set bgcolor of row - alternating for easier view of data -->
            <!-- #D3D3D3 = light gray-ish ; #A8DFF0 = light blue-ish -->
            <xsl:variable name="bgColor">
              <xsl:choose>
                <xsl:when test="position() mod 2 = 0">#D3D3D3</xsl:when>
                <xsl:otherwise>#A8DFF0</xsl:otherwise>
              </xsl:choose>
            </xsl:variable>

            <tr bgcolor="{$bgColor}">
              <td>
                <xsl:value-of select="EventName"/>
              </td>
              <td>
                <xsl:value-of select="EventDate"/>
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
                <xsl:value-of select="NoOfBandMembers" />
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
      </body>
    </html>

  </xsl:template>

</xsl:stylesheet>

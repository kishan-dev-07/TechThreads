<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>TechThreads</title>
            </head>
            <body>
                <h1>TechThreads</h1>
                <table border="1">
                    <tr>
                        <th>UserID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Question Title</th>
                        <th>Question Body</th>
                        <th>Answer Body</th>
                        <th>Vote Type</th>
                        <th>Activity Type</th>
                    </tr>
                    <xsl:for-each select="QASystem/User">
                        <tr>
                            <td><xsl:value-of select="UserID"/></td>
                            <td><xsl:value-of select="Name"/></td>
                            <td><xsl:value-of select="Email"/></td>
                            <td><xsl:value-of select="../Question/QuestionTitle"/></td>
                            <td><xsl:value-of select="../Question/QuestionBody"/></td>
                            <td><xsl:value-of select="../Answer/AnswerBody"/></td>
                            <td><xsl:value-of select="../Vote/VoteType"/></td>
                            <td><xsl:value-of select="../ActivityLog/ActivityType"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

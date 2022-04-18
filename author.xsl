<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/PubmedArticleSet">
        <data>
            <xsl:for-each select="PubmedArticle">
                <xsl:for-each select="MedlineCitation/Article/AuthorList/Author">
                    <author>
                        <LastName>
                            <xsl:value-of select="LastName" />
                        </LastName>
                        <ForeName>
                            <xsl:choose>
                                <xsl:when test="ForeName">
                                    <xsl:value-of select="ForeName" />
                                </xsl:when>
                            </xsl:choose>
                        </ForeName>
                        <Initial>
                            <xsl:choose>
                                <xsl:when test="Initials">
                                    <xsl:value-of select="Initials" />
                                </xsl:when>
                            </xsl:choose>
                        </Initial>
                        <Affiliation>
                            <xsl:choose>
                                <xsl:when test="Affiliation">
                                    <xsl:value-of select="Affiliation" />
                                </xsl:when>
                            </xsl:choose>
                        </Affiliation>
                    </author>
                </xsl:for-each>
            </xsl:for-each>
        </data>
    </xsl:template>
</xsl:stylesheet>
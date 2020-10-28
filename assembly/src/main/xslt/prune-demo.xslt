<?xml version="1.0"?>
<xsl:stylesheet
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:maven="http://maven.apache.org/POM/4.0.0"
        version="2.0">

    <xsl:output omit-xml-declaration="no" indent="yes"/>
    <xsl:strip-space elements="*"/>

    <!-- Identity Template -->
    <!-- Copy everything -->
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>

    <!-- Remove the assembly module -->
    <xsl:template
            match="maven:project[maven:artifactId[text() = 'maven-daemon-parent']]/*/maven:module[not(text() = ('example'))]"/>

</xsl:stylesheet>

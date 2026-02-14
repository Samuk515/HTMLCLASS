<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
<h2>All Employees (Sorted by Salary Descending)</h2>

<table border="1">
<tr bgcolor="lightblue">
<th>Id</th>
<th>Name</th>
<th>Gender</th>
<th>Salary</th>
<th>Qualification</th>
<th>Address</th>
</tr>

<xsl:for-each select="company/employee">
<xsl:sort select="Salary" order="descending" data-type="number"/>

<tr>
<td><xsl:value-of select="id"/></td>
<td><xsl:value-of select="Name"/></td>
<td><xsl:value-of select="Gender"/></td>
<td><xsl:value-of select="Salary"/></td>
<td><xsl:value-of select="Qualification"/></td>
<td><xsl:value-of select="Address"/></td>
</tr>

</xsl:for-each>

</table>

<br/><br/>

<h2>Male Employees Only </h2>
<xsl:for-each select="company/Employee[Gender='Male']">
<p><xsl:value-of select="Name"/></p>
</xsl:for-each>

<br/>

<h2>Employees from Kathmandu </h2>
<xsl:for-each select="company/Employee[Address='lalitpur']">
<p><xsl:value-of select="name"/></p>
</xsl:for-each>

<br/>

<h2>Color Based on Gender </h2>

<xsl:for-each select="company/Employee">
<xsl:choose>

<xsl:when test="Gender='Male'">
<p style="background-color:red">
<xsl:value-of select="id"/> -
<xsl:value-of select="Name"/> -
<xsl:value-of select="Gender"/>
</p>
</xsl:when>

<xsl:otherwise>
<p style="background-color:green">
<xsl:value-of select="id"/> -
<xsl:value-of select="Name"/> -
<xsl:value-of select="Gender"/>
</p>
</xsl:otherwise>

</xsl:choose>
</xsl:for-each>

<br/>

<h2>Welcome Message (No Table) </h2>

<xsl:for-each select="company/Employee">

<xsl:choose>

<xsl:when test="Gender='Male'">
<p>
Welcome: <b><xsl:value-of select="Name"/></b><br/>
Your current salary: <xsl:value-of select="Salary"/><br/>
You have a degree of:
<span style="color:red">
<xsl:value-of select="Qualification"/>
</span>
</p>
</xsl:when>

<xsl:otherwise>
<p>
Welcome: <b><xsl:value-of select="Name"/></b><br/>
Your current salary: <xsl:value-of select="Salary"/><br/>
You have a degree of:
<span style="color:green">
<xsl:value-of select="Qualification"/>
</span>
</p>
</xsl:otherwise>

</xsl:choose>

</xsl:for-each>

</body>
</html>

</xsl:template>
</xsl:stylesheet>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<c:import var="xml" url="students.xml" />
<c:import var="xslt" url="transform.xsl" />

<x:transform xml="${xml}" xslt="${xslt}" />

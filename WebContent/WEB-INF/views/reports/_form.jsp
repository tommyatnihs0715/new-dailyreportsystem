<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" /><br />
        </c:forEach>

    </div>
</c:if>
<label for="report_date">日付</label><br />
<input type="date" name="report_date" value="<fmt:formatDate value='${report.report_date}' pattern='yyyy-MM-dd' />" />
<br /><br />

<label for="name">氏名</label><br />
<c:out value="${sessionScope.login_employee.name}" />
<br /><br />

<label for="title">タイトル</label><br />
<input type="text" name="title" value="${report.title}" />
<br /><br />

<label for="performance">実績</label><br />
<textarea name="performance" rows="10" cols="50">${report.performance}</textarea>
<br /><br />

<label for="impression">学び/感想</label><br />
<textarea name="impression" rows="10" cols="50">${report.impression}</textarea>
<br /><br />

<label for="urgency">緊急度</label><br />
<select name="urgency">
    <option value="0"<c:if test="${employee.admin_flag == 0}"> selected</c:if>>通常</option>
    <option value="1"<c:if test="${employee.admin_flag == 1}"> selected</c:if>>緊急！</option>
</select>
<br /><br />

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">投稿</button>
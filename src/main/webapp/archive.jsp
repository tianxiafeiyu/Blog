<%--
  Created by IntelliJ IDEA.
  User: 77239
  Date: 2017/2/19/0019
  Time: 11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
    var options = [
        {selector: '#archive', offset: 0, callback: function(el) {
            Materialize.showStaggeredList($(el));
        } },
    ];
    Materialize.scrollFire(options);
</script>
<div class="row">
    <div class="col s10">
        <h1>归档</h1>
        <div class="card-panel hoverable">
            <ul id="archive">
                <c:forEach var="article" items="${articles}">
                    <li style="opacity: 0">
                        <table>
                            <td>『${article.pubDate }』</td>
                            <td><a href="article?articleId=${article.id}">${article.title}</a></td>
                        </table>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>
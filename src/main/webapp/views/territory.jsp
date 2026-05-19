<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page import="domain.Territory, domain.Region"%>
<%
    Region r1 = new Region(10L, "Ростовская область");
    Region r2 = new Region(20L, "Краснодарский край");
    
    Territory t1 = new Territory(101L, 10L, "Ростов-на-Дону");
    Territory t2 = new Territory(102L, 10L, "Таганрог");
    Territory t3 = new Territory(103L, 20L, "Краснодар");
    Territory[] territories = new Territory[] {t1, t2, t3};
    Region[] regions = new Region[] {r1, r2};
    
    pageContext.setAttribute("territories", territories);
    pageContext.setAttribute("regions", regions);
%>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Города (Территории)</title>
</head>
<body>
<div class="container-fluid d-flex flex-column min-vh-100">
    <jsp:include page="/views/header.jsp" />
    
    <div class="container my-4">
        <div class="row justify-content-start">
            <div class="col-8 border bg-light px-4 py-3">
                <h3>Список городов</h3>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Код</th>
                            <th scope="col">Код региона</th>
                            <th scope="col">Название города</th>
                            <th scope="col">Редактировать</th>
                            <th scope="col">Удалить</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="term" items="${territories}">
                            <tr>
                                <td>${term.getId()}</td>
                                <td>${term.getRegionId()}</td>
                                <td>${term.getDiscription()}</td>
                                <td width="20">
                                   <a href="#" class="btn btn-outline-primary">
    <img alt="Редактировать" src="images/redakt.png" width="20" height="20">
</a>
                                </td>
                                <td width="20">
                                    <a href="#" class="btn btn-outline-danger"><img alt="Удалить" src="images/korzina.png" width="20" height="20"></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            
            <div class="col-4 border px-4 py-3">
                <form method="POST" action="">
                    <h3>Новый город</h3>
                    <div class="mb-3">
                        <label for="inputCity" class="form-label">Название города</label>
                        <input type="text" name="inputCity" class="form-control" id="inputCity" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Привязка к области</label>
                        <select name="regionSelect" class="form-control">
                            <option>Выберите область</option>
                            <c:forEach var="reg" items="${regions}">
                                <option value="${reg.getId()}">${reg.getRegionDiscription()}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">Добавить</button>
                </form>
            </div>
        </div>
    </div>

    <jsp:include page="/views/footer.jsp" />
</div>
<script src="js/jquery-3.6.4.js"></script>
<script defer src="js/bootstrap.bundle.min.js"></script>
</body>
</html>
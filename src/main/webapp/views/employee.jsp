<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page import="domain.Employee, domain.Territory, domain.Region"%>
<%
    Region r1 = new Region(10L, "Ростовская область");
    Territory t1 = new Territory(101L, 10L, "Ростов-на-Дону");

    Employee e1 = new Employee(1L, "Иванов", "Иван", "Иванович", "Региональный директор", "1985-04-12", "ул. Ленина 5", "+7-999-123-45-67", "ivanov@firm.ru", 101L, 10L);
    e1.setRegion(r1);
    e1.setTerritory(t1);

    Employee[] employees = new Employee[] { e1 };
    Territory[] territories = new Territory[] { t1 };
    Region[] regions = new Region[] { r1 };

    pageContext.setAttribute("employees", employees);
    pageContext.setAttribute("territories", territories);
    pageContext.setAttribute("regions", regions);
%>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Региональные представители</title>
</head>
<body>
<div class="container-fluid d-flex flex-column min-vh-100">
    <jsp:include page="/views/header.jsp" />
    
    <div class="container-fluid my-4">
        <div class="row justify-content-start">
            <div class="col-8 border bg-light px-4 py-3">
                <h3>Список сотрудников</h3>
                <table class="table table-sm" style="font-size: 14px;">
                    <thead>
                        <tr>
                            <th>Код</th>
                            <th>Фамилия</th>
                            <th>Имя</th>
                            <th>Должность</th>
                            <th>Город</th>
                            <th>Область</th>
                            <th>Телефон</th>
                            <th>Эл. почта</th>
                            <th>Ред.</th>
                            <th>Удал.</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="emp" items="${employees}">
                            <tr>
                                <td>${emp.getId()}</td>
                                <td>${emp.getLastName()}</td>
                                <td>${emp.getFirstName()}</td>
                                <td>${emp.getTitle()}</td>
                                <td>${emp.getTerritory().getDiscription()}</td>
                                <td>${emp.getRegion().getRegionDiscription()}</td>
                                <td>${emp.getPhone()}</td>
                                <td>${emp.getEmail()}</td>
                                <td><a href="#"><img alt="Ред." src="images/redakt.png" width="20" height="20"></a></td>
                                <td><a href="#"><img alt="Удал." src="images/korzina.png" width="20" height="20"></a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            
            <div class="col-4 border px-4 py-3">
                <form method="POST" action="">
                    <h3>Новый представитель</h3>
                    <div class="mb-2 row">
                        <label class="col-sm-4 col-form-label-sm">Фамилия</label>
                        <div class="col-sm-8"><input type="text" class="form-control form-control-sm" name="lastName" /></div>
                    </div>
                    <div class="mb-2 row">
                        <label class="col-sm-4 col-form-label-sm">Имя</label>
                        <div class="col-sm-8"><input type="text" class="form-control form-control-sm" name="firstName" /></div>
                    </div>
                    <div class="mb-2 row">
                        <label class="col-sm-4 col-form-label-sm">Должность</label>
                        <div class="col-sm-8"><input type="text" class="form-control form-control-sm" name="title" /></div>
                    </div>
                    <div class="mb-2 row">
                        <label class="col-sm-4 col-form-label-sm">Город</label>
                        <div class="col-sm-8">
                            <select name="territory" class="form-control form-control-sm">
                                <option>Выберите город</option>
                                <c:forEach var="t" items="${territories}">
                                    <option value="${t.getId()}">${t.getDiscription()}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="mb-2 row">
                        <label class="col-sm-4 col-form-label-sm">Область</label>
                        <div class="col-sm-8">
                            <select name="region" class="form-control form-control-sm">
                                <option>Выберите область</option>
                                <c:forEach var="r" items="${regions}">
                                    <option value="${r.getId()}">${r.getRegionDiscription()}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="mb-2 row">
                        <label class="col-sm-4 col-form-label-sm">Телефон</label>
                        <div class="col-sm-8"><input type="text" class="form-control form-control-sm" name="phone" /></div>
                    </div>
                    <div class="mb-2 row">
                        <label class="col-sm-4 col-form-label-sm">Эл. почта</label>
                        <div class="col-sm-8"><input type="text" class="form-control form-control-sm" name="email" /></div>
                    </div>
                    <button type="submit" class="btn btn-sm btn-primary mt-2">Добавить</button>
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
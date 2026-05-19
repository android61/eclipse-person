package domain;

/**
 * Класс данных о сотрудниках (Вариант 14)
 */
public class Employee {

    // Первичный ключ
    private Long id;

    // Личные данные
    private String lastName;
    private String firstName;
    private String secondName;
    private String title; // Должность внутри фирмы
    private String birthDay;
    private String address;
    private String phone;
    private String email;

    // Внешние ключи (для связей в БД)
    private Long idTerritory;
    private Long idRegion;

    // Навигационные поля (на основе сущностей Варианта 14)
    private Territory territory;
    private Region region;

    // Конструктор без параметров
    public Employee() {
    }

    // Конструктор со всеми параметрами (без навигационных объектов)
    public Employee(Long id, String lastName, String firstName, String secondName, 
                    String title, String birthDay, String address, String phone, 
                    String email, Long idTerritory, Long idRegion) {
        this.id = id;
        this.lastName = lastName;
        this.firstName = firstName;
        this.secondName = secondName;
        this.title = title;
        this.birthDay = birthDay;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.idTerritory = idTerritory;
        this.idRegion = idRegion;
    }

    // Геттеры и сеттеры
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getSecondName() {
        return secondName;
    }

    public void setSecondName(String secondName) {
        this.secondName = secondName;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Long getIdTerritory() {
        return idTerritory;
    }

    public void setIdTerritory(Long idTerritory) {
        this.idTerritory = idTerritory;
    }

    public Long getIdRegion() {
        return idRegion;
    }

    public void setIdRegion(Long idRegion) {
        this.idRegion = idRegion;
    }

    public Territory getTerritory() {
        return territory;
    }

    public void setTerritory(Territory territory) {
        this.territory = territory;
    }

    public Region getRegion() {
        return region;
    }

    public void setRegion(Region region) {
        this.region = region;
    }

    // Переопределение метода toString() для вывода полной информации
    @Override
    public String toString() {
        return "Employee{" +
                "id=" + id +
                ", ФИО='" + lastName + " " + firstName + " " + secondName + '\'' +
                ", должность='" + title + '\'' +
                ", телефон='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", город=" + (territory != null ? territory.getDiscription() : idTerritory) +
                ", область=" + (region != null ? region.getRegionDiscription() : idRegion) +
                '}';
    }
}
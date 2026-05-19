package domain;

/**
 * Класс данных о городах / территориях (Вариант 14)
 */
public class Territory {

    // Идентификатор города
    private Long id;

    // Идентификатор области (внешний ключ)
    private Long regionId;

    // Название города
    private String discription;

    // Конструктор без параметров
    public Territory() {
    }

    // Конструктор без id (для создания новых записей)
    public Territory(Long regionId, String discription) {
        this.regionId = regionId;
        this.discription = discription;
    }

    // Конструктор со всеми параметрами
    public Territory(Long id, Long regionId, String discription) {
        this.id = id;
        this.regionId = regionId;
        this.discription = discription;
    }

    // Геттеры и сеттеры
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getRegionId() {
        return regionId;
    }

    public void setRegionId(Long regionId) {
        this.regionId = regionId;
    }

    public String getDiscription() {
        return discription;
    }

    public void setDiscription(String discription) {
        this.discription = discription;
    }

    // Переопределение метода toString()
    @Override
    public String toString() {
        return "Territory{" +
                "id=" + id +
                ", regionId=" + regionId +
                ", discription='" + discription + '\'' +
                '}';
    }
}
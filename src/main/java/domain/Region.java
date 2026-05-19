package domain;

/**
 * Класс данных об областях / регионах (Вариант 14)
 */
public class Region {
    
    // Идентификатор области
    private Long id;
    
    // Наименование области
    private String regionDiscription;

    // Конструктор без параметров
    public Region() {
    }

    // Конструктор с параметром наименования
    public Region(String regionDiscription) {
        this.regionDiscription = regionDiscription;
    }

    // Конструктор со всеми параметрами
    public Region(Long id, String regionDiscription) {
        this.id = id;
        this.regionDiscription = regionDiscription;
    }

    // Геттеры и сеттеры
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getRegionDiscription() {
        return regionDiscription;
    }

    public void setRegionDiscription(String regionDiscription) {
        this.regionDiscription = regionDiscription;
    }

    // Переопределение метода toString() для вывода данных
    @Override
    public String toString() {
        return "Region{" +
                "id=" + id +
                ", regionDiscription='" + regionDiscription + '\'' +
                '}';
    }
}
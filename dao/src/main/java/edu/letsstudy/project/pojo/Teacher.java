package edu.letsstudy.project.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Cascade;


import javax.persistence.*;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.time.LocalDate;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by ADMINUM on 16.07.2017.
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "TEACHERS")
public class Teacher {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "TEACHER_ID")
    private Long id;

    @Column(name = "TEACHER_NAME")
    private String name;

    @Column(name = "TEACHER_SURNAME")
    private String surname;

    @Column(name = "TEACHER_DATE_OF_BIRTH")
    private Date dateOfBirth;

    @Column(name = "TEACHER_COUNTRY")
    private String country;

    @Column(name = "TEACHER_CITY")
    private String city;

    @Column(name = "TEACHER_SKYPE")
    private String skype;

    @Column(name = "TEACHER_PHONENUMBER")
    private String phoneNumber;

    @Column(name = "TEACHER_PRICE_FOR_LESSON")
    private Long priceForLesson;

    @Column(name = "TEACHER_PRiCE_FOR_COMPLEX_LESSON")
    private Long priceForComplexLesson;

    @Column(name = "TEACHER_PHOTO")
    private String teacherPhoto;

    @Column(name = "TEACHER_LOCALE")
    private String locale;

    @Column(name = "DESCRIPTION")
    private String description;

    @ManyToMany
    @Cascade(org.hibernate.annotations.CascadeType.SAVE_UPDATE)
    @JoinTable(name = "TEACHER_CHAT", joinColumns = {@JoinColumn(name = "TEACHER_ID")},
            inverseJoinColumns = {@JoinColumn(name = "messqge_id")})
    private Set<Chat> chats = new HashSet<>();


    @ManyToMany
    @Cascade(org.hibernate.annotations.CascadeType.SAVE_UPDATE)
    @JoinTable(name = "TEACHER_TEACHINGLANGUAGES", joinColumns = {@JoinColumn(name = "TEACHER_ID")},
            inverseJoinColumns = {@JoinColumn(name = "LANGUAGE_ID")})
    private Set<Language> teachingLanguages = new HashSet<>(); //преподаваемые языки

    @ManyToMany
    @Cascade(org.hibernate.annotations.CascadeType.SAVE_UPDATE)
    @JoinTable(name = "TEACHER_MOTHERTONGUES", joinColumns = {@JoinColumn(name = "TEACHER_ID")},
            inverseJoinColumns = {@JoinColumn(name = "LANGUAGE_ID")})
    private Set<Language> motherTongues = new HashSet<>(); // родной язык

    @ManyToMany
    @Cascade(org.hibernate.annotations.CascadeType.SAVE_UPDATE)
    @JoinTable(name = "TEACHER_INTERLANGUAGES", joinColumns = {@JoinColumn(name = "TEACHER_ID")},
            inverseJoinColumns = {@JoinColumn(name = "LANGUAGE_ID")})
    private Set<Language> interlanguages = new HashSet<>(); // язык посредник

    @ManyToMany
    @Cascade(org.hibernate.annotations.CascadeType.SAVE_UPDATE)
    @JoinTable(name = "TEACHER_EXAMS", joinColumns = {@JoinColumn(name = "TEACHER_ID")},
            inverseJoinColumns = {@JoinColumn(name = "EXAM_ID")})
    private Set<Exam> preparingExams = new HashSet<>(); // к каким экзаменам готовит препод

    @ManyToMany
    @Cascade(org.hibernate.annotations.CascadeType.SAVE_UPDATE)
    @JoinTable(name = "TEACHER_COMPETENCE", joinColumns = {@JoinColumn(name = "TEACHER_ID")},
            inverseJoinColumns = {@JoinColumn(name = "COMPETENCE_ID")})
    private Set<Competence> specialCompetence = new HashSet<>();

    @Override
    public String toString() {
        return "Teacher{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", dateOfBirth=" + dateOfBirth +
                ", country='" + country + '\'' +
                ", city='" + city + '\'' +
                ", skype='" + skype + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", priceForLesson=" + priceForLesson +
                ", priceForComplexLesson=" + priceForComplexLesson +
                ", teacherPhoto='" + teacherPhoto + '\'' +
                ", locale='" + locale + '\'' +
                ", description='" + description + '\'' +
                ", chats=" + chats +
                ", teachingLanguages=" + teachingLanguages +
                ", motherTongues=" + motherTongues +
                ", interlanguages=" + interlanguages +
                ", preparingExams=" + preparingExams +
                ", specialCompetence=" + specialCompetence +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Teacher teacher = (Teacher) o;

        if (id != null ? !id.equals(teacher.id) : teacher.id != null) return false;
        if (name != null ? !name.equals(teacher.name) : teacher.name != null) return false;
        if (surname != null ? !surname.equals(teacher.surname) : teacher.surname != null) return false;
        if (dateOfBirth != null ? !dateOfBirth.equals(teacher.dateOfBirth) : teacher.dateOfBirth != null) return false;
        if (country != null ? !country.equals(teacher.country) : teacher.country != null) return false;
        if (city != null ? !city.equals(teacher.city) : teacher.city != null) return false;
        if (skype != null ? !skype.equals(teacher.skype) : teacher.skype != null) return false;
        if (phoneNumber != null ? !phoneNumber.equals(teacher.phoneNumber) : teacher.phoneNumber != null) return false;
        if (priceForLesson != null ? !priceForLesson.equals(teacher.priceForLesson) : teacher.priceForLesson != null)
            return false;
        if (priceForComplexLesson != null ? !priceForComplexLesson.equals(teacher.priceForComplexLesson) : teacher.priceForComplexLesson != null)
            return false;
        if (teacherPhoto != null ? !teacherPhoto.equals(teacher.teacherPhoto) : teacher.teacherPhoto != null)
            return false;
        if (locale != null ? !locale.equals(teacher.locale) : teacher.locale != null) return false;
        if (description != null ? !description.equals(teacher.description) : teacher.description != null) return false;
        if (chats != null ? !chats.equals(teacher.chats) : teacher.chats != null) return false;
        if (teachingLanguages != null ? !teachingLanguages.equals(teacher.teachingLanguages) : teacher.teachingLanguages != null)
            return false;
        if (motherTongues != null ? !motherTongues.equals(teacher.motherTongues) : teacher.motherTongues != null)
            return false;
        if (interlanguages != null ? !interlanguages.equals(teacher.interlanguages) : teacher.interlanguages != null)
            return false;
        if (preparingExams != null ? !preparingExams.equals(teacher.preparingExams) : teacher.preparingExams != null)
            return false;
        return specialCompetence != null ? specialCompetence.equals(teacher.specialCompetence) : teacher.specialCompetence == null;

    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (surname != null ? surname.hashCode() : 0);
        result = 31 * result + (dateOfBirth != null ? dateOfBirth.hashCode() : 0);
        result = 31 * result + (country != null ? country.hashCode() : 0);
        result = 31 * result + (city != null ? city.hashCode() : 0);
        result = 31 * result + (skype != null ? skype.hashCode() : 0);
        result = 31 * result + (phoneNumber != null ? phoneNumber.hashCode() : 0);
        result = 31 * result + (priceForLesson != null ? priceForLesson.hashCode() : 0);
        result = 31 * result + (priceForComplexLesson != null ? priceForComplexLesson.hashCode() : 0);
        result = 31 * result + (teacherPhoto != null ? teacherPhoto.hashCode() : 0);
        result = 31 * result + (locale != null ? locale.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (chats != null ? chats.hashCode() : 0);
        result = 31 * result + (teachingLanguages != null ? teachingLanguages.hashCode() : 0);
        result = 31 * result + (motherTongues != null ? motherTongues.hashCode() : 0);
        result = 31 * result + (interlanguages != null ? interlanguages.hashCode() : 0);
        result = 31 * result + (preparingExams != null ? preparingExams.hashCode() : 0);
        result = 31 * result + (specialCompetence != null ? specialCompetence.hashCode() : 0);
        return result;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getSkype() {
        return skype;
    }

    public void setSkype(String skype) {
        this.skype = skype;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Long getPriceForLesson() {
        return priceForLesson;
    }

    public void setPriceForLesson(Long priceForLesson) {
        this.priceForLesson = priceForLesson;
    }

    public Long getPriceForComplexLesson() {
        return priceForComplexLesson;
    }

    public void setPriceForComplexLesson(Long priceForComplexLesson) {
        this.priceForComplexLesson = priceForComplexLesson;
    }

    public String getTeacherPhoto() {
        return teacherPhoto;
    }

    public void setTeacherPhoto(String teacherPhoto) {
        this.teacherPhoto = teacherPhoto;
    }

    public String getLocale() {
        return locale;
    }

    public void setLocale(String locale) {
        this.locale = locale;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Set<Chat> getChats() {
        return chats;
    }

    public void setChats(Set<Chat> chats) {
        this.chats = chats;
    }

    public Set<Language> getTeachingLanguages() {
        return teachingLanguages;
    }

    public void setTeachingLanguages(Set<Language> teachingLanguages) {
        this.teachingLanguages = teachingLanguages;
    }

    public Set<Language> getMotherTongues() {
        return motherTongues;
    }

    public void setMotherTongues(Set<Language> motherTongues) {
        this.motherTongues = motherTongues;
    }

    public Set<Language> getInterlanguages() {
        return interlanguages;
    }

    public void setInterlanguages(Set<Language> interlanguages) {
        this.interlanguages = interlanguages;
    }

    public Set<Exam> getPreparingExams() {
        return preparingExams;
    }

    public void setPreparingExams(Set<Exam> preparingExams) {
        this.preparingExams = preparingExams;
    }

    public Set<Competence> getSpecialCompetence() {
        return specialCompetence;
    }

    public void setSpecialCompetence(Set<Competence> specialCompetence) {
        this.specialCompetence = specialCompetence;
    }
}


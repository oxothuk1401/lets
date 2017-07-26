package edu.letsstudy.project.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Cascade;

import javax.persistence.*;
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
@Table(name = "STUDENT")
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "STUDENT_ID")
    private Long id;

    @Column(name = "STUDENT_NAME")
    private String name;

    @Column(name = "STUDENT_SURNAME")
    private String surname;

    @Column(name = "STUDENT_DATE_OF_BIRTH")
    private LocalDate dateOfBirth;

    @Column(name = "STUDENT_COUNTRY")
    private String country;

    @Column(name = "STUDENT_CITY")
    private String city;

    @Column(name = "STUDENT_PHONE")
    private String phoneNumber;

    @Column(name = "STUDENT_SKYPE")
    private String skype;

    @Column(name = "STUDENT_PHOTO")
    private String studentPhoto;

    @ManyToMany
    @Cascade(org.hibernate.annotations.CascadeType.SAVE_UPDATE)
    @JoinTable(name = "STUDENTS_MOTHER_TONGUE", joinColumns = {@JoinColumn(name = "STUDENT_ID")},
            inverseJoinColumns = {@JoinColumn(name = "LANGUAGE_ID")})
    private Set<Language> studentMotherTongue = new HashSet<>();


    @ManyToMany
    @Cascade(org.hibernate.annotations.CascadeType.SAVE_UPDATE)
    @JoinTable(name = "STUDENT_STUDY_LANGUAGE", joinColumns = {@JoinColumn(name = "STUDENT_ID")},
            inverseJoinColumns = {@JoinColumn(name = "LANGUAGE_ID")})
    private Set<Language> studentStudyLanguage = new HashSet<>();

    @ManyToMany
    @JoinTable(name = "STUDENT_CHAT", joinColumns = @JoinColumn(name = "STUDENT_ID"),
            inverseJoinColumns = @JoinColumn(name = "messqge_id"))
    private Set<Chat> chats = new HashSet<>();

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", dateOfBirth=" + dateOfBirth +
                ", country='" + country + '\'' +
                ", city='" + city + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", skype='" + skype + '\'' +
                ", studentPhoto='" + studentPhoto + '\'' +
                ", studentMotherTongue=" + studentMotherTongue +
                ", studentStudyLanguage=" + studentStudyLanguage +
                ", chats=" + chats +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Student student = (Student) o;

        if (id != null ? !id.equals(student.id) : student.id != null) return false;
        if (name != null ? !name.equals(student.name) : student.name != null) return false;
        if (surname != null ? !surname.equals(student.surname) : student.surname != null) return false;
        if (dateOfBirth != null ? !dateOfBirth.equals(student.dateOfBirth) : student.dateOfBirth != null) return false;
        if (country != null ? !country.equals(student.country) : student.country != null) return false;
        if (city != null ? !city.equals(student.city) : student.city != null) return false;
        if (phoneNumber != null ? !phoneNumber.equals(student.phoneNumber) : student.phoneNumber != null) return false;
        if (skype != null ? !skype.equals(student.skype) : student.skype != null) return false;
        if (studentPhoto != null ? !studentPhoto.equals(student.studentPhoto) : student.studentPhoto != null)
            return false;
        if (studentMotherTongue != null ? !studentMotherTongue.equals(student.studentMotherTongue) : student.studentMotherTongue != null)
            return false;
        if (studentStudyLanguage != null ? !studentStudyLanguage.equals(student.studentStudyLanguage) : student.studentStudyLanguage != null)
            return false;
        return chats != null ? chats.equals(student.chats) : student.chats == null;

    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (surname != null ? surname.hashCode() : 0);
        result = 31 * result + (dateOfBirth != null ? dateOfBirth.hashCode() : 0);
        result = 31 * result + (country != null ? country.hashCode() : 0);
        result = 31 * result + (city != null ? city.hashCode() : 0);
        result = 31 * result + (phoneNumber != null ? phoneNumber.hashCode() : 0);
        result = 31 * result + (skype != null ? skype.hashCode() : 0);
        result = 31 * result + (studentPhoto != null ? studentPhoto.hashCode() : 0);
        result = 31 * result + (studentMotherTongue != null ? studentMotherTongue.hashCode() : 0);
        result = 31 * result + (studentStudyLanguage != null ? studentStudyLanguage.hashCode() : 0);
        result = 31 * result + (chats != null ? chats.hashCode() : 0);
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

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(LocalDate dateOfBirth) {
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

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getSkype() {
        return skype;
    }

    public void setSkype(String skype) {
        this.skype = skype;
    }

    public String getStudentPhoto() {
        return studentPhoto;
    }

    public void setStudentPhoto(String studentPhoto) {
        this.studentPhoto = studentPhoto;
    }

    public Set<Language> getStudentMotherTongue() {
        return studentMotherTongue;
    }

    public void setStudentMotherTongue(Set<Language> studentMotherTongue) {
        this.studentMotherTongue = studentMotherTongue;
    }

    public Set<Language> getStudentStudyLanguage() {
        return studentStudyLanguage;
    }

    public void setStudentStudyLanguage(Set<Language> studentStudyLanguage) {
        this.studentStudyLanguage = studentStudyLanguage;
    }

    public Set<Chat> getChats() {
        return chats;
    }

    public void setChats(Set<Chat> chats) {
        this.chats = chats;
    }
}

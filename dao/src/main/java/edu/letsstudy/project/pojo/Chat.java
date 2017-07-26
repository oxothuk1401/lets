package edu.letsstudy.project.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Set;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "CHAT")
public class Chat {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "messqge_id")
    private long id;

    @Column(name = "message")
    private String message;

    @Column(name = "date")
    private LocalDate date;

    @ManyToMany(mappedBy = "chats")
    private Set<Student> students;

    @ManyToMany(mappedBy = "chats")
    private Set<Teacher> teachers;

    @Override
    public String toString() {
        return "Chat{" +
                "id=" + id +
                ", message='" + message + '\'' +
                ", date=" + date +
                ", students=" + students +
                ", teachers=" + teachers +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Chat chat = (Chat) o;

        if (id != chat.id) return false;
        if (message != null ? !message.equals(chat.message) : chat.message != null) return false;
        if (date != null ? !date.equals(chat.date) : chat.date != null) return false;
        if (students != null ? !students.equals(chat.students) : chat.students != null) return false;
        return teachers != null ? teachers.equals(chat.teachers) : chat.teachers == null;

    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (message != null ? message.hashCode() : 0);
        result = 31 * result + (date != null ? date.hashCode() : 0);
        result = 31 * result + (students != null ? students.hashCode() : 0);
        result = 31 * result + (teachers != null ? teachers.hashCode() : 0);
        return result;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public Set<Student> getStudents() {
        return students;
    }

    public void setStudents(Set<Student> students) {
        this.students = students;
    }

    public Set<Teacher> getTeachers() {
        return teachers;
    }

    public void setTeachers(Set<Teacher> teachers) {
        this.teachers = teachers;
    }
}

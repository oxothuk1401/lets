package edu.letsstudy.project.pojo;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QStudent is a Querydsl query type for Student
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QStudent extends EntityPathBase<Student> {

    private static final long serialVersionUID = -271413669L;

    public static final QStudent student = new QStudent("student");

    public final StringPath city = createString("city");

    public final StringPath country = createString("country");

    public final DatePath<java.time.LocalDate> dateOfBirth = createDate("dateOfBirth", java.time.LocalDate.class);

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath name = createString("name");

    public final StringPath phoneNumber = createString("phoneNumber");

    public final StringPath skype = createString("skype");

    public final SetPath<Language, QLanguage> studentMotherTongue = this.<Language, QLanguage>createSet("studentMotherTongue", Language.class, QLanguage.class, PathInits.DIRECT2);

    public final StringPath studentPhoto = createString("studentPhoto");

    public final SetPath<Language, QLanguage> studentStudyLanguage = this.<Language, QLanguage>createSet("studentStudyLanguage", Language.class, QLanguage.class, PathInits.DIRECT2);

    public final StringPath surname = createString("surname");

    public QStudent(String variable) {
        super(Student.class, forVariable(variable));
    }

    public QStudent(Path<? extends Student> path) {
        super(path.getType(), path.getMetadata());
    }

    public QStudent(PathMetadata metadata) {
        super(Student.class, metadata);
    }

}


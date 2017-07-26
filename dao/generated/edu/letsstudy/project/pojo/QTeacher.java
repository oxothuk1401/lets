package edu.letsstudy.project.pojo;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QTeacher is a Querydsl query type for Teacher
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QTeacher extends EntityPathBase<Teacher> {

    private static final long serialVersionUID = 168155138L;

    public static final QTeacher teacher = new QTeacher("teacher");

    public final StringPath city = createString("city");

    public final StringPath country = createString("country");

    public final DatePath<java.time.LocalDate> dateOfBirth = createDate("dateOfBirth", java.time.LocalDate.class);

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final SetPath<Language, QLanguage> interlanguages = this.<Language, QLanguage>createSet("interlanguages", Language.class, QLanguage.class, PathInits.DIRECT2);

    public final SetPath<Language, QLanguage> motherTongues = this.<Language, QLanguage>createSet("motherTongues", Language.class, QLanguage.class, PathInits.DIRECT2);

    public final StringPath name = createString("name");

    public final StringPath phoneNumber = createString("phoneNumber");

    public final SetPath<Exam, QExam> preparingExams = this.<Exam, QExam>createSet("preparingExams", Exam.class, QExam.class, PathInits.DIRECT2);

    public final NumberPath<Long> priceForLesson = createNumber("priceForLesson", Long.class);

    public final StringPath skype = createString("skype");

    public final SetPath<Competence, QCompetence> specialCompetence = this.<Competence, QCompetence>createSet("specialCompetence", Competence.class, QCompetence.class, PathInits.DIRECT2);

    public final StringPath surname = createString("surname");

    public final StringPath teacherPhoto = createString("teacherPhoto");

    public final SetPath<Language, QLanguage> teachingLanguages = this.<Language, QLanguage>createSet("teachingLanguages", Language.class, QLanguage.class, PathInits.DIRECT2);

    public QTeacher(String variable) {
        super(Teacher.class, forVariable(variable));
    }

    public QTeacher(Path<? extends Teacher> path) {
        super(path.getType(), path.getMetadata());
    }

    public QTeacher(PathMetadata metadata) {
        super(Teacher.class, metadata);
    }

}


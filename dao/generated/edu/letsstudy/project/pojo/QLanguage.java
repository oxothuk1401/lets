package edu.letsstudy.project.pojo;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QLanguage is a Querydsl query type for Language
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QLanguage extends EntityPathBase<Language> {

    private static final long serialVersionUID = 981470008L;

    public static final QLanguage language1 = new QLanguage("language1");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath language = createString("language");

    public final SetPath<Student, QStudent> studentsMT = this.<Student, QStudent>createSet("studentsMT", Student.class, QStudent.class, PathInits.DIRECT2);

    public final SetPath<Student, QStudent> studentsTL = this.<Student, QStudent>createSet("studentsTL", Student.class, QStudent.class, PathInits.DIRECT2);

    public final SetPath<Teacher, QTeacher> teachersIL = this.<Teacher, QTeacher>createSet("teachersIL", Teacher.class, QTeacher.class, PathInits.DIRECT2);

    public final SetPath<Teacher, QTeacher> teachersMT = this.<Teacher, QTeacher>createSet("teachersMT", Teacher.class, QTeacher.class, PathInits.DIRECT2);

    public final SetPath<Teacher, QTeacher> teachersTL = this.<Teacher, QTeacher>createSet("teachersTL", Teacher.class, QTeacher.class, PathInits.DIRECT2);

    public QLanguage(String variable) {
        super(Language.class, forVariable(variable));
    }

    public QLanguage(Path<? extends Language> path) {
        super(path.getType(), path.getMetadata());
    }

    public QLanguage(PathMetadata metadata) {
        super(Language.class, metadata);
    }

}


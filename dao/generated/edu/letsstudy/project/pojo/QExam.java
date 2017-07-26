package edu.letsstudy.project.pojo;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QExam is a Querydsl query type for Exam
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QExam extends EntityPathBase<Exam> {

    private static final long serialVersionUID = -183230465L;

    public static final QExam exam1 = new QExam("exam1");

    public final StringPath exam = createString("exam");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final SetPath<Teacher, QTeacher> teachersPE = this.<Teacher, QTeacher>createSet("teachersPE", Teacher.class, QTeacher.class, PathInits.DIRECT2);

    public QExam(String variable) {
        super(Exam.class, forVariable(variable));
    }

    public QExam(Path<? extends Exam> path) {
        super(path.getType(), path.getMetadata());
    }

    public QExam(PathMetadata metadata) {
        super(Exam.class, metadata);
    }

}


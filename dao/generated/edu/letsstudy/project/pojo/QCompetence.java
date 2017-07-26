package edu.letsstudy.project.pojo;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QCompetence is a Querydsl query type for Competence
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QCompetence extends EntityPathBase<Competence> {

    private static final long serialVersionUID = 2043123625L;

    public static final QCompetence competence = new QCompetence("competence");

    public final StringPath competenceTitle = createString("competenceTitle");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final SetPath<Teacher, QTeacher> teachers = this.<Teacher, QTeacher>createSet("teachers", Teacher.class, QTeacher.class, PathInits.DIRECT2);

    public QCompetence(String variable) {
        super(Competence.class, forVariable(variable));
    }

    public QCompetence(Path<? extends Competence> path) {
        super(path.getType(), path.getMetadata());
    }

    public QCompetence(PathMetadata metadata) {
        super(Competence.class, metadata);
    }

}


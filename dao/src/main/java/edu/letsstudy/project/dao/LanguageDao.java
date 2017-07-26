package edu.letsstudy.project.dao;

import edu.letsstudy.project.pojo.Language;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by ADMINUM on 16.07.2017.
 */
public interface LanguageDao extends JpaRepository<Language, Long> {
    Language findLanguageByLanguage(String language);
}

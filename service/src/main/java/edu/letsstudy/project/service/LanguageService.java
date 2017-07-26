package edu.letsstudy.project.service;

import edu.letsstudy.project.pojo.Language;

/**
 * Created by ADMINUM on 16.07.2017.
 */
public interface LanguageService {
    Language findByLanguageTitle(String language);
}

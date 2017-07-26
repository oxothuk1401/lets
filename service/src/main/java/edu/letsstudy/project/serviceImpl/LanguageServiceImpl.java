package edu.letsstudy.project.serviceImpl;

import edu.letsstudy.project.dao.LanguageDao;
import edu.letsstudy.project.pojo.Language;
import edu.letsstudy.project.service.LanguageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by ADMINUM on 16.07.2017.
 */
@Service
public class LanguageServiceImpl implements LanguageService {

    @Autowired
    private LanguageDao languageDao;

    @Override
    public Language findByLanguageTitle(String language) {
        return languageDao.findLanguageByLanguage(language.toUpperCase());
    }
}

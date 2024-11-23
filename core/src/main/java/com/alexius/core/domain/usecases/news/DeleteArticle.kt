package com.alexius.core.domain.usecases.news

import com.alexius.core.domain.model.Article
import com.alexius.core.domain.repository.NewsRepository

class DeleteArticle(
    private val newsRepository: NewsRepository
) {
    suspend operator fun invoke(article: Article){
        newsRepository.deleteArticle(article)
    }
}
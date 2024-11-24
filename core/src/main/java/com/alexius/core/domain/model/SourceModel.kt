package com.alexius.core.domain.model

import android.os.Parcelable
import kotlinx.parcelize.Parcelize

@Parcelize
data class SourceModel(
    val id: String,
    val name: String
): Parcelable

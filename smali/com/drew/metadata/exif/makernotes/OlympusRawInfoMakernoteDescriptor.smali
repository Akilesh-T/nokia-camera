.class public Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "OlympusRawInfoMakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getColorMatrix2Description()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 69
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;

    const/16 v5, 0x200

    invoke-virtual {v3, v5}, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->getIntArray(I)[I

    move-result-object v2

    .line 70
    .local v2, "values":[I
    if-nez v2, :cond_0

    .line 79
    :goto_0
    return-object v4

    .line 73
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 75
    aget v3, v2, v0

    int-to-short v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 77
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_3

    move-object v3, v4

    :goto_2
    move-object v4, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 2
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 52
    sparse-switch p1, :sswitch_data_0

    .line 62
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 54
    :sswitch_0
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDescriptor;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDescriptor;->getColorMatrix2Description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDescriptor;->getYCbCrCoefficientsDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDescriptor;->getOlympusLightSourceDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x200 -> :sswitch_1
        0x601 -> :sswitch_2
        0x1000 -> :sswitch_3
    .end sparse-switch
.end method

.method public getOlympusLightSourceDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 107
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 108
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 109
    const/4 v1, 0x0

    .line 138
    :goto_0
    return-object v1

    .line 111
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 114
    :sswitch_0
    const-string v1, "Unknown"

    goto :goto_0

    .line 116
    :sswitch_1
    const-string v1, "Shade"

    goto :goto_0

    .line 118
    :sswitch_2
    const-string v1, "Cloudy"

    goto :goto_0

    .line 120
    :sswitch_3
    const-string v1, "Fine Weather"

    goto :goto_0

    .line 122
    :sswitch_4
    const-string v1, "Tungsten (Incandescent)"

    goto :goto_0

    .line 124
    :sswitch_5
    const-string v1, "Evening Sunlight"

    goto :goto_0

    .line 126
    :sswitch_6
    const-string v1, "Daylight Fluorescent"

    goto :goto_0

    .line 128
    :sswitch_7
    const-string v1, "Day White Fluorescent"

    goto :goto_0

    .line 130
    :sswitch_8
    const-string v1, "Cool White Fluorescent"

    goto :goto_0

    .line 132
    :sswitch_9
    const-string v1, "White Fluorescent"

    goto :goto_0

    .line 134
    :sswitch_a
    const-string v1, "One Touch White Balance"

    goto :goto_0

    .line 136
    :sswitch_b
    const-string v1, "Custom 1-4"

    goto :goto_0

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
        0x12 -> :sswitch_3
        0x14 -> :sswitch_4
        0x16 -> :sswitch_5
        0x21 -> :sswitch_6
        0x22 -> :sswitch_7
        0x23 -> :sswitch_8
        0x24 -> :sswitch_9
        0x100 -> :sswitch_a
        0x200 -> :sswitch_b
    .end sparse-switch
.end method

.method public getYCbCrCoefficientsDescription()Ljava/lang/String;
    .locals 10
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 85
    iget-object v4, p0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v4, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;

    const/16 v6, 0x601

    invoke-virtual {v4, v6}, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->getIntArray(I)[I

    move-result-object v3

    .line 86
    .local v3, "values":[I
    if-nez v3, :cond_0

    .line 101
    :goto_0
    return-object v5

    .line 89
    :cond_0
    array-length v4, v3

    div-int/lit8 v4, v4, 0x2

    new-array v1, v4, [Lcom/drew/lang/Rational;

    .line 90
    .local v1, "ret":[Lcom/drew/lang/Rational;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    div-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_1

    .line 92
    new-instance v4, Lcom/drew/lang/Rational;

    mul-int/lit8 v6, v0, 0x2

    aget v6, v3, v6

    int-to-short v6, v6

    int-to-long v6, v6

    mul-int/lit8 v8, v0, 0x2

    add-int/lit8 v8, v8, 0x1

    aget v8, v3, v8

    int-to-short v8, v8

    int-to-long v8, v8

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/drew/lang/Rational;-><init>(JJ)V

    aput-object v4, v1, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    :goto_2
    array-length v4, v1

    if-ge v0, v4, :cond_3

    .line 97
    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 98
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_2

    .line 99
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 101
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_4

    move-object v4, v5

    :goto_3
    move-object v5, v4

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.class public Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "OlympusRawDevelopmentMakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 51
    sparse-switch p1, :sswitch_data_0

    .line 65
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 53
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDescriptor;->getRawDevVersionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDescriptor;->getRawDevColorSpaceDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDescriptor;->getRawDevEngineDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDescriptor;->getRawDevNoiseReductionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDescriptor;->getRawDevEditStatusDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDescriptor;->getRawDevSettingsDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x108 -> :sswitch_1
        0x109 -> :sswitch_2
        0x10a -> :sswitch_3
        0x10b -> :sswitch_4
        0x10c -> :sswitch_5
    .end sparse-switch
.end method

.method public getRawDevColorSpaceDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 78
    const/16 v0, 0x108

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sRGB"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Adobe RGB"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Pro Photo RGB"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawDevEditStatusDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 112
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;

    const/16 v2, 0x10b

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 113
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 114
    const/4 v1, 0x0

    .line 126
    :goto_0
    return-object v1

    .line 116
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 126
    :pswitch_0
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

    .line 119
    :pswitch_1
    const-string v1, "Original"

    goto :goto_0

    .line 121
    :pswitch_2
    const-string v1, "Edited (Landscape)"

    goto :goto_0

    .line 124
    :pswitch_3
    const-string v1, "Edited (Portrait)"

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getRawDevEngineDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 85
    const/16 v0, 0x109

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "High Speed"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "High Function"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Advanced High Speed"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Advanced High Function"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawDevNoiseReductionDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 92
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;

    const/16 v4, 0x10a

    invoke-virtual {v3, v4}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v2

    .line 93
    .local v2, "value":Ljava/lang/Integer;
    if-nez v2, :cond_0

    .line 94
    const/4 v3, 0x0

    .line 106
    :goto_0
    return-object v3

    .line 96
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    .line 97
    const-string v3, "(none)"

    goto :goto_0

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 102
    .local v1, "v":I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_2

    const-string v3, "Noise Reduction, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_2
    shr-int/lit8 v3, v1, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    const-string v3, "Noise Filter, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_3
    shr-int/lit8 v3, v1, 0x2

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    const-string v3, "Noise Filter (ISO Boost), "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getRawDevSettingsDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 133
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;

    const/16 v4, 0x10c

    invoke-virtual {v3, v4}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v2

    .line 134
    .local v2, "value":Ljava/lang/Integer;
    if-nez v2, :cond_0

    .line 135
    const/4 v3, 0x0

    .line 152
    :goto_0
    return-object v3

    .line 137
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    .line 138
    const-string v3, "(none)"

    goto :goto_0

    .line 140
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 143
    .local v1, "v":I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_2

    const-string v3, "WB Color Temp, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_2
    shr-int/lit8 v3, v1, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    const-string v3, "WB Gray Point, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_3
    shr-int/lit8 v3, v1, 0x2

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    const-string v3, "Saturation, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_4
    shr-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    const-string v3, "Contrast, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_5
    shr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6

    const-string v3, "Sharpness, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_6
    shr-int/lit8 v3, v1, 0x5

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    const-string v3, "Color Space, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_7
    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_8

    const-string v3, "High Function, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_8
    shr-int/lit8 v3, v1, 0x7

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_9

    const-string v3, "Noise Reduction, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_9
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getRawDevVersionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDescriptor;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

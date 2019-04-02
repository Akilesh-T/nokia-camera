.class public Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "OlympusFocusInfoMakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;
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
.method public getAfPointDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 108
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;

    const/16 v2, 0x308

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 109
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 110
    const/4 v1, 0x0

    .line 112
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getAutoFocusDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 89
    const/16 v0, 0x209

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "On"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 52
    sparse-switch p1, :sswitch_data_0

    .line 76
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 54
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getFocusInfoVersionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getAutoFocusDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getFocusDistanceDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getAfPointDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getExternalFlashDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 64
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getExternalFlashBounceDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :sswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getExternalFlashZoomDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :sswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getManualFlashDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :sswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getMacroLedDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :sswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getSensorTemperatureDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :sswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getImageStabilizationDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x209 -> :sswitch_1
        0x305 -> :sswitch_2
        0x308 -> :sswitch_3
        0x1201 -> :sswitch_4
        0x1204 -> :sswitch_5
        0x1205 -> :sswitch_6
        0x1209 -> :sswitch_7
        0x120a -> :sswitch_8
        0x1500 -> :sswitch_9
        0x1600 -> :sswitch_a
    .end sparse-switch
.end method

.method public getExternalFlashBounceDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 135
    const/16 v0, 0x1204

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Bounce or Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Direct"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalFlashDescription()Ljava/lang/String;
    .locals 7
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 118
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;

    const/16 v3, 0x1201

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->getIntArray(I)[I

    move-result-object v1

    .line 119
    .local v1, "values":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-ge v2, v4, :cond_1

    .line 120
    :cond_0
    const/4 v2, 0x0

    .line 129
    :goto_0
    return-object v2

    .line 122
    :cond_1
    const-string v2, "%d %d"

    new-array v3, v4, [Ljava/lang/Object;

    aget v4, v1, v5

    int-to-short v4, v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v5

    aget v4, v1, v6

    int-to-short v4, v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "join":Ljava/lang/String;
    const-string v2, "0 0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    const-string v2, "Off"

    goto :goto_0

    .line 126
    :cond_2
    const-string v2, "1 0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    const-string v2, "On"

    goto :goto_0

    .line 129
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getExternalFlashZoomDescription()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x1205

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 142
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;

    invoke-virtual {v3, v5}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->getIntArray(I)[I

    move-result-object v2

    .line 143
    .local v2, "values":[I
    if-nez v2, :cond_1

    .line 146
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;

    invoke-virtual {v3, v5}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v1

    .line 147
    .local v1, "value":Ljava/lang/Integer;
    if-nez v1, :cond_0

    move-object v3, v4

    .line 170
    .end local v1    # "value":Ljava/lang/Integer;
    :goto_0
    return-object v3

    .line 150
    .restart local v1    # "value":Ljava/lang/Integer;
    :cond_0
    new-array v2, v6, [I

    .line 151
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v7

    .line 154
    .end local v1    # "value":Ljava/lang/Integer;
    :cond_1
    array-length v3, v2

    if-nez v3, :cond_2

    move-object v3, v4

    .line 155
    goto :goto_0

    .line 157
    :cond_2
    const-string v3, "%d"

    new-array v4, v6, [Ljava/lang/Object;

    aget v5, v2, v7

    int-to-short v5, v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "join":Ljava/lang/String;
    array-length v3, v2

    if-le v3, v6, :cond_3

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%d"

    new-array v5, v6, [Ljava/lang/Object;

    aget v6, v2, v6

    int-to-short v6, v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_3
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 162
    const-string v3, "Off"

    goto :goto_0

    .line 163
    :cond_4
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 164
    const-string v3, "On"

    goto :goto_0

    .line 165
    :cond_5
    const-string v3, "0 0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 166
    const-string v3, "Off"

    goto :goto_0

    .line 167
    :cond_6
    const-string v3, "1 0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 168
    const-string v3, "On"

    goto :goto_0

    .line 170
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public getFocusDistanceDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 96
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;

    const/16 v2, 0x305

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 97
    .local v0, "value":Lcom/drew/lang/Rational;
    if-nez v0, :cond_0

    .line 98
    const-string v1, "inf"

    .line 102
    :goto_0
    return-object v1

    .line 99
    :cond_0
    invoke-virtual {v0}, Lcom/drew/lang/Rational;->getNumerator()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->getNumerator()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 100
    :cond_1
    const-string v1, "inf"

    goto :goto_0

    .line 102
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->getNumerator()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFocusInfoVersionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageStabilizationDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 209
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;

    const/16 v2, 0x1600

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->getByteArray(I)[B

    move-result-object v0

    .line 210
    .local v0, "values":[B
    if-nez v0, :cond_0

    .line 211
    const/4 v1, 0x0

    .line 215
    :goto_0
    return-object v1

    .line 213
    :cond_0
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    or-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 214
    const-string v1, "Off"

    goto :goto_0

    .line 215
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v1, 0x2b

    aget-byte v1, v0, v1

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_2

    const-string v1, "Mode 1"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "Mode 2"

    goto :goto_1
.end method

.method public getMacroLedDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 192
    const/16 v0, 0x120a

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "On"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManualFlashDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 177
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;

    const/16 v2, 0x1209

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->getIntArray(I)[I

    move-result-object v0

    .line 178
    .local v0, "values":[I
    if-nez v0, :cond_0

    .line 179
    const/4 v1, 0x0

    .line 186
    :goto_0
    return-object v1

    .line 181
    :cond_0
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-short v1, v1

    if-nez v1, :cond_1

    .line 182
    const-string v1, "Off"

    goto :goto_0

    .line 184
    :cond_1
    aget v1, v0, v3

    int-to-short v1, v1

    if-ne v1, v3, :cond_2

    .line 185
    const-string v1, "Full"

    goto :goto_0

    .line 186
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On (1/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " strength)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSensorTemperatureDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;

    const/16 v1, 0x1500

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

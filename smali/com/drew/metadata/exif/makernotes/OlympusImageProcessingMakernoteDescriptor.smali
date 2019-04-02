.class public Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "OlympusImageProcessingMakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;
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
.method public getAspectRatioDescription()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 174
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;

    const/16 v4, 0x1112

    invoke-virtual {v3, v4}, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->getByteArray(I)[B

    move-result-object v2

    .line 175
    .local v2, "values":[B
    if-eqz v2, :cond_0

    array-length v3, v2

    if-ge v3, v5, :cond_1

    .line 176
    :cond_0
    const/4 v1, 0x0

    .line 212
    :goto_0
    return-object v1

    .line 178
    :cond_1
    const-string v3, "%d %d"

    new-array v4, v5, [Ljava/lang/Object;

    aget-byte v5, v2, v6

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v6

    aget-byte v5, v2, v7

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "join":Ljava/lang/String;
    const-string v3, "1 1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 182
    const-string v1, "4:3"

    .local v1, "ret":Ljava/lang/String;
    goto :goto_0

    .line 183
    .end local v1    # "ret":Ljava/lang/String;
    :cond_2
    const-string v3, "1 4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 184
    const-string v1, "1:1"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 185
    .end local v1    # "ret":Ljava/lang/String;
    :cond_3
    const-string v3, "2 1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 186
    const-string v1, "3:2 (RAW)"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 187
    .end local v1    # "ret":Ljava/lang/String;
    :cond_4
    const-string v3, "2 2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 188
    const-string v1, "3:2"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 189
    .end local v1    # "ret":Ljava/lang/String;
    :cond_5
    const-string v3, "3 1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 190
    const-string v1, "16:9 (RAW)"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 191
    .end local v1    # "ret":Ljava/lang/String;
    :cond_6
    const-string v3, "3 3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 192
    const-string v1, "16:9"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 193
    .end local v1    # "ret":Ljava/lang/String;
    :cond_7
    const-string v3, "4 1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 194
    const-string v1, "1:1 (RAW)"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 195
    .end local v1    # "ret":Ljava/lang/String;
    :cond_8
    const-string v3, "4 4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 196
    const-string v1, "6:6"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 197
    .end local v1    # "ret":Ljava/lang/String;
    :cond_9
    const-string v3, "5 5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 198
    const-string v1, "5:4"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 199
    .end local v1    # "ret":Ljava/lang/String;
    :cond_a
    const-string v3, "6 6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 200
    const-string v1, "7:6"

    .restart local v1    # "ret":Ljava/lang/String;
    goto/16 :goto_0

    .line 201
    .end local v1    # "ret":Ljava/lang/String;
    :cond_b
    const-string v3, "7 7"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 202
    const-string v1, "6:5"

    .restart local v1    # "ret":Ljava/lang/String;
    goto/16 :goto_0

    .line 203
    .end local v1    # "ret":Ljava/lang/String;
    :cond_c
    const-string v3, "8 8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 204
    const-string v1, "7:5"

    .restart local v1    # "ret":Ljava/lang/String;
    goto/16 :goto_0

    .line 205
    .end local v1    # "ret":Ljava/lang/String;
    :cond_d
    const-string v3, "9 1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 206
    const-string v1, "3:4 (RAW)"

    .restart local v1    # "ret":Ljava/lang/String;
    goto/16 :goto_0

    .line 207
    .end local v1    # "ret":Ljava/lang/String;
    :cond_e
    const-string v3, "9 9"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 208
    const-string v1, "3:4"

    .restart local v1    # "ret":Ljava/lang/String;
    goto/16 :goto_0

    .line 210
    .end local v1    # "ret":Ljava/lang/String;
    :cond_f
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

    move-result-object v1

    .restart local v1    # "ret":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public getColorMatrixDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 84
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;

    const/16 v4, 0x200

    invoke-virtual {v3, v4}, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->getIntArray(I)[I

    move-result-object v1

    .line 85
    .local v1, "obj":[I
    if-nez v1, :cond_0

    .line 86
    const/4 v3, 0x0

    .line 94
    :goto_0
    return-object v3

    .line 88
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 90
    if-eqz v0, :cond_1

    .line 91
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_1
    aget v3, v1, v0

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 51
    sparse-switch p1, :sswitch_data_0

    .line 71
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 53
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDescriptor;->getImageProcessingVersionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDescriptor;->getColorMatrixDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDescriptor;->getNoiseReduction2Description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDescriptor;->getDistortionCorrection2Description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDescriptor;->getShadingCompensation2Description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDescriptor;->getMultipleExposureModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :sswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDescriptor;->getAspectRatioDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :sswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDescriptor;->getKeystoneCompensationDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :sswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDescriptor;->getKeystoneDirectionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x200 -> :sswitch_1
        0x1010 -> :sswitch_2
        0x1011 -> :sswitch_3
        0x1012 -> :sswitch_4
        0x101c -> :sswitch_5
        0x1112 -> :sswitch_6
        0x1900 -> :sswitch_7
        0x1901 -> :sswitch_8
    .end sparse-switch
.end method

.method public getDistortionCorrection2Description()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 120
    const/16 v0, 0x1011

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "On"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageProcessingVersionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDescriptor;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeystoneCompensationDescription()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 218
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;

    const/16 v4, 0x1900

    invoke-virtual {v3, v4}, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->getByteArray(I)[B

    move-result-object v2

    .line 219
    .local v2, "values":[B
    if-eqz v2, :cond_0

    array-length v3, v2

    if-ge v3, v5, :cond_1

    .line 220
    :cond_0
    const/4 v1, 0x0

    .line 232
    :goto_0
    return-object v1

    .line 222
    :cond_1
    const-string v3, "%d %d"

    new-array v4, v5, [Ljava/lang/Object;

    aget-byte v5, v2, v6

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v6

    aget-byte v5, v2, v7

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "join":Ljava/lang/String;
    const-string v3, "0 0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 226
    const-string v1, "Off"

    .local v1, "ret":Ljava/lang/String;
    goto :goto_0

    .line 227
    .end local v1    # "ret":Ljava/lang/String;
    :cond_2
    const-string v3, "0 1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 228
    const-string v1, "On"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 230
    .end local v1    # "ret":Ljava/lang/String;
    :cond_3
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

    move-result-object v1

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getKeystoneDirectionDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 238
    const/16 v0, 0x1901

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Vertical"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Horizontal"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMultipleExposureModeDescription()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v7, 0x101c

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 132
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;

    invoke-virtual {v3, v7}, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->getIntArray(I)[I

    move-result-object v2

    .line 133
    .local v2, "values":[I
    if-nez v2, :cond_1

    .line 136
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;

    invoke-virtual {v3, v7}, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v1

    .line 137
    .local v1, "value":Ljava/lang/Integer;
    if-nez v1, :cond_0

    move-object v3, v4

    .line 168
    .end local v1    # "value":Ljava/lang/Integer;
    :goto_0
    return-object v3

    .line 140
    .restart local v1    # "value":Ljava/lang/Integer;
    :cond_0
    new-array v2, v6, [I

    .line 141
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v5

    .line 144
    .end local v1    # "value":Ljava/lang/Integer;
    :cond_1
    array-length v3, v2

    if-nez v3, :cond_2

    move-object v3, v4

    .line 145
    goto :goto_0

    .line 147
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v0, "sb":Ljava/lang/StringBuilder;
    aget v3, v2, v5

    int-to-short v3, v3

    packed-switch v3, :pswitch_data_0

    .line 161
    :pswitch_0
    const-string v3, "Unknown ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v5

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :goto_1
    array-length v3, v2

    if-le v3, v6, :cond_3

    .line 166
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v6

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 152
    :pswitch_1
    const-string v3, "Off"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 155
    :pswitch_2
    const-string v3, "On (2 frames)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 158
    :pswitch_3
    const-string v3, "On (3 frames)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getNoiseReduction2Description()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 100
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;

    const/16 v4, 0x1010

    invoke-virtual {v3, v4}, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v2

    .line 101
    .local v2, "value":Ljava/lang/Integer;
    if-nez v2, :cond_0

    .line 102
    const/4 v3, 0x0

    .line 114
    :goto_0
    return-object v3

    .line 104
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    .line 105
    const-string v3, "(none)"

    goto :goto_0

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    .line 110
    .local v1, "v":S
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_2

    const-string v3, "Noise Reduction, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_2
    shr-int/lit8 v3, v1, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    const-string v3, "Noise Filter, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_3
    shr-int/lit8 v3, v1, 0x2

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    const-string v3, "Noise Filter (ISO Boost), "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getShadingCompensation2Description()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 126
    const/16 v0, 0x1012

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "On"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

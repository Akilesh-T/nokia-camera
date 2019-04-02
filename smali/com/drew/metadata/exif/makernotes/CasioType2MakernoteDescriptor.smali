.class public Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "CasioType2MakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getCasioPreviewThumbnailDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 206
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getByteArray(I)[B

    move-result-object v0

    .line 207
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 208
    const/4 v1, 0x0

    .line 209
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes of image data>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCcdIsoSensitivityDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 125
    const/16 v0, 0x3014

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "On"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColourModeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 119
    const/16 v0, 0x3015

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContrastDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 221
    const/16 v0, 0x20

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Normal"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "+1"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 46
    sparse-switch p1, :sswitch_data_0

    .line 100
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 48
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getThumbnailDimensionsDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getThumbnailSizeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getThumbnailOffsetDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getQualityModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getImageSizeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getFocusMode1Description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :sswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIsoSensitivityDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :sswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getWhiteBalance1Description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 64
    :sswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getFocalLengthDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :sswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getSaturationDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :sswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getContrastDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :sswitch_b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getSharpnessDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :sswitch_c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getCasioPreviewThumbnailDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :sswitch_d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getWhiteBalanceBiasDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :sswitch_e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getWhiteBalance2Description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    :sswitch_f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getObjectDistanceDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :sswitch_10
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getFlashDistanceDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 82
    :sswitch_11
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getRecordModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 84
    :sswitch_12
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getSelfTimerDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :sswitch_13
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getQualityDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :sswitch_14
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getFocusMode2Description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :sswitch_15
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getTimeZoneDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    :sswitch_16
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getCcdIsoSensitivityDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :sswitch_17
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getColourModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :sswitch_18
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getEnhancementDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :sswitch_19
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getFilterDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 46
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x9 -> :sswitch_4
        0xd -> :sswitch_5
        0x14 -> :sswitch_6
        0x19 -> :sswitch_7
        0x1d -> :sswitch_8
        0x1f -> :sswitch_9
        0x20 -> :sswitch_a
        0x21 -> :sswitch_b
        0x2000 -> :sswitch_c
        0x2011 -> :sswitch_d
        0x2012 -> :sswitch_e
        0x2022 -> :sswitch_f
        0x2034 -> :sswitch_10
        0x3000 -> :sswitch_11
        0x3001 -> :sswitch_12
        0x3002 -> :sswitch_13
        0x3003 -> :sswitch_14
        0x3006 -> :sswitch_15
        0x3014 -> :sswitch_16
        0x3015 -> :sswitch_17
        0x3016 -> :sswitch_18
        0x3017 -> :sswitch_19
    .end sparse-switch
.end method

.method public getEnhancementDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 113
    const/16 v0, 0x3016

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilterDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 107
    const/16 v0, 0x3017

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashDistanceDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 169
    const/16 v0, 0x2034

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocalLengthDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 233
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getDoubleObject(I)Ljava/lang/Double;

    move-result-object v0

    .line 234
    .local v0, "value":Ljava/lang/Double;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getFocalLengthDescription(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFocusMode1Description()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 270
    const/16 v0, 0xd

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Normal"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Macro"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusMode2Description()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 137
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    const/16 v2, 0x3003

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 138
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 139
    const/4 v1, 0x0

    .line 144
    :goto_0
    return-object v1

    .line 140
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 144
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

    .line 141
    :sswitch_0
    const-string v1, "Fixation"

    goto :goto_0

    .line 142
    :sswitch_1
    const-string v1, "Multi-Area Focus"

    goto :goto_0

    .line 140
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public getImageSizeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 276
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 277
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 278
    const/4 v1, 0x0

    .line 287
    :goto_0
    return-object v1

    .line 279
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 287
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

    .line 280
    :sswitch_0
    const-string v1, "640 x 480 pixels"

    goto :goto_0

    .line 281
    :sswitch_1
    const-string v1, "1600 x 1200 pixels"

    goto :goto_0

    .line 282
    :sswitch_2
    const-string v1, "2048 x 1536 pixels"

    goto :goto_0

    .line 283
    :sswitch_3
    const-string v1, "2288 x 1712 pixels"

    goto :goto_0

    .line 284
    :sswitch_4
    const-string v1, "2592 x 1944 pixels"

    goto :goto_0

    .line 285
    :sswitch_5
    const-string v1, "2304 x 1728 pixels"

    goto :goto_0

    .line 286
    :sswitch_6
    const-string v1, "3008 x 2008 pixels"

    goto :goto_0

    .line 279
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x24 -> :sswitch_6
    .end sparse-switch
.end method

.method public getIsoSensitivityDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 254
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 255
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 256
    const/4 v1, 0x0

    .line 263
    :goto_0
    return-object v1

    .line 257
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 263
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

    .line 258
    :pswitch_1
    const-string v1, "50"

    goto :goto_0

    .line 259
    :pswitch_2
    const-string v1, "64"

    goto :goto_0

    .line 260
    :pswitch_3
    const-string v1, "100"

    goto :goto_0

    .line 261
    :pswitch_4
    const-string v1, "200"

    goto :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getObjectDistanceDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 175
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    const/16 v2, 0x2022

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 176
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 177
    const/4 v1, 0x0

    .line 178
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getQualityDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 151
    const/16 v0, 0x3002

    const/4 v1, 0x3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Fine"

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQualityModeDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 294
    const/16 v0, 0x8

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Fine"

    aput-object v3, v1, v2

    const-string v2, "Super Fine"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordModeDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 163
    const/16 v0, 0x3000

    const/4 v1, 0x2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Normal"

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaturationDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 227
    const/16 v0, 0x1f

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Normal"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "+1"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelfTimerDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 157
    const/16 v0, 0x3001

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharpnessDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 215
    const/16 v0, 0x21

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Normal"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "+1"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailDimensionsDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 315
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getIntArray(I)[I

    move-result-object v0

    .line 316
    .local v0, "dimensions":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eq v1, v2, :cond_1

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 318
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pixels"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getThumbnailOffsetDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailSizeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 306
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 307
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 308
    const/4 v1, 0x0

    .line 309
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTimeZoneDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    const/16 v1, 0x3006

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteBalance1Description()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 240
    const/16 v0, 0x19

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Auto"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Daylight"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Shade"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Tungsten"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Florescent"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Manual"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteBalance2Description()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 184
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    const/16 v2, 0x2012

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 185
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 186
    const/4 v1, 0x0

    .line 193
    :goto_0
    return-object v1

    .line 187
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 193
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

    .line 188
    :sswitch_0
    const-string v1, "Manual"

    goto :goto_0

    .line 189
    :sswitch_1
    const-string v1, "Auto"

    goto :goto_0

    .line 190
    :sswitch_2
    const-string v1, "Flash"

    goto :goto_0

    .line 191
    :sswitch_3
    const-string v1, "Flash"

    goto :goto_0

    .line 187
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x4 -> :sswitch_2
        0xc -> :sswitch_3
    .end sparse-switch
.end method

.method public getWhiteBalanceBiasDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    const/16 v1, 0x2011

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

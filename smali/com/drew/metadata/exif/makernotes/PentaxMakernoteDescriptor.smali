.class public Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "PentaxMakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getCaptureModeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 157
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Auto"

    aput-object v2, v0, v1

    const-string v1, "Night-scene"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "Manual"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Multiple"

    aput-object v2, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColourDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 80
    const/16 v0, 0x17

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Normal"

    aput-object v3, v1, v2

    const-string v2, "Black & White"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "Sepia"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContrastDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 108
    const/16 v0, 0xc

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Normal"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Low"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "High"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 49
    packed-switch p1, :pswitch_data_0

    .line 73
    :pswitch_0
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 51
    :pswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDescriptor;->getCaptureModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :pswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDescriptor;->getQualityLevelDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :pswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDescriptor;->getFocusModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :pswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDescriptor;->getFlashModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDescriptor;->getWhiteBalanceDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :pswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDescriptor;->getDigitalZoomDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :pswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDescriptor;->getSharpnessDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :pswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDescriptor;->getContrastDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :pswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDescriptor;->getSaturationDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :pswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDescriptor;->getIsoSpeedDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :pswitch_b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDescriptor;->getColourDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method public getDigitalZoomDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 120
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDirectory;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDirectory;->getFloatObject(I)Ljava/lang/Float;

    move-result-object v0

    .line 121
    .local v0, "value":Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 122
    const/4 v1, 0x0

    .line 125
    :goto_0
    return-object v1

    .line 123
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 124
    const-string v1, "Off"

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFlashModeDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 138
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Auto"

    aput-object v2, v0, v1

    const-string v1, "Flash On"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    aput-object v5, v0, v1

    const/4 v1, 0x3

    const-string v2, "Flash Off"

    aput-object v2, v0, v1

    aput-object v5, v0, v4

    const/4 v1, 0x5

    const-string v2, "Red-eye Reduction"

    aput-object v2, v0, v1

    invoke-virtual {p0, v4, v3, v0}, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusModeDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 145
    const/4 v0, 0x3

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Custom"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Auto"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsoSpeedDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 86
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDirectory;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 87
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 88
    const/4 v1, 0x0

    .line 95
    :goto_0
    return-object v1

    .line 89
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 95
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

    .line 91
    :sswitch_0
    const-string v1, "ISO 100"

    goto :goto_0

    .line 92
    :sswitch_1
    const-string v1, "ISO 200"

    goto :goto_0

    .line 93
    :sswitch_2
    const-string v1, "ISO 100"

    goto :goto_0

    .line 94
    :sswitch_3
    const-string v1, "ISO 200"

    goto :goto_0

    .line 89
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x10 -> :sswitch_1
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_3
    .end sparse-switch
.end method

.method public getQualityLevelDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 151
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Good"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Better"

    aput-object v2, v0, v1

    const-string v1, "Best"

    aput-object v1, v0, v3

    invoke-virtual {p0, v3, v0}, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaturationDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 102
    const/16 v0, 0xd

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Normal"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Low"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "High"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharpnessDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 114
    const/16 v0, 0xb

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Normal"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Soft"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Hard"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteBalanceDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x7

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

    const-string v3, "Fluorescent"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Manual"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

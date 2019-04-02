.class public Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "KodakMakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;
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
.method public getBurstModeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 144
    const/16 v0, 0xa

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "On"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 79
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 80
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 81
    const/4 v1, 0x0

    .line 90
    :goto_0
    return-object v1

    .line 82
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 90
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

    .line 83
    :sswitch_0
    const-string v1, "B&W"

    goto :goto_0

    .line 84
    :sswitch_1
    const-string v1, "Sepia"

    goto :goto_0

    .line 85
    :sswitch_2
    const-string v1, "B&W Yellow Filter"

    goto :goto_0

    .line 86
    :sswitch_3
    const-string v1, "B&W Red Filter"

    goto :goto_0

    .line 87
    :sswitch_4
    const-string v1, "Saturated Color"

    goto :goto_0

    .line 88
    :sswitch_5
    const-string v1, "Neutral Color"

    goto :goto_0

    .line 89
    :sswitch_6
    const-string v1, "Saturated Color"

    goto :goto_0

    .line 82
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
        0x100 -> :sswitch_6
        0x200 -> :sswitch_5
        0x2000 -> :sswitch_0
        0x4000 -> :sswitch_1
    .end sparse-switch
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 46
    sparse-switch p1, :sswitch_data_0

    .line 66
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 48
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getQualityDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getBurstModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getShutterModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getFocusModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getWhiteBalanceDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getFlashModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :sswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getFlashFiredDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :sswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getColorModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 64
    :sswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getSharpnessDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_1
        0x1b -> :sswitch_2
        0x38 -> :sswitch_3
        0x40 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x66 -> :sswitch_7
        0x6b -> :sswitch_8
    .end sparse-switch
.end method

.method public getFlashFiredDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 97
    const/16 v0, 0x5d

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "No"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Yes"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 103
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;

    const/16 v2, 0x5c

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 104
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 105
    const/4 v1, 0x0

    .line 111
    :goto_0
    return-object v1

    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 111
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

    .line 107
    :sswitch_0
    const-string v1, "Auto"

    goto :goto_0

    .line 108
    :sswitch_1
    const-string v1, "Fill Flash"

    goto :goto_0

    .line 109
    :sswitch_2
    const-string v1, "Off"

    goto :goto_0

    .line 110
    :sswitch_3
    const-string v1, "Red Eye"

    goto :goto_0

    .line 106
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
        0x40 -> :sswitch_3
    .end sparse-switch
.end method

.method public getFocusModeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 124
    const/16 v0, 0x38

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Normal"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Macro"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQualityDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 150
    const/16 v0, 0x9

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Fine"

    aput-object v3, v1, v2

    const-string v2, "Normal"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharpnessDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 73
    const/16 v0, 0x6b

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Normal"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShutterModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 130
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 131
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 132
    const/4 v1, 0x0

    .line 137
    :goto_0
    return-object v1

    .line 133
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 137
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

    .line 134
    :sswitch_0
    const-string v1, "Auto"

    goto :goto_0

    .line 135
    :sswitch_1
    const-string v1, "Aperture Priority"

    goto :goto_0

    .line 136
    :sswitch_2
    const-string v1, "Manual"

    goto :goto_0

    .line 133
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public getWhiteBalanceDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 118
    const/16 v0, 0x40

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Auto"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Flash"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Tungsten"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Daylight"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

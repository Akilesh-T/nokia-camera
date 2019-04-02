.class public Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "PanasonicRawDistortionDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;
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
.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 49
    packed-switch p1, :pswitch_data_0

    .line 65
    :pswitch_0
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 51
    :pswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->getDistortionParam02Description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :pswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->getDistortionParam04Description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :pswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->getDistortionScaleDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :pswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->getDistortionCorrectionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->getDistortionParam08Description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :pswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->getDistortionParam09Description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :pswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->getDistortionParam11Description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public getDistortionCorrectionDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 113
    iget-object v2, p0, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v1

    .line 114
    .local v1, "value":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 115
    const/4 v2, 0x0

    .line 126
    :goto_0
    return-object v2

    .line 118
    :cond_0
    const/16 v0, 0xf

    .line 119
    .local v0, "mask":I
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/2addr v2, v0

    packed-switch v2, :pswitch_data_0

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 122
    :pswitch_0
    const-string v2, "Off"

    goto :goto_0

    .line 124
    :pswitch_1
    const-string v2, "On"

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDistortionParam02Description()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 82
    iget-object v1, p0, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 83
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 84
    const/4 v1, 0x0

    .line 86
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/drew/lang/Rational;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x7fa6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/drew/lang/Rational;-><init>(JJ)V

    invoke-virtual {v1}, Lcom/drew/lang/Rational;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDistortionParam04Description()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 92
    iget-object v1, p0, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 93
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 94
    const/4 v1, 0x0

    .line 96
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/drew/lang/Rational;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x7fa6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/drew/lang/Rational;-><init>(JJ)V

    invoke-virtual {v1}, Lcom/drew/lang/Rational;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDistortionParam08Description()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 133
    iget-object v1, p0, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 134
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 135
    const/4 v1, 0x0

    .line 137
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/drew/lang/Rational;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x7fa6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/drew/lang/Rational;-><init>(JJ)V

    invoke-virtual {v1}, Lcom/drew/lang/Rational;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDistortionParam09Description()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 143
    iget-object v1, p0, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 144
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 145
    const/4 v1, 0x0

    .line 147
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/drew/lang/Rational;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x7fa6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/drew/lang/Rational;-><init>(JJ)V

    invoke-virtual {v1}, Lcom/drew/lang/Rational;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDistortionParam11Description()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 153
    iget-object v1, p0, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 154
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 155
    const/4 v1, 0x0

    .line 157
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/drew/lang/Rational;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x7fa6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/drew/lang/Rational;-><init>(JJ)V

    invoke-virtual {v1}, Lcom/drew/lang/Rational;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDistortionScaleDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 102
    iget-object v1, p0, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 103
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 104
    const/4 v1, 0x0

    .line 107
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x8000

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getWbTypeDescription(I)Ljava/lang/String;
    .locals 2
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 72
    iget-object v1, p0, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;

    invoke-virtual {v1, p1}, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 73
    .local v0, "wbtype":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 74
    const/4 v1, 0x0

    .line 76
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-super {p0, v1}, Lcom/drew/metadata/TagDescriptor;->getLightSourceDescription(S)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

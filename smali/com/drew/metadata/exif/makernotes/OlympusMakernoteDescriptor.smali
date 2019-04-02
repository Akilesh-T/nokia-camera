.class public Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "OlympusMakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getApertureValueDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 847
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const/16 v4, 0x1002

    invoke-virtual {v1, v4}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getDoubleObject(I)Ljava/lang/Double;

    move-result-object v0

    .line 848
    .local v0, "aperture":Ljava/lang/Double;
    if-nez v0, :cond_0

    .line 849
    const/4 v1, 0x0

    .line 851
    :goto_0
    return-object v1

    .line 850
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/drew/imaging/PhotographicConversions;->apertureToFStop(D)D

    move-result-wide v2

    .line 851
    .local v2, "fStop":D
    invoke-static {v2, v3}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFStopDescription(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getApexApertureDescription()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 318
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v4, 0xf00b

    invoke-virtual {v3, v4}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v2

    .line 320
    .local v2, "value":Ljava/lang/Long;
    if-nez v2, :cond_0

    .line 321
    const/4 v3, 0x0

    .line 324
    :goto_0
    return-object v3

    .line 323
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 324
    .local v0, "fStop":D
    invoke-static {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFStopDescription(D)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getApexBrightnessDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 583
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v3, 0xf02d

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v1

    .line 584
    .local v1, "value":Ljava/lang/Long;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "0.##"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 585
    .local v0, "format":Ljava/text/DecimalFormat;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    sub-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getApexFilmSpeedDescription()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 283
    iget-object v4, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v4, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v5, 0xf009

    invoke-virtual {v4, v5}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v1

    .line 285
    .local v1, "value":Ljava/lang/Long;
    if-nez v1, :cond_0

    .line 286
    const/4 v4, 0x0

    .line 291
    :goto_0
    return-object v4

    .line 288
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4009000000000000L    # 3.125

    mul-double v2, v4, v6

    .line 289
    .local v2, "iso":D
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "0.##"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, "format":Ljava/text/DecimalFormat;
    sget-object v4, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v4}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 291
    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getApexShutterSpeedTimeDescription()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 301
    iget-object v4, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v4, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v5, 0xf00a

    invoke-virtual {v4, v5}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v1

    .line 303
    .local v1, "value":Ljava/lang/Long;
    if-nez v1, :cond_0

    .line 304
    const/4 v4, 0x0

    .line 309
    :goto_0
    return-object v4

    .line 306
    :cond_0
    const-wide/16 v4, 0x31

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 307
    .local v2, "shutterSpeed":D
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "0.###"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, "format":Ljava/text/DecimalFormat;
    sget-object v4, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v4}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sec"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getBWModeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 863
    const/16 v0, 0x203

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "On"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlackAndWhiteFilterDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 571
    const v0, 0xf02b

    invoke-super {p0, v0}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlueBalanceDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 741
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const/16 v3, 0x1018

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getIntArray(I)[I

    move-result-object v1

    .line 742
    .local v1, "values":[I
    if-nez v1, :cond_0

    .line 743
    const/4 v2, 0x0

    .line 747
    :goto_0
    return-object v2

    .line 745
    :cond_0
    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-short v0, v2

    .line 747
    .local v0, "value":S
    int-to-double v2, v0

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getBracketStepDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 350
    const v0, 0xf00f

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1/3 EV"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2/3 EV"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "1 EV"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraIdDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 816
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const/16 v2, 0x209

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getByteArray(I)[B

    move-result-object v0

    .line 817
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 818
    const/4 v1, 0x0

    .line 819
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public getCameraModelDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 532
    const v0, 0xf026

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "DiMAGE 7"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "DiMAGE 5"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "DiMAGE S304"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "DiMAGE S404"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "DiMAGE 7i"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "DiMAGE 7Hi"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "DiMAGE A1"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "DiMAGE S414"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraTypeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 803
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const/16 v2, 0x207

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, "cameratype":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 805
    const/4 v1, 0x0

    .line 810
    :goto_0
    return-object v1

    .line 807
    :cond_0
    sget-object v1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->OlympusCameraTypes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 808
    sget-object v1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->OlympusCameraTypes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 810
    goto :goto_0
.end method

.method public getColorFilterDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 564
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v2, 0xf02a

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    .line 565
    .local v0, "value":Ljava/lang/Long;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getColorMatrixDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 678
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const/16 v5, 0x1011

    invoke-virtual {v3, v5}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getIntArray(I)[I

    move-result-object v1

    .line 679
    .local v1, "obj":[I
    if-nez v1, :cond_0

    .line 688
    :goto_0
    return-object v4

    .line 682
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 683
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 684
    aget v3, v1, v0

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 685
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 686
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 688
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_3

    move-object v3, v4

    :goto_2
    move-object v4, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method public getColorModeCameraSettingDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 558
    const v0, 0xf029

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Natural Color"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Black & White"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Vivid Color"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Solarization"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "AdobeRGB"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorModeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 661
    const/16 v0, 0x101

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Natural Colour"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Black & White"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Vivid Colour"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Solarization"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "AdobeRGB"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContrastCameraSettingDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 499
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v2, 0xf021

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    .line 500
    .local v0, "value":Ljava/lang/Long;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getContrastDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 753
    const/16 v0, 0x1029

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "High"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Normal"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Low"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateDescription()Ljava/lang/String;
    .locals 10
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const-wide/16 v8, 0xff

    .line 403
    iget-object v4, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v4, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v5, 0xf016

    invoke-virtual {v4, v5}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v2

    .line 404
    .local v2, "value":Ljava/lang/Long;
    if-nez v2, :cond_0

    .line 405
    const/4 v4, 0x0

    .line 414
    :goto_0
    return-object v4

    .line 407
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long/2addr v4, v8

    long-to-int v0, v4

    .line 408
    .local v0, "day":I
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    and-long/2addr v4, v8

    long-to-int v1, v4

    .line 409
    .local v1, "month":I
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0x8

    shr-long/2addr v4, v6

    and-long/2addr v4, v8

    long-to-int v4, v4

    add-int/lit16 v3, v4, 0x7b2

    .line 411
    .local v3, "year":I
    invoke-static {v3, v1, v0}, Lcom/drew/lang/DateUtil;->isValidDate(III)Z

    move-result v4

    if-nez v4, :cond_1

    .line 412
    const-string v4, "Invalid date"

    goto :goto_0

    .line 414
    :cond_1
    const-string v4, "%04d-%02d-%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    add-int/lit8 v7, v1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getDecSwitchPositionDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 627
    const v0, 0xf033

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Exposure"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Contrast"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Saturation"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Filter"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 54
    sparse-switch p1, :sswitch_data_0

    .line 206
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 56
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getMakernoteVersionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getColorModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getImageQuality1Description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getImageQuality2Description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 64
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getSpecialModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getJpegQualityDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :sswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getMacroModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :sswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getBWModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :sswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getDigitalZoomDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :sswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFocalPlaneDiagonalDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :sswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getCameraTypeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    :sswitch_b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getCameraIdDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :sswitch_c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getOneTouchWbDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 82
    :sswitch_d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getShutterSpeedDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 84
    :sswitch_e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIsoValueDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :sswitch_f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getApertureValueDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :sswitch_10
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFlashModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :sswitch_11
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFocusRangeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    :sswitch_12
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFocusModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :sswitch_13
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getSharpnessDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :sswitch_14
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getColorMatrixDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :sswitch_15
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getWbModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :sswitch_16
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getRedBalanceDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :sswitch_17
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getBlueBalanceDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    :sswitch_18
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getContrastDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    :sswitch_19
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getPreviewImageValidDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 109
    :sswitch_1a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getExposureModeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 111
    :sswitch_1b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFlashModeCameraSettingDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 113
    :sswitch_1c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getWhiteBalanceDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 115
    :sswitch_1d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getImageSizeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 117
    :sswitch_1e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getImageQualityDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 119
    :sswitch_1f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getShootingModeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 121
    :sswitch_20
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getMeteringModeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 123
    :sswitch_21
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getApexFilmSpeedDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 125
    :sswitch_22
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getApexShutterSpeedTimeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 127
    :sswitch_23
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getApexApertureDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 129
    :sswitch_24
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getMacroModeCameraSettingDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 131
    :sswitch_25
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getDigitalZoomCameraSettingDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 133
    :sswitch_26
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getExposureCompensationDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 135
    :sswitch_27
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getBracketStepDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 138
    :sswitch_28
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIntervalLengthDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 140
    :sswitch_29
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIntervalNumberDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 142
    :sswitch_2a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFocalLengthDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 144
    :sswitch_2b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFocusDistanceDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 146
    :sswitch_2c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFlashFiredDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 148
    :sswitch_2d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getDateDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 150
    :sswitch_2e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getTimeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 152
    :sswitch_2f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getMaxApertureAtFocalLengthDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 155
    :sswitch_30
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFileNumberMemoryDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 157
    :sswitch_31
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getLastFileNumberDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 159
    :sswitch_32
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getWhiteBalanceRedDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 161
    :sswitch_33
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getWhiteBalanceGreenDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 163
    :sswitch_34
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getWhiteBalanceBlueDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 165
    :sswitch_35
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getSaturationDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 167
    :sswitch_36
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getContrastCameraSettingDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 169
    :sswitch_37
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getSharpnessCameraSettingDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 171
    :sswitch_38
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getSubjectProgramDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 173
    :sswitch_39
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFlashCompensationDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 175
    :sswitch_3a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIsoSettingDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 177
    :sswitch_3b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getCameraModelDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 179
    :sswitch_3c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIntervalModeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 181
    :sswitch_3d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFolderNameDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 183
    :sswitch_3e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getColorModeCameraSettingDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 185
    :sswitch_3f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getColorFilterDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 187
    :sswitch_40
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getBlackAndWhiteFilterDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 189
    :sswitch_41
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getInternalFlashDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 191
    :sswitch_42
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getApexBrightnessDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 193
    :sswitch_43
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getSpotFocusPointXCoordinateDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 195
    :sswitch_44
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getSpotFocusPointYCoordinateDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 197
    :sswitch_45
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getWideFocusZoneDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 199
    :sswitch_46
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFocusModeCameraSettingDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 201
    :sswitch_47
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFocusAreaDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 203
    :sswitch_48
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getDecSwitchPositionDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 54
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x101 -> :sswitch_1
        0x102 -> :sswitch_2
        0x103 -> :sswitch_3
        0x200 -> :sswitch_4
        0x201 -> :sswitch_5
        0x202 -> :sswitch_6
        0x203 -> :sswitch_7
        0x204 -> :sswitch_8
        0x205 -> :sswitch_9
        0x207 -> :sswitch_a
        0x209 -> :sswitch_b
        0x302 -> :sswitch_c
        0x1000 -> :sswitch_d
        0x1001 -> :sswitch_e
        0x1002 -> :sswitch_f
        0x1004 -> :sswitch_10
        0x100a -> :sswitch_11
        0x100b -> :sswitch_12
        0x100f -> :sswitch_13
        0x1011 -> :sswitch_14
        0x1015 -> :sswitch_15
        0x1017 -> :sswitch_16
        0x1018 -> :sswitch_17
        0x1029 -> :sswitch_18
        0x1035 -> :sswitch_19
        0xf002 -> :sswitch_1a
        0xf003 -> :sswitch_1b
        0xf004 -> :sswitch_1c
        0xf005 -> :sswitch_1d
        0xf006 -> :sswitch_1e
        0xf007 -> :sswitch_1f
        0xf008 -> :sswitch_20
        0xf009 -> :sswitch_21
        0xf00a -> :sswitch_22
        0xf00b -> :sswitch_23
        0xf00c -> :sswitch_24
        0xf00d -> :sswitch_25
        0xf00e -> :sswitch_26
        0xf00f -> :sswitch_27
        0xf011 -> :sswitch_28
        0xf012 -> :sswitch_29
        0xf013 -> :sswitch_2a
        0xf014 -> :sswitch_2b
        0xf015 -> :sswitch_2c
        0xf016 -> :sswitch_2d
        0xf017 -> :sswitch_2e
        0xf018 -> :sswitch_2f
        0xf01b -> :sswitch_30
        0xf01c -> :sswitch_31
        0xf01d -> :sswitch_32
        0xf01e -> :sswitch_33
        0xf01f -> :sswitch_34
        0xf020 -> :sswitch_35
        0xf021 -> :sswitch_36
        0xf022 -> :sswitch_37
        0xf023 -> :sswitch_38
        0xf024 -> :sswitch_39
        0xf025 -> :sswitch_3a
        0xf026 -> :sswitch_3b
        0xf027 -> :sswitch_3c
        0xf028 -> :sswitch_3d
        0xf029 -> :sswitch_3e
        0xf02a -> :sswitch_3f
        0xf02b -> :sswitch_40
        0xf02c -> :sswitch_41
        0xf02d -> :sswitch_42
        0xf02e -> :sswitch_43
        0xf02f -> :sswitch_44
        0xf030 -> :sswitch_45
        0xf031 -> :sswitch_46
        0xf032 -> :sswitch_47
        0xf033 -> :sswitch_48
    .end sparse-switch
.end method

.method public getDigitalZoomCameraSettingDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 336
    const v0, 0xf00d

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Electronic magnification"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Digital zoom 2x"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigitalZoomDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 783
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const/16 v2, 0x204

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 784
    .local v0, "value":Lcom/drew/lang/Rational;
    if-nez v0, :cond_0

    .line 785
    const/4 v1, 0x0

    .line 786
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getExposureCompensationDescription()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 342
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v3, 0xf00e

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v1

    .line 343
    .local v1, "value":Ljava/lang/Long;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "0.##"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, "format":Ljava/text/DecimalFormat;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " EV"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getExposureModeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 213
    const v0, 0xf002

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "P"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "A"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "S"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "M"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileNumberMemoryDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 451
    const v0, 0xf01b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "On"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashCompensationDescription()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 518
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v3, 0xf024

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v1

    .line 519
    .local v1, "value":Ljava/lang/Long;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "0.##"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 520
    .local v0, "format":Ljava/text/DecimalFormat;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " EV"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getFlashFiredDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 394
    const v0, 0xf015

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "No"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Yes"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashModeCameraSettingDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 219
    const v0, 0xf003

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Normal"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Red-eye reduction"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Rear flash sync"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Wireless"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashModeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 777
    const/16 v0, 0x1004

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "On"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Off"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocalLengthDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 376
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v2, 0xf013

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    .line 377
    .local v0, "value":Ljava/lang/Long;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFocalLengthDescription(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFocalPlaneDiagonalDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 792
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const/16 v3, 0x205

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v1

    .line 793
    .local v1, "value":Lcom/drew/lang/Rational;
    if-nez v1, :cond_0

    .line 794
    const/4 v2, 0x0

    .line 797
    :goto_0
    return-object v2

    .line 796
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "0.###"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 797
    .local v0, "format":Ljava/text/DecimalFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getFocusAreaDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 621
    const v0, 0xf032

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Wide Focus (Normal)"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Spot Focus"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusDistanceDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 383
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v2, 0xf014

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    .line 384
    .local v0, "value":Ljava/lang/Long;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const-string v1, "Infinity"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFocusModeCameraSettingDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 615
    const v0, 0xf031

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Auto Focus"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Manual Focus"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusModeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 765
    const/16 v0, 0x100b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Auto"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Manual"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusRangeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 771
    const/16 v0, 0x100a

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Normal"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Macro"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFolderNameDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 552
    const v0, 0xf028

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Standard Form"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Data Form"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageQuality1Description()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 650
    const/16 v0, 0x102

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Raw"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Super Fine"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Fine"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Standard"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Extra Fine"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageQuality2Description()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 639
    const/16 v0, 0x103

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Raw"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Super Fine"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Fine"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Standard"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Extra Fine"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageQualityDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 253
    const v0, 0xf006

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Raw"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Super Fine"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Fine"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Standard"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Economy"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Extra Fine"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageSizeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 247
    const v0, 0xf005

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "2560 x 1920"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1600 x 1200"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "1280 x 960"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "640 x 480"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalFlashDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 577
    const v0, 0xf02c

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Did Not Fire"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Fired"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntervalLengthDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 356
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    invoke-virtual {v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->isIntervalMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 357
    const-string v1, "N/A"

    .line 360
    :goto_0
    return-object v1

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v2, 0xf011

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    .line 360
    .local v0, "value":Ljava/lang/Long;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " min"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getIntervalModeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 546
    const v0, 0xf027

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Still Image"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Time Lapse Movie"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntervalNumberDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 366
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    invoke-virtual {v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->isIntervalMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    const-string v1, "N/A"

    .line 370
    :goto_0
    return-object v1

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v2, 0xf012

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    .line 370
    .local v0, "value":Ljava/lang/Long;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getIsoSettingDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 526
    const v0, 0xf025

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "100"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "200"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "400"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "800"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Auto"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "64"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsoValueDescription()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 837
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 838
    .local v0, "value":Lcom/drew/lang/Rational;
    if-nez v0, :cond_0

    .line 839
    const/4 v1, 0x0

    .line 841
    :goto_0
    return-object v1

    :cond_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    sub-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getJpegQualityDescription()Ljava/lang/String;
    .locals 7
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/16 v6, 0x201

    const/4 v5, 0x1

    .line 869
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const/16 v3, 0x207

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, "cameratype":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 873
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    invoke-virtual {v2, v6}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v1

    .line 874
    .local v1, "value":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 875
    const/4 v2, 0x0

    .line 918
    .end local v1    # "value":Ljava/lang/Integer;
    :goto_0
    return-object v2

    .line 877
    .restart local v1    # "value":Ljava/lang/Integer;
    :cond_0
    const-string v2, "SX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SX151"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "D4322"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 880
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 891
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 883
    :pswitch_1
    const-string v2, "Standard Quality (Low)"

    goto :goto_0

    .line 885
    :pswitch_2
    const-string v2, "High Quality (Normal)"

    goto :goto_0

    .line 887
    :pswitch_3
    const-string v2, "Super High Quality (Fine)"

    goto :goto_0

    .line 889
    :pswitch_4
    const-string v2, "RAW"

    goto :goto_0

    .line 896
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 913
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 899
    :sswitch_0
    const-string v2, "Standard Quality (Low)"

    goto :goto_0

    .line 901
    :sswitch_1
    const-string v2, "High Quality (Normal)"

    goto :goto_0

    .line 903
    :sswitch_2
    const-string v2, "Super High Quality (Fine)"

    goto :goto_0

    .line 905
    :sswitch_3
    const-string v2, "RAW"

    goto :goto_0

    .line 907
    :sswitch_4
    const-string v2, "Medium-Fine"

    goto :goto_0

    .line 909
    :sswitch_5
    const-string v2, "Small-Fine"

    goto :goto_0

    .line 911
    :sswitch_6
    const-string v2, "Uncompressed"

    goto/16 :goto_0

    .line 918
    .end local v1    # "value":Ljava/lang/Integer;
    :cond_4
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Standard Quality"

    aput-object v4, v2, v3

    const-string v3, "High Quality"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "Super High Quality"

    aput-object v4, v2, v3

    invoke-virtual {p0, v6, v5, v2}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 880
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 896
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x21 -> :sswitch_6
    .end sparse-switch
.end method

.method public getLastFileNumberDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 457
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v2, 0xf01c

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    .line 458
    .local v0, "value":Ljava/lang/Long;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const-string v1, "File Number Memory Off"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMacroModeCameraSettingDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 330
    const v0, 0xf00c

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "On"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacroModeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 857
    const/16 v0, 0x202

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Normal (no macro)"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Macro"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMakernoteVersionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 633
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxApertureAtFocalLengthDescription()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 441
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v4, 0xf017

    invoke-virtual {v3, v4}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v2

    .line 442
    .local v2, "value":Ljava/lang/Long;
    if-nez v2, :cond_0

    .line 443
    const/4 v3, 0x0

    .line 445
    :goto_0
    return-object v3

    .line 444
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 445
    .local v0, "fStop":D
    invoke-static {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFStopDescription(D)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getMeteringModeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 274
    const v0, 0xf008

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Multi-Segment"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Centre Weighted"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Spot"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOneTouchWbDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 825
    const/16 v0, 0x302

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "On"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "On (Preset)"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewImageValidDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 759
    const/16 v0, 0x1035

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "No"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Yes"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRedBalanceDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 729
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const/16 v3, 0x1017

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getIntArray(I)[I

    move-result-object v1

    .line 730
    .local v1, "values":[I
    if-nez v1, :cond_0

    .line 731
    const/4 v2, 0x0

    .line 735
    :goto_0
    return-object v2

    .line 733
    :cond_0
    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-short v0, v2

    .line 735
    .local v0, "value":S
    int-to-double v2, v0

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getSaturationDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 492
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v2, 0xf020

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    .line 493
    .local v0, "value":Ljava/lang/Long;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSharpnessCameraSettingDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 506
    const v0, 0xf022

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Hard"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Normal"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Soft"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharpnessDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 672
    const/16 v0, 0x100f

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Normal"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Hard"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Soft"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShootingModeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 259
    const v0, 0xf007

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Single"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Continuous"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Self Timer"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Bracketing"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Interval"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "UHS Continuous"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "HS Continuous"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShutterSpeedDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 831
    const/16 v0, 0x1000

    invoke-super {p0, v0}, Lcom/drew/metadata/TagDescriptor;->getShutterSpeedDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpecialModeDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 928
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    move-object v1, v2

    check-cast v1, [J

    .line 929
    .local v1, "values":[J
    if-nez v1, :cond_0

    .line 930
    const/4 v2, 0x0

    .line 990
    :goto_0
    return-object v2

    .line 931
    :cond_0
    array-length v2, v1

    if-ge v2, v4, :cond_1

    .line 932
    const-string v2, ""

    goto :goto_0

    .line 933
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 935
    .local v0, "desc":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-wide v2, v1, v2

    long-to-int v2, v2

    packed-switch v2, :pswitch_data_0

    .line 949
    const-string v2, "Unknown picture taking mode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    :goto_1
    array-length v2, v1

    if-lt v2, v5, :cond_2

    .line 954
    aget-wide v2, v1, v4

    long-to-int v2, v2

    packed-switch v2, :pswitch_data_1

    .line 967
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    aget-wide v2, v1, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 969
    const-string v2, "th in a sequence"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    :cond_2
    :goto_2
    :pswitch_0
    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_3

    .line 974
    aget-wide v2, v1, v5

    long-to-int v2, v2

    packed-switch v2, :pswitch_data_2

    .line 990
    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 937
    :pswitch_1
    const-string v2, "Normal picture taking mode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 940
    :pswitch_2
    const-string v2, "Unknown picture taking mode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 943
    :pswitch_3
    const-string v2, "Fast picture taking mode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 946
    :pswitch_4
    const-string v2, "Panorama picture taking mode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 958
    :pswitch_5
    const-string v2, " / 1st in a sequence"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 961
    :pswitch_6
    const-string v2, " / 2nd in a sequence"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 964
    :pswitch_7
    const-string v2, " / 3rd in a sequence"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 976
    :pswitch_8
    const-string v2, " / Left to right panorama direction"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 979
    :pswitch_9
    const-string v2, " / Right to left panorama direction"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 982
    :pswitch_a
    const-string v2, " / Bottom to top panorama direction"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 985
    :pswitch_b
    const-string v2, " / Top to bottom panorama direction"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 935
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 954
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 974
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public getSpotFocusPointXCoordinateDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 591
    const v0, 0xf02e

    invoke-super {p0, v0}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpotFocusPointYCoordinateDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 597
    const v0, 0xf02f

    invoke-super {p0, v0}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectProgramDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 512
    const v0, 0xf023

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "None"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Portrait"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Text"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Night Portrait"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Sunset"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Sports Action"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeDescription()Ljava/lang/String;
    .locals 10
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const-wide/16 v8, 0xff

    .line 423
    iget-object v4, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v4, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v5, 0xf017

    invoke-virtual {v4, v5}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v3

    .line 424
    .local v3, "value":Ljava/lang/Long;
    if-nez v3, :cond_0

    .line 425
    const/4 v4, 0x0

    .line 434
    :goto_0
    return-object v4

    .line 427
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0x8

    shr-long/2addr v4, v6

    and-long/2addr v4, v8

    long-to-int v0, v4

    .line 428
    .local v0, "hours":I
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    and-long/2addr v4, v8

    long-to-int v1, v4

    .line 429
    .local v1, "minutes":I
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long/2addr v4, v8

    long-to-int v2, v4

    .line 431
    .local v2, "seconds":I
    invoke-static {v0, v1, v2}, Lcom/drew/lang/DateUtil;->isValidTime(III)Z

    move-result v4

    if-nez v4, :cond_1

    .line 432
    const-string v4, "Invalid time"

    goto :goto_0

    .line 434
    :cond_1
    const-string v4, "%02d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getWbModeDescription()Ljava/lang/String;
    .locals 7
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 694
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const/16 v3, 0x1015

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getIntArray(I)[I

    move-result-object v0

    .line 695
    .local v0, "obj":[I
    if-nez v0, :cond_0

    .line 696
    const/4 v2, 0x0

    .line 723
    :goto_0
    return-object v2

    .line 698
    :cond_0
    const-string v2, "%d %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aget v4, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aget v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 700
    .local v1, "val":Ljava/lang/String;
    const-string v2, "1 0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 701
    const-string v2, "Auto"

    goto :goto_0

    .line 702
    :cond_1
    const-string v2, "1 2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 703
    const-string v2, "Auto (2)"

    goto :goto_0

    .line 704
    :cond_2
    const-string v2, "1 4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 705
    const-string v2, "Auto (4)"

    goto :goto_0

    .line 706
    :cond_3
    const-string v2, "2 2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 707
    const-string v2, "3000 Kelvin"

    goto :goto_0

    .line 708
    :cond_4
    const-string v2, "2 3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 709
    const-string v2, "3700 Kelvin"

    goto :goto_0

    .line 710
    :cond_5
    const-string v2, "2 4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 711
    const-string v2, "4000 Kelvin"

    goto :goto_0

    .line 712
    :cond_6
    const-string v2, "2 5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 713
    const-string v2, "4500 Kelvin"

    goto :goto_0

    .line 714
    :cond_7
    const-string v2, "2 6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 715
    const-string v2, "5500 Kelvin"

    goto :goto_0

    .line 716
    :cond_8
    const-string v2, "2 7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 717
    const-string v2, "6500 Kelvin"

    goto :goto_0

    .line 718
    :cond_9
    const-string v2, "2 8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 719
    const-string v2, "7500 Kelvin"

    goto/16 :goto_0

    .line 720
    :cond_a
    const-string v2, "3 0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 721
    const-string v2, "One-touch"

    goto/16 :goto_0

    .line 723
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getWhiteBalanceBlueDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 484
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v3, 0xf01f

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v1

    .line 485
    .local v1, "value":Ljava/lang/Long;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "0.##"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 486
    .local v0, "format":Ljava/text/DecimalFormat;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getWhiteBalanceDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 226
    const v0, 0xf004

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Auto"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Daylight"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Cloudy"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Tungsten"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v3, "Custom"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string v3, "Fluorescent"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Fluorescent 2"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    const-string v3, "Custom 2"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "Custom 3"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteBalanceGreenDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 476
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v3, 0xf01e

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v1

    .line 477
    .local v1, "value":Ljava/lang/Long;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "0.##"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 478
    .local v0, "format":Ljava/text/DecimalFormat;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getWhiteBalanceRedDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 468
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v3, 0xf01d

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v1

    .line 469
    .local v1, "value":Ljava/lang/Long;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "0.##"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 470
    .local v0, "format":Ljava/text/DecimalFormat;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getWideFocusZoneDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 603
    const v0, 0xf030

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "No Zone or AF Failed"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Center Zone (Horizontal Orientation)"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Center Zone (Vertical Orientation)"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Left Zone"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Right Zone"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

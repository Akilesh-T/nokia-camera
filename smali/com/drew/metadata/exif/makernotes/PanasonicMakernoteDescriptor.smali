.class public Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "PanasonicMakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;",
        ">;"
    }
.end annotation


# static fields
.field private static final _sceneModes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 737
    const/16 v0, 0x33

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Normal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Portrait"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Scenery"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Sports"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Night Portrait"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Program"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Aperture Priority"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Shutter Priority"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Macro"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Spot"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Manual"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Movie Preview"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Panning"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Simple"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Color Effects"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Self Portrait"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Economy"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Fireworks"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Party"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Snow"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Night Scenery"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Food"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Baby"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Soft Skin"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Candlelight"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Starry Night"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "High Sensitivity"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Panorama Assist"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Underwater"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Beach"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Aerial Photo"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Sunset"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Pet"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Intelligent ISO"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Clipboard"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "High Speed Continuous Shooting"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Intelligent Auto"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    aput-object v3, v0, v1

    const/16 v1, 0x26

    const-string v2, "Multi-aspect"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    aput-object v3, v0, v1

    const/16 v1, 0x28

    const-string v2, "Transform"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Flash Burst"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Pin Hole"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Film Grain"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "My Color"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Photo Frame"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    aput-object v3, v0, v1

    const/16 v1, 0x30

    aput-object v3, v0, v1

    const/16 v1, 0x31

    aput-object v3, v0, v1

    const/16 v1, 0x32

    const-string v2, "HDR"

    aput-object v2, v0, v1

    sput-object v0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_sceneModes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 55
    return-void
.end method

.method private buildFacesDescription([Lcom/drew/metadata/Face;)Ljava/lang/String;
    .locals 5
    .param p1, "faces"    # [Lcom/drew/metadata/Face;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 725
    if-nez p1, :cond_1

    .line 733
    :cond_0
    :goto_0
    return-object v2

    .line 728
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 731
    const-string v3, "Face "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/drew/metadata/Face;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 733
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getTransformDescription(I)Ljava/lang/String;
    .locals 9
    .param p1, "tag"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 274
    iget-object v5, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v5, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    invoke-virtual {v5, p1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getByteArray(I)[B

    move-result-object v4

    .line 275
    .local v4, "values":[B
    if-nez v4, :cond_0

    move-object v5, v6

    .line 298
    :goto_0
    return-object v5

    .line 278
    :cond_0
    new-instance v1, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {v1, v4}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    .line 282
    .local v1, "reader":Lcom/drew/lang/RandomAccessReader;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v5}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v2

    .line 283
    .local v2, "val1":I
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v3

    .line 285
    .local v3, "val2":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    if-ne v3, v7, :cond_1

    .line 286
    const-string v5, "Slim Low"

    goto :goto_0

    .line 287
    :cond_1
    const/4 v5, -0x3

    if-ne v2, v5, :cond_2

    if-ne v3, v8, :cond_2

    .line 288
    const-string v5, "Slim High"

    goto :goto_0

    .line 289
    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    .line 290
    const-string v5, "Off"

    goto :goto_0

    .line 291
    :cond_3
    if-ne v2, v7, :cond_4

    if-ne v3, v7, :cond_4

    .line 292
    const-string v5, "Stretch Low"

    goto :goto_0

    .line 293
    :cond_4
    const/4 v5, 0x3

    if-ne v2, v5, :cond_5

    if-ne v3, v8, :cond_5

    .line 294
    const-string v5, "Stretch High"

    goto :goto_0

    .line 296
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 297
    .end local v2    # "val1":I
    .end local v3    # "val2":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v5, v6

    .line 298
    goto :goto_0
.end method

.method private static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 319
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getAccelerometerXDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 435
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const/16 v2, 0x8d

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 436
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 437
    const/4 v1, 0x0

    .line 440
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getAccelerometerYDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 446
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const/16 v2, 0x8e

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 447
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 448
    const/4 v1, 0x0

    .line 451
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getAccelerometerZDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 424
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const/16 v2, 0x8c

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 425
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 426
    const/4 v1, 0x0

    .line 429
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getAdvancedSceneModeDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 576
    const/16 v0, 0x3d

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Normal"

    aput-object v3, v1, v2

    const-string v2, "Outdoor/Illuminations/Flower/HDR Art"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "Indoor/Architecture/Objects/HDR B&W"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Creative"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Auto"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const-string v3, "Expressive"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Retro"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Pure"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Elegant"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    aput-object v5, v1, v2

    const/16 v2, 0xb

    const-string v3, "Monochrome"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "Dynamic Art"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "Silhouette"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAfAreaModeDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 813
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getIntArray(I)[I

    move-result-object v0

    .line 814
    .local v0, "value":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 815
    :cond_0
    const/4 v1, 0x0

    .line 844
    :goto_0
    return-object v1

    .line 816
    :cond_1
    aget v1, v0, v4

    sparse-switch v1, :sswitch_data_0

    .line 844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 818
    :sswitch_0
    aget v1, v0, v3

    sparse-switch v1, :sswitch_data_1

    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 819
    :sswitch_1
    const-string v1, "Spot Mode On"

    goto :goto_0

    .line 820
    :sswitch_2
    const-string v1, "Spot Mode Off"

    goto :goto_0

    .line 824
    :sswitch_3
    aget v1, v0, v3

    packed-switch v1, :pswitch_data_0

    .line 827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 825
    :pswitch_0
    const-string v1, "Spot Focusing"

    goto/16 :goto_0

    .line 826
    :pswitch_1
    const-string v1, "5-area"

    goto/16 :goto_0

    .line 830
    :sswitch_4
    aget v1, v0, v3

    sparse-switch v1, :sswitch_data_2

    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 831
    :sswitch_5
    const-string v1, "1-area"

    goto/16 :goto_0

    .line 832
    :sswitch_6
    const-string v1, "1-area (high speed)"

    goto/16 :goto_0

    .line 836
    :sswitch_7
    aget v1, v0, v3

    packed-switch v1, :pswitch_data_1

    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 837
    :pswitch_2
    const-string v1, "Auto or Face Detect"

    goto/16 :goto_0

    .line 838
    :pswitch_3
    const-string v1, "3-area (left)"

    goto/16 :goto_0

    .line 839
    :pswitch_4
    const-string v1, "3-area (center)"

    goto/16 :goto_0

    .line 840
    :pswitch_5
    const-string v1, "3-area (right)"

    goto/16 :goto_0

    .line 843
    :sswitch_8
    const-string v1, "Face Detect"

    goto/16 :goto_0

    .line 816
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch

    .line 818
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 824
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 830
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_5
        0x10 -> :sswitch_6
    .end sparse-switch

    .line 836
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getAfAssistLampDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 681
    const/16 v0, 0x31

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Fired"

    aput-object v3, v1, v2

    const-string v2, "Enabled but not used"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "Disabled but required"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Disabled and not required"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 256
    const/16 v0, 0x20

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const-string v2, "On"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBabyAge1Description()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 918
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const v2, 0x8010

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getAge(I)Lcom/drew/metadata/Age;

    move-result-object v0

    .line 919
    .local v0, "age":Lcom/drew/metadata/Age;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/drew/metadata/Age;->toFriendlyString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getBabyAgeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 911
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getAge(I)Lcom/drew/metadata/Age;

    move-result-object v0

    .line 912
    .local v0, "age":Lcom/drew/metadata/Age;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/drew/metadata/Age;->toFriendlyString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getBabyNameDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 544
    const/16 v0, 0x66

    sget-object v1, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getStringFromBytes(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBracketSettingsDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 355
    const/16 v0, 0x45

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "No Bracket"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "3 Images, Sequence 0/-/+"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "3 Images, Sequence -/0/+"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "5 Images, Sequence 0/-/+"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "5 Images, Sequence -/0/+"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "7 Images, Sequence 0/-/+"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "7 Images, Sequence -/0/+"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBurstModeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 621
    const/16 v0, 0x2a

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "On"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Indefinite"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Unlimited"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraOrientationDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 457
    const/16 v0, 0x8f

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Normal"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Rotate CW"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Rotate 180"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Rotate CCW"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Tilt Upwards"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Tile Downwards"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCityDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 337
    const/16 v0, 0x6d

    sget-object v1, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getStringFromBytes(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClearRetouchDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 402
    const/16 v0, 0x7c

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "On"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorEffectDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 604
    const/16 v0, 0x28

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const-string v2, "Warm"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "Cool"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Black & White"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Sepia"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorModeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 689
    const/16 v0, 0x32

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Normal"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Natural"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Vivid"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContrastDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 563
    const/16 v0, 0x39

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Normal"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContrastModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 629
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 630
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 631
    const/4 v1, 0x0

    .line 642
    :goto_0
    return-object v1

    .line 632
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 642
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

    .line 633
    :sswitch_0
    const-string v1, "Normal"

    goto :goto_0

    .line 634
    :sswitch_1
    const-string v1, "Low"

    goto :goto_0

    .line 635
    :sswitch_2
    const-string v1, "High"

    goto :goto_0

    .line 636
    :sswitch_3
    const-string v1, "Medium Low"

    goto :goto_0

    .line 637
    :sswitch_4
    const-string v1, "Medium High"

    goto :goto_0

    .line 638
    :sswitch_5
    const-string v1, "Low"

    goto :goto_0

    .line 639
    :sswitch_6
    const-string v1, "Normal"

    goto :goto_0

    .line 640
    :sswitch_7
    const-string v1, "High"

    goto :goto_0

    .line 632
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x100 -> :sswitch_5
        0x110 -> :sswitch_6
        0x120 -> :sswitch_7
    .end sparse-switch
.end method

.method public getConversionLensDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 705
    const/16 v0, 0x35

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const-string v2, "Wide"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "Telephoto"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Macro"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountryDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 325
    const/16 v0, 0x69

    sget-object v1, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getStringFromBytes(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 61
    sparse-switch p1, :sswitch_data_0

    .line 202
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 63
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getQualityModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getVersionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getWhiteBalanceDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getFocusModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getAfAreaModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getImageStabilizationDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :sswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getMacroModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :sswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getRecordModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :sswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getAudioDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    :sswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getUnknownDataDumpDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    :sswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getColorEffectDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 85
    :sswitch_b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getUptimeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 87
    :sswitch_c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getBurstModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :sswitch_d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getContrastModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :sswitch_e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getNoiseReductionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :sswitch_f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getSelfTimerDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :sswitch_10
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getRotationDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :sswitch_11
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getAfAssistLampDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    :sswitch_12
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getColorModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :sswitch_13
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getOpticalZoomModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    :sswitch_14
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getConversionLensDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :sswitch_15
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getContrastDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :sswitch_16
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getWorldTimeLocationDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :sswitch_17
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getAdvancedSceneModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :sswitch_18
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getDetectedFacesDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :sswitch_19
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getTransformDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 115
    :sswitch_1a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getTransform1Description()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 117
    :sswitch_1b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIntelligentExposureDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 119
    :sswitch_1c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getFlashWarningDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 121
    :sswitch_1d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getCountryDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 123
    :sswitch_1e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getStateDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 125
    :sswitch_1f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getCityDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 127
    :sswitch_20
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getLandmarkDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 129
    :sswitch_21
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIntelligentResolutionDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 131
    :sswitch_22
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getRecognizedFacesDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 133
    :sswitch_23
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getSceneModeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 135
    :sswitch_24
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getFlashFiredDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 137
    :sswitch_25
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getTextStampDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 139
    :sswitch_26
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getTextStamp1Description()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 141
    :sswitch_27
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getTextStamp2Description()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 143
    :sswitch_28
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getTextStamp3Description()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 145
    :sswitch_29
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getMakernoteVersionDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 147
    :sswitch_2a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getExifVersionDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 149
    :sswitch_2b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getInternalSerialNumberDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 151
    :sswitch_2c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getTitleDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 153
    :sswitch_2d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getBracketSettingsDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 155
    :sswitch_2e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getFlashCurtainDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 157
    :sswitch_2f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getLongExposureNoiseReductionDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 159
    :sswitch_30
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getBabyNameDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 161
    :sswitch_31
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getLocationDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 164
    :sswitch_32
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getLensFirmwareVersionDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 166
    :sswitch_33
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIntelligentDRangeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 168
    :sswitch_34
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getClearRetouchDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 170
    :sswitch_35
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getPhotoStyleDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 172
    :sswitch_36
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getShadingCompensationDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 175
    :sswitch_37
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getAccelerometerZDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 177
    :sswitch_38
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getAccelerometerXDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 179
    :sswitch_39
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getAccelerometerYDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 181
    :sswitch_3a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getCameraOrientationDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 183
    :sswitch_3b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getRollAngleDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 185
    :sswitch_3c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getPitchAngleDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 187
    :sswitch_3d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getSweepPanoramaDirectionDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 189
    :sswitch_3e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getTimerRecordingDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 191
    :sswitch_3f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getHDRDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 193
    :sswitch_40
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getShutterTypeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 195
    :sswitch_41
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getTouchAeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 198
    :sswitch_42
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getBabyAgeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 200
    :sswitch_43
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getBabyAge1Description()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 61
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x7 -> :sswitch_3
        0xf -> :sswitch_4
        0x1a -> :sswitch_5
        0x1c -> :sswitch_6
        0x1f -> :sswitch_7
        0x20 -> :sswitch_8
        0x21 -> :sswitch_9
        0x25 -> :sswitch_2b
        0x26 -> :sswitch_2a
        0x28 -> :sswitch_a
        0x29 -> :sswitch_b
        0x2a -> :sswitch_c
        0x2c -> :sswitch_d
        0x2d -> :sswitch_e
        0x2e -> :sswitch_f
        0x30 -> :sswitch_10
        0x31 -> :sswitch_11
        0x32 -> :sswitch_12
        0x33 -> :sswitch_42
        0x34 -> :sswitch_13
        0x35 -> :sswitch_14
        0x39 -> :sswitch_15
        0x3a -> :sswitch_16
        0x3b -> :sswitch_25
        0x3d -> :sswitch_17
        0x3e -> :sswitch_26
        0x45 -> :sswitch_2d
        0x48 -> :sswitch_2e
        0x49 -> :sswitch_2f
        0x4e -> :sswitch_18
        0x59 -> :sswitch_19
        0x5d -> :sswitch_1b
        0x60 -> :sswitch_32
        0x61 -> :sswitch_22
        0x62 -> :sswitch_1c
        0x65 -> :sswitch_2c
        0x66 -> :sswitch_30
        0x67 -> :sswitch_31
        0x69 -> :sswitch_1d
        0x6b -> :sswitch_1e
        0x6d -> :sswitch_1f
        0x6f -> :sswitch_20
        0x70 -> :sswitch_21
        0x79 -> :sswitch_33
        0x7c -> :sswitch_34
        0x89 -> :sswitch_35
        0x8a -> :sswitch_36
        0x8c -> :sswitch_37
        0x8d -> :sswitch_38
        0x8e -> :sswitch_39
        0x8f -> :sswitch_3a
        0x90 -> :sswitch_3b
        0x91 -> :sswitch_3c
        0x93 -> :sswitch_3d
        0x96 -> :sswitch_3e
        0x9e -> :sswitch_3f
        0x9f -> :sswitch_40
        0xab -> :sswitch_41
        0x8000 -> :sswitch_29
        0x8001 -> :sswitch_23
        0x8007 -> :sswitch_24
        0x8008 -> :sswitch_27
        0x8009 -> :sswitch_28
        0x8010 -> :sswitch_43
        0x8012 -> :sswitch_1a
    .end sparse-switch
.end method

.method public getDetectedFacesDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 713
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    invoke-virtual {v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getDetectedFaces()[Lcom/drew/metadata/Face;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->buildFacesDescription([Lcom/drew/metadata/Face;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExifVersionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 879
    const/16 v0, 0x26

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashCurtainDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 363
    const/16 v0, 0x48

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "n/a"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1st"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "2nd"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashFiredDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 239
    const v0, 0x8007

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const-string v2, "On"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashWarningDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 312
    const/16 v0, 0x62

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "No"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Yes (Flash required but disabled)"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusModeDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 806
    const/4 v0, 0x7

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Auto"

    aput-object v3, v1, v2

    const-string v2, "Manual"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Auto, Focus Button"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Auto, Continuous"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHDRDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 502
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const/16 v2, 0x9e

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 503
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 504
    const/4 v1, 0x0

    .line 523
    :goto_0
    return-object v1

    .line 506
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 523
    const-string v1, "Unknown (%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 509
    :sswitch_0
    const-string v1, "Off"

    goto :goto_0

    .line 511
    :sswitch_1
    const-string v1, "1 EV"

    goto :goto_0

    .line 513
    :sswitch_2
    const-string v1, "2 EV"

    goto :goto_0

    .line 515
    :sswitch_3
    const-string v1, "3 EV"

    goto :goto_0

    .line 517
    :sswitch_4
    const-string v1, "1 EV (Auto)"

    goto :goto_0

    .line 519
    :sswitch_5
    const-string v1, "2 EV (Auto)"

    goto :goto_0

    .line 521
    :sswitch_6
    const-string v1, "3 EV (Auto)"

    goto :goto_0

    .line 506
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_3
        0x8064 -> :sswitch_4
        0x80c8 -> :sswitch_5
        0x812c -> :sswitch_6
    .end sparse-switch
.end method

.method public getImageStabilizationDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 245
    const/16 v0, 0x1a

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "On, Mode 1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Off"

    aput-object v3, v1, v2

    const-string v2, "On, Mode 2"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntelligentDRangeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 395
    const/16 v0, 0x79

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Low"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Standard"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "High"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntelligentExposureDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 305
    const/16 v0, 0x5d

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Low"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Standard"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "High"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntelligentResolutionDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 556
    const/16 v0, 0x70

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Auto"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "On"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalSerialNumberDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 885
    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->get7BitStringFromBytes(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLandmarkDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 343
    const/16 v0, 0x6f

    sget-object v1, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getStringFromBytes(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLensFirmwareVersionDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 378
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const/16 v4, 0x60

    invoke-virtual {v3, v4}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getByteArray(I)[B

    move-result-object v0

    .line 379
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 380
    const/4 v3, 0x0

    .line 388
    :goto_0
    return-object v3

    .line 382
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 384
    aget-byte v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 386
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 388
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getLocationDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 550
    const/16 v0, 0x67

    sget-object v1, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getStringFromBytes(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongExposureNoiseReductionDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 370
    const/16 v0, 0x49

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const-string v2, "On"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacroModeDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 233
    const/16 v0, 0x1c

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const-string v2, "On"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMakernoteVersionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 873
    const v0, 0x8000

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoiseReductionDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 649
    const/16 v0, 0x2d

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Standard (0)"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Low (-1)"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "High (+1)"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Lowest (-2)"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Highest (+2)"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpticalZoomModeDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 697
    const/16 v0, 0x34

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Standard"

    aput-object v3, v1, v2

    const-string v2, "Extended"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoStyleDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 410
    const/16 v0, 0x89

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Auto"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Standard or Custom"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Vivid"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Natural"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Monochrome"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Scenery"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Portrait"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPitchAngleDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 476
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const/16 v3, 0x91

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v1

    .line 477
    .local v1, "value":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 478
    const/4 v2, 0x0

    .line 482
    :goto_0
    return-object v2

    .line 480
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "0.#"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 482
    .local v0, "format":Ljava/text/DecimalFormat;
    invoke-virtual {v1}, Ljava/lang/Integer;->shortValue()S

    move-result v2

    neg-int v2, v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getQualityModeDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 851
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "High"

    aput-object v2, v0, v1

    const-string v1, "Normal"

    aput-object v1, v0, v4

    aput-object v3, v0, v5

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v2, "Very High"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Raw"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v2, "Motion Picture"

    aput-object v2, v0, v1

    invoke-virtual {p0, v4, v5, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecognizedFacesDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 719
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    invoke-virtual {v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getRecognizedFaces()[Lcom/drew/metadata/Face;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->buildFacesDescription([Lcom/drew/metadata/Face;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 794
    const/16 v0, 0x1f

    const/4 v1, 0x1

    sget-object v2, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_sceneModes:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRollAngleDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 464
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const/16 v3, 0x90

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v1

    .line 465
    .local v1, "value":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 466
    const/4 v2, 0x0

    .line 470
    :goto_0
    return-object v2

    .line 468
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "0.#"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 470
    .local v0, "format":Ljava/text/DecimalFormat;
    invoke-virtual {v1}, Ljava/lang/Integer;->shortValue()S

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getRotationDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 665
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 666
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 667
    const/4 v1, 0x0

    .line 674
    :goto_0
    return-object v1

    .line 668
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 674
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

    .line 669
    :pswitch_1
    const-string v1, "Horizontal"

    goto :goto_0

    .line 670
    :pswitch_2
    const-string v1, "Rotate 180"

    goto :goto_0

    .line 671
    :pswitch_3
    const-string v1, "Rotate 90 CW"

    goto :goto_0

    .line 672
    :pswitch_4
    const-string v1, "Rotate 270 CW"

    goto :goto_0

    .line 668
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getSceneModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 800
    const v0, 0x8001

    const/4 v1, 0x1

    sget-object v2, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_sceneModes:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelfTimerDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 657
    const/16 v0, 0x2e

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const-string v2, "10 s"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "2 s"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShadingCompensationDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 417
    const/16 v0, 0x8a

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "On"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShutterTypeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 530
    const/16 v0, 0x9f

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Mechanical"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Electronic"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Hybrid"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStateDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 331
    const/16 v0, 0x6b

    sget-object v1, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getStringFromBytes(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSweepPanoramaDirectionDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 488
    const/16 v0, 0x93

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Left to Right"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Right to Left"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Top to Bottom"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Bottom to Top"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextStamp1Description()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 215
    const/16 v0, 0x3e

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const-string v2, "On"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextStamp2Description()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 221
    const v0, 0x8008

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const-string v2, "On"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextStamp3Description()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 227
    const v0, 0x8009

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const-string v2, "On"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextStampDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 209
    const/16 v0, 0x3b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const-string v2, "On"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimerRecordingDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 495
    const/16 v0, 0x96

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Time Lapse"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Stop-motion Animation"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 349
    const/16 v0, 0x65

    sget-object v1, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getStringFromBytes(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTouchAeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 537
    const/16 v0, 0xab

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "On"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransform1Description()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 268
    const v0, 0x8012

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getTransformDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransformDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 262
    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getTransformDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnknownDataDumpDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 598
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getByteLengthDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUptimeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 612
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 613
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 614
    const/4 v1, 0x0

    .line 615
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getVersionDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x2

    .line 867
    invoke-virtual {p0, v0, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteBalanceDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 891
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Auto"

    aput-object v2, v0, v1

    const-string v1, "Daylight"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "Cloudy"

    aput-object v2, v0, v1

    const-string v1, "Incandescent"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "Manual"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v2, "Flash"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v2, "Black & White"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Manual"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Shade"

    aput-object v2, v0, v1

    invoke-virtual {p0, v5, v4, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWorldTimeLocationDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 569
    const/16 v0, 0x3a

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Home"

    aput-object v3, v1, v2

    const-string v2, "Destination"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

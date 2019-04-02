.class public Lcom/drew/metadata/exif/ExifTiffHandler;
.super Lcom/drew/metadata/tiff/DirectoryTiffHandler;
.source "ExifTiffHandler.java"


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V
    .locals 1
    .param p1, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "parentDirectory"    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/drew/metadata/tiff/DirectoryTiffHandler;-><init>(Lcom/drew/metadata/Metadata;)V

    .line 60
    if-eqz p2, :cond_0

    .line 61
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p2}, Lcom/drew/metadata/Directory;->setParent(Lcom/drew/metadata/Directory;)V

    .line 62
    :cond_0
    return-void
.end method

.method private static HandlePrintIM(Lcom/drew/metadata/Directory;I)Ljava/lang/Boolean;
    .locals 2
    .param p0, "directory"    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "tagId"    # I

    .prologue
    const/4 v1, 0x1

    .line 587
    const v0, 0xc4a5

    if-ne p1, v0, :cond_0

    .line 588
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 605
    :goto_0
    return-object v0

    .line 590
    :cond_0
    const/16 v0, 0xe00

    if-ne p1, v0, :cond_2

    .line 593
    instance-of v0, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/drew/metadata/exif/makernotes/KyoceraMakernoteDirectory;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDirectory;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/drew/metadata/exif/makernotes/RicohMakernoteDirectory;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDirectory;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    if-eqz v0, :cond_2

    .line 602
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 605
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static ProcessBinary(Lcom/drew/metadata/Directory;ILcom/drew/lang/RandomAccessReader;ILjava/lang/Boolean;I)V
    .locals 5
    .param p0, "directory"    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "tagValueOffset"    # I
    .param p2, "reader"    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "byteCount"    # I
    .param p4, "issigned"    # Ljava/lang/Boolean;
    .param p5, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x2

    .line 333
    .local v0, "byteSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_6

    .line 335
    invoke-virtual {p0, v1}, Lcom/drew/metadata/Directory;->hasTagName(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 338
    add-int/lit8 v4, p3, -0x1

    if-ge v1, v4, :cond_2

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Lcom/drew/metadata/Directory;->hasTagName(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 340
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 341
    mul-int v4, v1, v0

    add-int/2addr v4, p1

    invoke-virtual {p2, v4}, Lcom/drew/lang/RandomAccessReader;->getInt16(I)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    .line 333
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    :cond_1
    mul-int v4, v1, v0

    add-int/2addr v4, p1

    invoke-virtual {p2, v4}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    goto :goto_1

    .line 348
    :cond_2
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 350
    new-array v3, p5, [S

    .line 351
    .local v3, "val":[S
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 352
    add-int v4, v1, v2

    mul-int/2addr v4, v0

    add-int/2addr v4, p1

    invoke-virtual {p2, v4}, Lcom/drew/lang/RandomAccessReader;->getInt16(I)S

    move-result v4

    aput-short v4, v3, v2

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 353
    :cond_3
    invoke-virtual {p0, v1, v3}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    .line 363
    .end local v3    # "val":[S
    :goto_3
    add-int/lit8 v4, p5, -0x1

    add-int/2addr v1, v4

    goto :goto_1

    .line 357
    .end local v2    # "j":I
    :cond_4
    new-array v3, p5, [I

    .line 358
    .local v3, "val":[I
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_4
    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 359
    add-int v4, v1, v2

    mul-int/2addr v4, v0

    add-int/2addr v4, p1

    invoke-virtual {p2, v4}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v4

    aput v4, v3, v2

    .line 358
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 360
    :cond_5
    invoke-virtual {p0, v1, v3}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    goto :goto_3

    .line 367
    .end local v2    # "j":I
    .end local v3    # "val":[I
    :cond_6
    return-void
.end method

.method private static ProcessPrintIM(Lcom/drew/metadata/exif/PrintIMDirectory;ILcom/drew/lang/RandomAccessReader;I)V
    .locals 11
    .param p0, "directory"    # Lcom/drew/metadata/exif/PrintIMDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "tagValueOffset"    # I
    .param p2, "reader"    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xc

    const/4 v9, 0x0

    .line 618
    const/4 v4, 0x0

    .line 620
    .local v4, "resetByteOrder":Ljava/lang/Boolean;
    if-nez p3, :cond_1

    .line 622
    const-string v8, "Empty PrintIM data"

    invoke-virtual {p0, v8}, Lcom/drew/metadata/exif/PrintIMDirectory;->addError(Ljava/lang/String;)V

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    const/16 v8, 0xf

    if-gt p3, v8, :cond_2

    .line 628
    const-string v8, "Bad PrintIM data"

    invoke-virtual {p0, v8}, Lcom/drew/metadata/exif/PrintIMDirectory;->addError(Ljava/lang/String;)V

    goto :goto_0

    .line 632
    :cond_2
    sget-object v8, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1, v10, v8}, Lcom/drew/lang/RandomAccessReader;->getString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "header":Ljava/lang/String;
    const-string v8, "PrintIM"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 636
    const-string v8, "Invalid PrintIM header"

    invoke-virtual {p0, v8}, Lcom/drew/metadata/exif/PrintIMDirectory;->addError(Ljava/lang/String;)V

    goto :goto_0

    .line 641
    :cond_3
    add-int/lit8 v8, p1, 0xe

    invoke-virtual {p2, v8}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v2

    .line 642
    .local v2, "num":I
    mul-int/lit8 v8, v2, 0x6

    add-int/lit8 v8, v8, 0x10

    if-ge p3, v8, :cond_5

    .line 645
    invoke-virtual {p2}, Lcom/drew/lang/RandomAccessReader;->isMotorolaByteOrder()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 646
    invoke-virtual {p2}, Lcom/drew/lang/RandomAccessReader;->isMotorolaByteOrder()Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {p2, v8}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    .line 647
    add-int/lit8 v8, p1, 0xe

    invoke-virtual {p2, v8}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v2

    .line 648
    mul-int/lit8 v8, v2, 0x6

    add-int/lit8 v8, v8, 0x10

    if-ge p3, v8, :cond_5

    .line 650
    const-string v8, "Bad PrintIM size"

    invoke-virtual {p0, v8}, Lcom/drew/metadata/exif/PrintIMDirectory;->addError(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v8, v9

    .line 646
    goto :goto_1

    .line 655
    :cond_5
    const/16 v8, 0x8

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v9, v8}, Lcom/drew/metadata/exif/PrintIMDirectory;->setObject(ILjava/lang/Object;)V

    .line 657
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_2
    if-ge v1, v2, :cond_6

    .line 659
    add-int/lit8 v8, p1, 0x10

    mul-int/lit8 v9, v1, 0x6

    add-int v3, v8, v9

    .line 660
    .local v3, "pos":I
    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v5

    .line 661
    .local v5, "tag":I
    add-int/lit8 v8, v3, 0x2

    invoke-virtual {p2, v8}, Lcom/drew/lang/RandomAccessReader;->getUInt32(I)J

    move-result-wide v6

    .line 663
    .local v6, "val":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lcom/drew/metadata/exif/PrintIMDirectory;->setObject(ILjava/lang/Object;)V

    .line 657
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 666
    .end local v3    # "pos":I
    .end local v5    # "tag":I
    .end local v6    # "val":J
    :cond_6
    if-eqz v4, :cond_0

    .line 667
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {p2, v8}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    goto :goto_0
.end method

.method private static processKodakMakernote(Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;ILcom/drew/lang/RandomAccessReader;)V
    .locals 6
    .param p0, "directory"    # Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "tagValueOffset"    # I
    .param p2, "reader"    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 673
    add-int/lit8 v0, p1, 0x8

    .line 675
    .local v0, "dataOffset":I
    const/4 v2, 0x0

    const/16 v3, 0x8

    :try_start_0
    sget-object v4, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0, v3, v4}, Lcom/drew/lang/RandomAccessReader;->getStringValue(IILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setStringValue(ILcom/drew/metadata/StringValue;)V

    .line 676
    const/16 v2, 0x9

    add-int/lit8 v3, v0, 0x9

    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    .line 677
    const/16 v2, 0xa

    add-int/lit8 v3, v0, 0xa

    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    .line 678
    const/16 v2, 0xc

    add-int/lit8 v3, v0, 0xc

    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    .line 679
    const/16 v2, 0xe

    add-int/lit8 v3, v0, 0xe

    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    .line 680
    const/16 v2, 0x10

    add-int/lit8 v3, v0, 0x10

    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    .line 681
    const/16 v2, 0x12

    add-int/lit8 v3, v0, 0x12

    const/4 v4, 0x2

    invoke-virtual {p2, v3, v4}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setByteArray(I[B)V

    .line 682
    const/16 v2, 0x14

    add-int/lit8 v3, v0, 0x14

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setByteArray(I[B)V

    .line 683
    const/16 v2, 0x18

    add-int/lit8 v3, v0, 0x18

    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    .line 684
    const/16 v2, 0x1b

    add-int/lit8 v3, v0, 0x1b

    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    .line 685
    const/16 v2, 0x1c

    add-int/lit8 v3, v0, 0x1c

    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    .line 686
    const/16 v2, 0x1d

    add-int/lit8 v3, v0, 0x1d

    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    .line 687
    const/16 v2, 0x1e

    add-int/lit8 v3, v0, 0x1e

    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    .line 688
    const/16 v2, 0x20

    add-int/lit8 v3, v0, 0x20

    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt32(I)J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setLong(IJ)V

    .line 689
    const/16 v2, 0x24

    add-int/lit8 v3, v0, 0x24

    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getInt16(I)S

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    .line 690
    const/16 v2, 0x38

    add-int/lit8 v3, v0, 0x38

    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    .line 691
    const/16 v2, 0x40

    add-int/lit8 v3, v0, 0x40

    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    .line 692
    const/16 v2, 0x5c

    add-int/lit8 v3, v0, 0x5c

    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    .line 693
    const/16 v2, 0x5d

    add-int/lit8 v3, v0, 0x5d

    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    .line 694
    const/16 v2, 0x5e

    add-int/lit8 v3, v0, 0x5e

    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    .line 695
    const/16 v2, 0x60

    add-int/lit8 v3, v0, 0x60

    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    .line 696
    const/16 v2, 0x62

    add-int/lit8 v3, v0, 0x62

    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    .line 697
    const/16 v2, 0x64

    add-int/lit8 v3, v0, 0x64

    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    .line 698
    const/16 v2, 0x66

    add-int/lit8 v3, v0, 0x66

    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    .line 699
    const/16 v2, 0x68

    add-int/lit8 v3, v0, 0x68

    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    .line 700
    const/16 v2, 0x6b

    add-int/lit8 v3, v0, 0x6b

    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getInt8(I)B

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    :goto_0
    return-void

    .line 701
    :catch_0
    move-exception v1

    .line 702
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error processing Kodak makernote data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->addError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processMakernote(ILjava/util/Set;ILcom/drew/lang/RandomAccessReader;)Z
    .locals 24
    .param p1, "makernoteOffset"    # I
    .param p2    # Ljava/util/Set;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "tiffHeaderOffset"    # I
    .param p4, "reader"    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/drew/lang/RandomAccessReader;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    .local p2, "processedIfdOffsets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    move-object/from16 v21, v0

    const-class v22, Lcom/drew/metadata/exif/ExifIFD0Directory;

    invoke-virtual/range {v21 .. v22}, Lcom/drew/metadata/Metadata;->getFirstDirectoryOfType(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v18

    .line 377
    .local v18, "ifd0Directory":Lcom/drew/metadata/Directory;
    if-nez v18, :cond_2

    const/4 v6, 0x0

    .line 379
    .local v6, "cameraMake":Ljava/lang/String;
    :goto_0
    const/16 v21, 0x2

    sget-object v22, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p4

    move/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/drew/lang/RandomAccessReader;->getString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v17

    .line 380
    .local v17, "firstTwoChars":Ljava/lang/String;
    const/16 v21, 0x3

    sget-object v22, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p4

    move/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/drew/lang/RandomAccessReader;->getString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v15

    .line 381
    .local v15, "firstThreeChars":Ljava/lang/String;
    const/16 v21, 0x4

    sget-object v22, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p4

    move/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/drew/lang/RandomAccessReader;->getString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    .line 382
    .local v10, "firstFourChars":Ljava/lang/String;
    const/16 v21, 0x5

    sget-object v22, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p4

    move/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/drew/lang/RandomAccessReader;->getString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    .line 383
    .local v9, "firstFiveChars":Ljava/lang/String;
    const/16 v21, 0x6

    sget-object v22, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p4

    move/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/drew/lang/RandomAccessReader;->getString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v13

    .line 384
    .local v13, "firstSixChars":Ljava/lang/String;
    const/16 v21, 0x7

    sget-object v22, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p4

    move/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/drew/lang/RandomAccessReader;->getString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v12

    .line 385
    .local v12, "firstSevenChars":Ljava/lang/String;
    const/16 v21, 0x8

    sget-object v22, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p4

    move/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/drew/lang/RandomAccessReader;->getString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    .line 386
    .local v8, "firstEightChars":Ljava/lang/String;
    const/16 v21, 0x9

    sget-object v22, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p4

    move/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/drew/lang/RandomAccessReader;->getString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    .line 387
    .local v11, "firstNineChars":Ljava/lang/String;
    const/16 v21, 0xa

    sget-object v22, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p4

    move/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/drew/lang/RandomAccessReader;->getString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v14

    .line 388
    .local v14, "firstTenChars":Ljava/lang/String;
    const/16 v21, 0xc

    sget-object v22, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p4

    move/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/drew/lang/RandomAccessReader;->getString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v16

    .line 390
    .local v16, "firstTwelveChars":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/drew/lang/RandomAccessReader;->isMotorolaByteOrder()Z

    move-result v5

    .line 392
    .local v5, "byteOrderBefore":Z
    const-string v21, "OLYMP\u0000"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    const-string v21, "EPSON"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    const-string v21, "AGFA"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 395
    :cond_0
    const-class v21, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 396
    add-int/lit8 v21, p1, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, v21

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    .line 581
    :cond_1
    :goto_1
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    .line 582
    const/16 v21, 0x1

    :goto_2
    return v21

    .line 377
    .end local v5    # "byteOrderBefore":Z
    .end local v6    # "cameraMake":Ljava/lang/String;
    .end local v8    # "firstEightChars":Ljava/lang/String;
    .end local v9    # "firstFiveChars":Ljava/lang/String;
    .end local v10    # "firstFourChars":Ljava/lang/String;
    .end local v11    # "firstNineChars":Ljava/lang/String;
    .end local v12    # "firstSevenChars":Ljava/lang/String;
    .end local v13    # "firstSixChars":Ljava/lang/String;
    .end local v14    # "firstTenChars":Ljava/lang/String;
    .end local v15    # "firstThreeChars":Ljava/lang/String;
    .end local v16    # "firstTwelveChars":Ljava/lang/String;
    .end local v17    # "firstTwoChars":Ljava/lang/String;
    :cond_2
    const/16 v21, 0x10f

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 397
    .restart local v5    # "byteOrderBefore":Z
    .restart local v6    # "cameraMake":Ljava/lang/String;
    .restart local v8    # "firstEightChars":Ljava/lang/String;
    .restart local v9    # "firstFiveChars":Ljava/lang/String;
    .restart local v10    # "firstFourChars":Ljava/lang/String;
    .restart local v11    # "firstNineChars":Ljava/lang/String;
    .restart local v12    # "firstSevenChars":Ljava/lang/String;
    .restart local v13    # "firstSixChars":Ljava/lang/String;
    .restart local v14    # "firstTenChars":Ljava/lang/String;
    .restart local v15    # "firstThreeChars":Ljava/lang/String;
    .restart local v16    # "firstTwelveChars":Ljava/lang/String;
    .restart local v17    # "firstTwoChars":Ljava/lang/String;
    :cond_3
    const-string v21, "OLYMPUS\u0000II"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 401
    const-class v21, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 402
    add-int/lit8 v21, p1, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, v21

    move/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto :goto_1

    .line 403
    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "MINOLTA"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 406
    const-class v21, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 407
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto :goto_1

    .line 408
    :cond_5
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "NIKON"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 409
    const-string v21, "Nikon"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 418
    add-int/lit8 v21, p1, 0x6

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v21

    packed-switch v21, :pswitch_data_0

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    move-object/from16 v21, v0

    const-string v22, "Unsupported Nikon makernote data ignored."

    invoke-virtual/range {v21 .. v22}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 420
    :pswitch_0
    const-class v21, Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 421
    add-int/lit8 v21, p1, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, v21

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_1

    .line 424
    :pswitch_1
    const-class v21, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 425
    add-int/lit8 v21, p1, 0x12

    add-int/lit8 v22, p1, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_1

    .line 433
    :cond_6
    const-class v21, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 434
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_1

    .line 436
    :cond_7
    const-string v21, "SONY CAM"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    const-string v21, "SONY DSC"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 437
    :cond_8
    const-class v21, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 438
    add-int/lit8 v21, p1, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, v21

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_1

    .line 440
    :cond_9
    if-eqz v6, :cond_a

    const-string v21, "SONY"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    const/16 v21, 0x2

    move-object/from16 v0, p4

    move/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object v21

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    fill-array-data v22, :array_0

    invoke-static/range {v21 .. v22}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-nez v21, :cond_a

    .line 443
    const-class v21, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 444
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_1

    .line 445
    :cond_a
    const-string v21, "SEMC MS\u0000\u0000\u0000\u0000\u0000"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 447
    const/16 v21, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    .line 449
    const-class v21, Lcom/drew/metadata/exif/makernotes/SonyType6MakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 450
    add-int/lit8 v21, p1, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, v21

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_1

    .line 451
    :cond_b
    const-string v21, "SIGMA\u0000\u0000\u0000"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_c

    const-string v21, "FOVEON\u0000\u0000"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 452
    :cond_c
    const-class v21, Lcom/drew/metadata/exif/makernotes/SigmaMakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 453
    add-int/lit8 v21, p1, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, v21

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_1

    .line 454
    :cond_d
    const-string v21, "KDK"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 455
    const-string v21, "KDK INFO"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    .line 456
    new-instance v7, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;

    invoke-direct {v7}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;-><init>()V

    .line 457
    .local v7, "directory":Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 458
    move/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v7, v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->processKodakMakernote(Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;ILcom/drew/lang/RandomAccessReader;)V

    goto/16 :goto_1

    .line 459
    .end local v7    # "directory":Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;
    :cond_e
    const-string v21, "Canon"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 460
    const-class v21, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 461
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_1

    .line 462
    :cond_f
    if-eqz v6, :cond_11

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "CASIO"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 463
    const-string v21, "QVC\u0000\u0000\u0000"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 464
    const-class v21, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 465
    add-int/lit8 v21, p1, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, v21

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_1

    .line 467
    :cond_10
    const-class v21, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 468
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_1

    .line 470
    :cond_11
    const-string v21, "FUJIFILM"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_12

    const-string v21, "Fujifilm"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 472
    :cond_12
    const/16 v21, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    .line 476
    add-int/lit8 v21, p1, 0x8

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v21

    add-int v19, p1, v21

    .line 477
    .local v19, "ifdStart":I
    const-class v21, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 478
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, v19

    move/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_1

    .line 479
    .end local v19    # "ifdStart":I
    :cond_13
    const-string v21, "KYOCERA"

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 481
    const-class v21, Lcom/drew/metadata/exif/makernotes/KyoceraMakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 482
    add-int/lit8 v21, p1, 0x16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, v21

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_1

    .line 483
    :cond_14
    const-string v21, "LEICA"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19

    .line 484
    const/16 v21, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    .line 493
    const-string v21, "LEICA\u0000\u0001\u0000"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_15

    const-string v21, "LEICA\u0000\u0004\u0000"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_15

    const-string v21, "LEICA\u0000\u0005\u0000"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_15

    const-string v21, "LEICA\u0000\u0006\u0000"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_15

    const-string v21, "LEICA\u0000\u0007\u0000"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 499
    :cond_15
    const-class v21, Lcom/drew/metadata/exif/makernotes/LeicaType5MakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 500
    add-int/lit8 v21, p1, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, v21

    move/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_1

    .line 501
    :cond_16
    const-string v21, "Leica Camera AG"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 502
    const-class v21, Lcom/drew/metadata/exif/makernotes/LeicaMakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 503
    add-int/lit8 v21, p1, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, v21

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_1

    .line 504
    :cond_17
    const-string v21, "LEICA"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 506
    const-class v21, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 507
    add-int/lit8 v21, p1, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, v21

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_1

    .line 509
    :cond_18
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 511
    :cond_19
    const-string v21, "Panasonic\u0000\u0000\u0000"

    const/16 v22, 0xc

    sget-object v23, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p4

    move/from16 v1, p1

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/drew/lang/RandomAccessReader;->getString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1a

    .line 515
    const-class v21, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 516
    add-int/lit8 v21, p1, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, v21

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_1

    .line 517
    :cond_1a
    const-string v21, "AOC\u0000"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 523
    const-class v21, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 524
    add-int/lit8 v21, p1, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, v21

    move/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_1

    .line 525
    :cond_1b
    if-eqz v6, :cond_1d

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "PENTAX"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1c

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "ASAHI"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1d

    .line 532
    :cond_1c
    const-class v21, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 533
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, p1

    move/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_1

    .line 539
    :cond_1d
    const-string v21, "SANYO\u0000\u0001\u0000"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1e

    .line 540
    const-class v21, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 541
    add-int/lit8 v21, p1, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, v21

    move/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_1

    .line 542
    :cond_1e
    if-eqz v6, :cond_21

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "ricoh"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_21

    .line 543
    const-string v21, "Rv"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1f

    const-string v21, "Rev"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_20

    .line 549
    :cond_1f
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 550
    :cond_20
    const-string v21, "Ricoh"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 552
    const/16 v21, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    .line 553
    const-class v21, Lcom/drew/metadata/exif/makernotes/RicohMakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 554
    add-int/lit8 v21, p1, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, v21

    move/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_1

    .line 556
    :cond_21
    const-string v21, "Apple iOS\u0000"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_22

    .line 558
    invoke-virtual/range {p4 .. p4}, Lcom/drew/lang/RandomAccessReader;->isMotorolaByteOrder()Z

    move-result v20

    .line 559
    .local v20, "orderBefore":Z
    const/16 v21, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    .line 560
    const-class v21, Lcom/drew/metadata/exif/makernotes/AppleMakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 561
    add-int/lit8 v21, p1, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, v21

    move/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    .line 562
    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    goto/16 :goto_1

    .line 563
    .end local v20    # "orderBefore":Z
    :cond_22
    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v21

    const v22, 0xf101

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_23

    .line 564
    new-instance v7, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;

    invoke-direct {v7}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;-><init>()V

    .line 565
    .local v7, "directory":Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 566
    move/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v7, v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->processReconyxHyperFireMakernote(Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;ILcom/drew/lang/RandomAccessReader;)V

    goto/16 :goto_1

    .line 567
    .end local v7    # "directory":Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;
    :cond_23
    const-string v21, "RECONYXUF"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_24

    .line 568
    new-instance v7, Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;

    invoke-direct {v7}, Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;-><init>()V

    .line 569
    .local v7, "directory":Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 570
    move/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v7, v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->processReconyxUltraFireMakernote(Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;ILcom/drew/lang/RandomAccessReader;)V

    goto/16 :goto_1

    .line 571
    .end local v7    # "directory":Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;
    :cond_24
    const-string v21, "SAMSUNG"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_25

    .line 573
    const-class v21, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDirectory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 574
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_1

    .line 578
    :cond_25
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 440
    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method

.method private static processReconyxHyperFireMakernote(Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;ILcom/drew/lang/RandomAccessReader;)V
    .locals 26
    .param p0, "directory"    # Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "makernoteOffset"    # I
    .param p2, "reader"    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 708
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setObject(ILjava/lang/Object;)V

    .line 710
    add-int/lit8 v20, p1, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v13

    .line 711
    .local v13, "major":I
    add-int/lit8 v20, p1, 0x2

    add-int/lit8 v20, v20, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v14

    .line 712
    .local v14, "minor":I
    add-int/lit8 v20, p1, 0x2

    add-int/lit8 v20, v20, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v17

    .line 713
    .local v17, "revision":I
    const-string v20, "%04X"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    add-int/lit8 v23, p1, 0x2

    add-int/lit8 v23, v23, 0x6

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 714
    .local v6, "buildYear":Ljava/lang/String;
    const-string v20, "%04X"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    add-int/lit8 v23, p1, 0x2

    add-int/lit8 v23, v23, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 715
    .local v5, "buildDate":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 718
    .local v7, "buildYearAndDate":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 722
    .local v4, "build":Ljava/lang/Integer;
    :goto_0
    if-eqz v4, :cond_0

    .line 724
    const/16 v20, 0x2

    const-string v21, "%d.%d.%d.%s"

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x3

    aput-object v4, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setString(ILjava/lang/String;)V

    .line 732
    :goto_1
    const/16 v20, 0xc

    add-int/lit8 v21, p1, 0xc

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v21

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setString(ILjava/lang/String;)V

    .line 733
    const/16 v20, 0xe

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    add-int/lit8 v23, p1, 0xe

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v23

    aput v23, v21, v22

    const/16 v22, 0x1

    add-int/lit8 v23, p1, 0xe

    add-int/lit8 v23, v23, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v23

    aput v23, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setIntArray(I[I)V

    .line 740
    add-int/lit8 v20, p1, 0x12

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v10

    .line 741
    .local v10, "eventNumberHigh":I
    add-int/lit8 v20, p1, 0x12

    add-int/lit8 v20, v20, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v11

    .line 742
    .local v11, "eventNumberLow":I
    const/16 v20, 0x12

    shl-int/lit8 v21, v10, 0x10

    add-int v21, v21, v11

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setInt(II)V

    .line 744
    add-int/lit8 v20, p1, 0x16

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v18

    .line 745
    .local v18, "seconds":I
    add-int/lit8 v20, p1, 0x16

    add-int/lit8 v20, v20, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v15

    .line 746
    .local v15, "minutes":I
    add-int/lit8 v20, p1, 0x16

    add-int/lit8 v20, v20, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v12

    .line 747
    .local v12, "hour":I
    add-int/lit8 v20, p1, 0x16

    add-int/lit8 v20, v20, 0x6

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v16

    .line 748
    .local v16, "month":I
    add-int/lit8 v20, p1, 0x16

    add-int/lit8 v20, v20, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v8

    .line 749
    .local v8, "day":I
    add-int/lit8 v20, p1, 0x16

    add-int/lit8 v20, v20, 0xa

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v19

    .line 751
    .local v19, "year":I
    if-ltz v18, :cond_1

    const/16 v20, 0x3c

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    if-ltz v15, :cond_1

    const/16 v20, 0x3c

    move/from16 v0, v20

    if-ge v15, v0, :cond_1

    if-ltz v12, :cond_1

    const/16 v20, 0x18

    move/from16 v0, v20

    if-ge v12, v0, :cond_1

    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    const/16 v20, 0xd

    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    const/16 v20, 0x1

    move/from16 v0, v20

    if-lt v8, v0, :cond_1

    const/16 v20, 0x20

    move/from16 v0, v20

    if-ge v8, v0, :cond_1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    const/16 v20, 0x270f

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_1

    .line 758
    const/16 v20, 0x16

    const-string v21, "%4d:%2d:%2d %2d:%2d:%2d"

    const/16 v22, 0x6

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x5

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setString(ILjava/lang/String;)V

    .line 766
    :goto_2
    const/16 v20, 0x24

    add-int/lit8 v21, p1, 0x24

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setInt(II)V

    .line 767
    const/16 v20, 0x26

    add-int/lit8 v21, p1, 0x26

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getInt16(I)S

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setInt(II)V

    .line 768
    const/16 v20, 0x28

    add-int/lit8 v21, p1, 0x28

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getInt16(I)S

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setInt(II)V

    .line 770
    const/16 v20, 0x2a

    new-instance v21, Lcom/drew/metadata/StringValue;

    add-int/lit8 v22, p1, 0x2a

    const/16 v23, 0x1c

    move-object/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object v22

    sget-object v23, Lcom/drew/lang/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct/range {v21 .. v23}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setStringValue(ILcom/drew/metadata/StringValue;)V

    .line 773
    const/16 v20, 0x48

    add-int/lit8 v21, p1, 0x48

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setInt(II)V

    .line 774
    const/16 v20, 0x4a

    add-int/lit8 v21, p1, 0x4a

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setInt(II)V

    .line 775
    const/16 v20, 0x4c

    add-int/lit8 v21, p1, 0x4c

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setInt(II)V

    .line 776
    const/16 v20, 0x4e

    add-int/lit8 v21, p1, 0x4e

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setInt(II)V

    .line 777
    const/16 v20, 0x50

    add-int/lit8 v21, p1, 0x50

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setInt(II)V

    .line 778
    const/16 v20, 0x52

    add-int/lit8 v21, p1, 0x52

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setInt(II)V

    .line 779
    const/16 v20, 0x54

    add-int/lit8 v21, p1, 0x54

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x408f400000000000L    # 1000.0

    div-double v22, v22, v24

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setDouble(ID)V

    .line 780
    const/16 v20, 0x56

    add-int/lit8 v21, p1, 0x56

    const/16 v22, 0x2c

    sget-object v23, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/drew/lang/RandomAccessReader;->getNullTerminatedString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setString(ILjava/lang/String;)V

    .line 781
    return-void

    .line 719
    .end local v4    # "build":Ljava/lang/Integer;
    .end local v8    # "day":I
    .end local v10    # "eventNumberHigh":I
    .end local v11    # "eventNumberLow":I
    .end local v12    # "hour":I
    .end local v15    # "minutes":I
    .end local v16    # "month":I
    .end local v18    # "seconds":I
    .end local v19    # "year":I
    :catch_0
    move-exception v9

    .line 720
    .local v9, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    .restart local v4    # "build":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 728
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/16 v20, 0x2

    const-string v21, "%d.%d.%d"

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setString(ILjava/lang/String;)V

    .line 729
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error processing Reconyx HyperFire makernote data: build \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' is not in the expected format and will be omitted from Firmware Version."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->addError(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 763
    .restart local v8    # "day":I
    .restart local v10    # "eventNumberHigh":I
    .restart local v11    # "eventNumberLow":I
    .restart local v12    # "hour":I
    .restart local v15    # "minutes":I
    .restart local v16    # "month":I
    .restart local v18    # "seconds":I
    .restart local v19    # "year":I
    :cond_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error processing Reconyx HyperFire makernote data: Date/Time Original "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is not a valid date/time."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->addError(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private static processReconyxUltraFireMakernote(Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;ILcom/drew/lang/RandomAccessReader;)V
    .locals 10
    .param p0, "directory"    # Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "makernoteOffset"    # I
    .param p2, "reader"    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 785
    const/16 v5, 0x9

    sget-object v6, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1, v5, v6}, Lcom/drew/lang/RandomAccessReader;->getString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v8, v5}, Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;->setString(ILjava/lang/String;)V

    .line 808
    const/16 v5, 0x34

    add-int/lit8 v6, p1, 0x34

    sget-object v7, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v6, v9, v7}, Lcom/drew/lang/RandomAccessReader;->getString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;->setString(ILjava/lang/String;)V

    .line 809
    const/16 v5, 0x35

    const/4 v6, 0x2

    new-array v6, v6, [I

    add-int/lit8 v7, p1, 0x35

    invoke-virtual {p2, v7}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v7

    aput v7, v6, v8

    add-int/lit8 v7, p1, 0x35

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p2, v7}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v7

    aput v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;->setIntArray(I[I)V

    .line 817
    add-int/lit8 v5, p1, 0x3b

    invoke-virtual {p2, v5}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v4

    .line 818
    .local v4, "seconds":B
    add-int/lit8 v5, p1, 0x3b

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p2, v5}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    .line 819
    .local v2, "minutes":B
    add-int/lit8 v5, p1, 0x3b

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p2, v5}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v1

    .line 820
    .local v1, "hour":B
    add-int/lit8 v5, p1, 0x3b

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {p2, v5}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    .line 821
    .local v0, "day":B
    add-int/lit8 v5, p1, 0x3b

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {p2, v5}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v3

    .line 838
    .local v3, "month":B
    const/16 v5, 0x43

    add-int/lit8 v6, p1, 0x43

    invoke-virtual {p2, v6}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;->setInt(II)V

    .line 842
    const/16 v5, 0x48

    add-int/lit8 v6, p1, 0x48

    invoke-virtual {p2, v6}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;->setInt(II)V

    .line 844
    const/16 v5, 0x4b

    new-instance v6, Lcom/drew/metadata/StringValue;

    add-int/lit8 v7, p1, 0x4b

    const/16 v8, 0xe

    invoke-virtual {p2, v7, v8}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object v7

    sget-object v8, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v7, v8}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0, v5, v6}, Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;->setStringValue(ILcom/drew/metadata/StringValue;)V

    .line 846
    const/16 v5, 0x50

    add-int/lit8 v6, p1, 0x50

    const/16 v7, 0x14

    sget-object v8, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v6, v7, v8}, Lcom/drew/lang/RandomAccessReader;->getNullTerminatedString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;->setString(ILjava/lang/String;)V

    .line 847
    return-void
.end method


# virtual methods
.method public customProcessTag(ILjava/util/Set;ILcom/drew/lang/RandomAccessReader;II)Z
    .locals 22
    .param p1, "tagOffset"    # I
    .param p2    # Ljava/util/Set;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "tiffHeaderOffset"    # I
    .param p4, "reader"    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p5, "tagId"    # I
    .param p6, "byteCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/drew/lang/RandomAccessReader;",
            "II)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    .local p2, "processedIfdOffsets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez p5, :cond_1

    .line 192
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 195
    const/4 v9, 0x0

    .line 323
    :goto_0
    return v9

    .line 199
    :cond_0
    if-nez p6, :cond_1

    .line 200
    const/4 v9, 0x1

    goto :goto_0

    .line 204
    :cond_1
    const v9, 0x927c

    move/from16 v0, p5

    if-ne v0, v9, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v9, v9, Lcom/drew/metadata/exif/ExifSubIFDDirectory;

    if-eqz v9, :cond_2

    .line 205
    invoke-direct/range {p0 .. p4}, Lcom/drew/metadata/exif/ExifTiffHandler;->processMakernote(ILjava/util/Set;ILcom/drew/lang/RandomAccessReader;)Z

    move-result v9

    goto :goto_0

    .line 209
    :cond_2
    const v9, 0x83bb

    move/from16 v0, p5

    if-ne v0, v9, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v9, v9, Lcom/drew/metadata/exif/ExifIFD0Directory;

    if-eqz v9, :cond_4

    .line 211
    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getInt8(I)B

    move-result v9

    const/16 v10, 0x1c

    if-ne v9, v10, :cond_3

    .line 212
    move-object/from16 v0, p4

    move/from16 v1, p1

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object v17

    .line 213
    .local v17, "iptcBytes":[B
    new-instance v7, Lcom/drew/metadata/iptc/IptcReader;

    invoke-direct {v7}, Lcom/drew/metadata/iptc/IptcReader;-><init>()V

    new-instance v8, Lcom/drew/lang/SequentialByteArrayReader;

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    move-object/from16 v0, v17

    array-length v10, v0

    int-to-long v10, v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual/range {v7 .. v12}, Lcom/drew/metadata/iptc/IptcReader;->extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;JLcom/drew/metadata/Directory;)V

    .line 214
    const/4 v9, 0x1

    goto :goto_0

    .line 216
    .end local v17    # "iptcBytes":[B
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 220
    :cond_4
    const/16 v9, 0x2bc

    move/from16 v0, p5

    if-ne v0, v9, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v9, v9, Lcom/drew/metadata/exif/ExifIFD0Directory;

    if-eqz v9, :cond_5

    .line 221
    new-instance v9, Lcom/drew/metadata/xmp/XmpReader;

    invoke-direct {v9}, Lcom/drew/metadata/xmp/XmpReader;-><init>()V

    move-object/from16 v0, p4

    move/from16 v1, p1

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/RandomAccessReader;->getNullTerminatedBytes(II)[B

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v9, v10, v11, v12}, Lcom/drew/metadata/xmp/XmpReader;->extract([BLcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V

    .line 222
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 225
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    move/from16 v0, p5

    invoke-static {v9, v0}, Lcom/drew/metadata/exif/ExifTiffHandler;->HandlePrintIM(Lcom/drew/metadata/Directory;I)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 227
    new-instance v21, Lcom/drew/metadata/exif/PrintIMDirectory;

    invoke-direct/range {v21 .. v21}, Lcom/drew/metadata/exif/PrintIMDirectory;-><init>()V

    .line 228
    .local v21, "printIMDirectory":Lcom/drew/metadata/exif/PrintIMDirectory;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/drew/metadata/exif/PrintIMDirectory;->setParent(Lcom/drew/metadata/Directory;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 230
    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lcom/drew/metadata/exif/ExifTiffHandler;->ProcessPrintIM(Lcom/drew/metadata/exif/PrintIMDirectory;ILcom/drew/lang/RandomAccessReader;I)V

    .line 231
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 236
    .end local v21    # "printIMDirectory":Lcom/drew/metadata/exif/PrintIMDirectory;
    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v9, v9, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    if-eqz v9, :cond_7

    .line 238
    sparse-switch p5, :sswitch_data_0

    .line 275
    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v9, v9, Lcom/drew/metadata/exif/PanasonicRawIFD0Directory;

    if-eqz v9, :cond_8

    .line 279
    sparse-switch p5, :sswitch_data_1

    .line 303
    :cond_8
    const/16 v9, 0x2e

    move/from16 v0, p5

    if-ne v0, v9, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v9, v9, Lcom/drew/metadata/exif/PanasonicRawIFD0Directory;

    if-eqz v9, :cond_9

    .line 305
    move-object/from16 v0, p4

    move/from16 v1, p1

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object v20

    .line 308
    .local v20, "jpegrawbytes":[B
    new-instance v19, Ljava/io/ByteArrayInputStream;

    invoke-direct/range {v19 .. v20}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 310
    .local v19, "jpegmem":Ljava/io/ByteArrayInputStream;
    :try_start_0
    invoke-static/range {v19 .. v19}, Lcom/drew/imaging/jpeg/JpegMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object v18

    .line 311
    .local v18, "jpegDirectory":Lcom/drew/metadata/Metadata;
    invoke-virtual/range {v18 .. v18}, Lcom/drew/metadata/Metadata;->getDirectories()Ljava/lang/Iterable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/drew/metadata/Directory;

    .line 312
    .local v14, "directory":Lcom/drew/metadata/Directory;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v14, v9}, Lcom/drew/metadata/Directory;->setParent(Lcom/drew/metadata/Directory;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {v9, v14}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V
    :try_end_0
    .catch Lcom/drew/imaging/jpeg/JpegProcessingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 316
    .end local v14    # "directory":Lcom/drew/metadata/Directory;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "jpegDirectory":Lcom/drew/metadata/Metadata;
    :catch_0
    move-exception v15

    .line 317
    .local v15, "e":Lcom/drew/imaging/jpeg/JpegProcessingException;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error processing JpgFromRaw: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v15}, Lcom/drew/imaging/jpeg/JpegProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    .line 323
    .end local v15    # "e":Lcom/drew/imaging/jpeg/JpegProcessingException;
    .end local v19    # "jpegmem":Ljava/io/ByteArrayInputStream;
    .end local v20    # "jpegrawbytes":[B
    :cond_9
    :goto_2
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 241
    :sswitch_0
    const-class v9, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 242
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    .line 243
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 245
    :sswitch_1
    const-class v9, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 246
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    .line 247
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 249
    :sswitch_2
    const-class v9, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 250
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    .line 251
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 253
    :sswitch_3
    const-class v9, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 254
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    .line 255
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 257
    :sswitch_4
    const-class v9, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 258
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    .line 259
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 261
    :sswitch_5
    const-class v9, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 262
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    .line 263
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 265
    :sswitch_6
    const-class v9, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 266
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    .line 267
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 269
    :sswitch_7
    const-class v9, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 270
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    .line 271
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 282
    :sswitch_8
    new-instance v6, Lcom/drew/metadata/exif/PanasonicRawWbInfoDirectory;

    invoke-direct {v6}, Lcom/drew/metadata/exif/PanasonicRawWbInfoDirectory;-><init>()V

    .line 283
    .local v6, "dirWbInfo":Lcom/drew/metadata/exif/PanasonicRawWbInfoDirectory;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v6, v9}, Lcom/drew/metadata/exif/PanasonicRawWbInfoDirectory;->setParent(Lcom/drew/metadata/Directory;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {v9, v6}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 285
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x2

    move/from16 v7, p1

    move-object/from16 v8, p4

    move/from16 v9, p6

    invoke-static/range {v6 .. v11}, Lcom/drew/metadata/exif/ExifTiffHandler;->ProcessBinary(Lcom/drew/metadata/Directory;ILcom/drew/lang/RandomAccessReader;ILjava/lang/Boolean;I)V

    .line 286
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 288
    .end local v6    # "dirWbInfo":Lcom/drew/metadata/exif/PanasonicRawWbInfoDirectory;
    :sswitch_9
    new-instance v7, Lcom/drew/metadata/exif/PanasonicRawWbInfo2Directory;

    invoke-direct {v7}, Lcom/drew/metadata/exif/PanasonicRawWbInfo2Directory;-><init>()V

    .line 289
    .local v7, "dirWbInfo2":Lcom/drew/metadata/exif/PanasonicRawWbInfo2Directory;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v7, v9}, Lcom/drew/metadata/exif/PanasonicRawWbInfo2Directory;->setParent(Lcom/drew/metadata/Directory;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {v9, v7}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 291
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x3

    move/from16 v8, p1

    move-object/from16 v9, p4

    move/from16 v10, p6

    invoke-static/range {v7 .. v12}, Lcom/drew/metadata/exif/ExifTiffHandler;->ProcessBinary(Lcom/drew/metadata/Directory;ILcom/drew/lang/RandomAccessReader;ILjava/lang/Boolean;I)V

    .line 292
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 294
    .end local v7    # "dirWbInfo2":Lcom/drew/metadata/exif/PanasonicRawWbInfo2Directory;
    :sswitch_a
    new-instance v8, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;

    invoke-direct {v8}, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;-><init>()V

    .line 295
    .local v8, "dirDistort":Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v8, v9}, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;->setParent(Lcom/drew/metadata/Directory;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {v9, v8}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 297
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x1

    move/from16 v9, p1

    move-object/from16 v10, p4

    move/from16 v11, p6

    invoke-static/range {v8 .. v13}, Lcom/drew/metadata/exif/ExifTiffHandler;->ProcessBinary(Lcom/drew/metadata/Directory;ILcom/drew/lang/RandomAccessReader;ILjava/lang/Boolean;I)V

    .line 298
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 315
    .end local v8    # "dirDistort":Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v18    # "jpegDirectory":Lcom/drew/metadata/Metadata;
    .restart local v19    # "jpegmem":Ljava/io/ByteArrayInputStream;
    .restart local v20    # "jpegrawbytes":[B
    :cond_a
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 318
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "jpegDirectory":Lcom/drew/metadata/Metadata;
    :catch_1
    move-exception v15

    .line 319
    .local v15, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error reading JpgFromRaw: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v15}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 238
    nop

    :sswitch_data_0
    .sparse-switch
        0x2010 -> :sswitch_0
        0x2020 -> :sswitch_1
        0x2030 -> :sswitch_2
        0x2031 -> :sswitch_3
        0x2040 -> :sswitch_4
        0x2050 -> :sswitch_5
        0x3000 -> :sswitch_6
        0x4000 -> :sswitch_7
    .end sparse-switch

    .line 279
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_8
        0x27 -> :sswitch_9
        0x119 -> :sswitch_a
    .end sparse-switch
.end method

.method public hasFollowerIfd()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 150
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v1, v1, Lcom/drew/metadata/exif/ExifIFD0Directory;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v1, v1, Lcom/drew/metadata/exif/ExifImageDirectory;

    if-eqz v1, :cond_3

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    const/16 v2, 0x129

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    const-class v1, Lcom/drew/metadata/exif/ExifImageDirectory;

    invoke-virtual {p0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 166
    :cond_1
    :goto_0
    return v0

    .line 156
    :cond_2
    const-class v1, Lcom/drew/metadata/exif/ExifThumbnailDirectory;

    invoke-virtual {p0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    goto :goto_0

    .line 161
    :cond_3
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v1, v1, Lcom/drew/metadata/exif/ExifThumbnailDirectory;

    if-nez v1, :cond_1

    .line 166
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTiffMarker(I)V
    .locals 9
    .param p1, "marker"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/tiff/TiffProcessingException;
        }
    .end annotation

    .prologue
    .line 66
    const/16 v3, 0x2a

    .line 67
    .local v3, "standardTiffMarker":I
    const/16 v0, 0x4f52

    .line 68
    .local v0, "olympusRawTiffMarker":I
    const/16 v1, 0x5352

    .line 69
    .local v1, "olympusRawTiffMarker2":I
    const/16 v2, 0x55

    .line 71
    .local v2, "panasonicRawTiffMarker":I
    sparse-switch p1, :sswitch_data_0

    .line 82
    new-instance v4, Lcom/drew/imaging/tiff/TiffProcessingException;

    const-string v5, "Unexpected TIFF marker: 0x%X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/drew/imaging/tiff/TiffProcessingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 76
    :sswitch_0
    const-class v4, Lcom/drew/metadata/exif/ExifIFD0Directory;

    invoke-virtual {p0, v4}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 84
    :goto_0
    return-void

    .line 79
    :sswitch_1
    const-class v4, Lcom/drew/metadata/exif/PanasonicRawIFD0Directory;

    invoke-virtual {p0, v4}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    goto :goto_0

    .line 71
    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x55 -> :sswitch_1
        0x4f52 -> :sswitch_0
        0x5352 -> :sswitch_0
    .end sparse-switch
.end method

.method public tryCustomProcessFormat(IIJ)Ljava/lang/Long;
    .locals 3
    .param p1, "tagId"    # I
    .param p2, "formatCode"    # I
    .param p3, "componentCount"    # J
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 172
    const/16 v0, 0xd

    if-ne p2, v0, :cond_0

    .line 173
    const-wide/16 v0, 0x4

    mul-long/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 176
    :cond_0
    if-nez p2, :cond_1

    .line 177
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tryEnterSubIfd(I)Z
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    const/4 v0, 0x1

    .line 88
    const/16 v1, 0x14a

    if-ne p1, v1, :cond_0

    .line 89
    const-class v1, Lcom/drew/metadata/exif/ExifSubIFDDirectory;

    invoke-virtual {p0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 143
    :goto_0
    return v0

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v1, v1, Lcom/drew/metadata/exif/ExifIFD0Directory;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v1, v1, Lcom/drew/metadata/exif/PanasonicRawIFD0Directory;

    if-eqz v1, :cond_3

    .line 94
    :cond_1
    const v1, 0x8769

    if-ne p1, v1, :cond_2

    .line 95
    const-class v1, Lcom/drew/metadata/exif/ExifSubIFDDirectory;

    invoke-virtual {p0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    goto :goto_0

    .line 99
    :cond_2
    const v1, 0x8825

    if-ne p1, v1, :cond_3

    .line 100
    const-class v1, Lcom/drew/metadata/exif/GpsDirectory;

    invoke-virtual {p0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    goto :goto_0

    .line 105
    :cond_3
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v1, v1, Lcom/drew/metadata/exif/ExifSubIFDDirectory;

    if-eqz v1, :cond_4

    .line 106
    const v1, 0xa005

    if-ne p1, v1, :cond_4

    .line 107
    const-class v1, Lcom/drew/metadata/exif/ExifInteropDirectory;

    invoke-virtual {p0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    goto :goto_0

    .line 112
    :cond_4
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v1, v1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    if-eqz v1, :cond_5

    .line 115
    sparse-switch p1, :sswitch_data_0

    .line 143
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    :sswitch_0
    const-class v1, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;

    invoke-virtual {p0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    goto :goto_0

    .line 120
    :sswitch_1
    const-class v1, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    invoke-virtual {p0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    goto :goto_0

    .line 123
    :sswitch_2
    const-class v1, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;

    invoke-virtual {p0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    goto :goto_0

    .line 126
    :sswitch_3
    const-class v1, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;

    invoke-virtual {p0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    goto :goto_0

    .line 129
    :sswitch_4
    const-class v1, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;

    invoke-virtual {p0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    goto :goto_0

    .line 132
    :sswitch_5
    const-class v1, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;

    invoke-virtual {p0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    goto :goto_0

    .line 135
    :sswitch_6
    const-class v1, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;

    invoke-virtual {p0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    goto :goto_0

    .line 138
    :sswitch_7
    const-class v1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    invoke-virtual {p0, v1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    goto :goto_0

    .line 115
    nop

    :sswitch_data_0
    .sparse-switch
        0x2010 -> :sswitch_0
        0x2020 -> :sswitch_1
        0x2030 -> :sswitch_2
        0x2031 -> :sswitch_3
        0x2040 -> :sswitch_4
        0x2050 -> :sswitch_5
        0x3000 -> :sswitch_6
        0x4000 -> :sswitch_7
    .end sparse-switch
.end method

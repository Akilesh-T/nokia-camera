.class public abstract Lcom/drew/metadata/exif/ExifDescriptorBase;
.super Lcom/drew/metadata/TagDescriptor;
.source "ExifDescriptorBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/drew/metadata/Directory;",
        ">",
        "Lcom/drew/metadata/TagDescriptor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final _allowDecimalRepresentationOfRationals:Z


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Directory;)V
    .locals 1
    .param p1    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    .local p1, "directory":Lcom/drew/metadata/Directory;, "TT;"
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_allowDecimalRepresentationOfRationals:Z

    .line 63
    return-void
.end method

.method private decodeCfaPattern(I)[I
    .locals 13
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 811
    iget-object v11, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v11, p1}, Lcom/drew/metadata/Directory;->getByteArray(I)[B

    move-result-object v8

    .line 812
    .local v8, "values":[B
    if-nez v8, :cond_1

    .line 813
    const/4 v7, 0x0

    .line 859
    :cond_0
    :goto_0
    return-object v7

    .line 815
    :cond_1
    array-length v11, v8

    const/4 v12, 0x4

    if-ge v11, v12, :cond_2

    .line 817
    array-length v9, v8

    new-array v7, v9, [I

    .line 818
    .local v7, "ret":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v9, v8

    if-ge v3, v9, :cond_0

    .line 819
    aget-byte v9, v8, v3

    aput v9, v7, v3

    .line 818
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 823
    .end local v3    # "i":I
    .end local v7    # "ret":[I
    :cond_2
    array-length v11, v8

    add-int/lit8 v11, v11, -0x2

    new-array v7, v11, [I

    .line 826
    .restart local v7    # "ret":[I
    :try_start_0
    new-instance v6, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {v6, v8}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    .line 829
    .local v6, "reader":Lcom/drew/lang/ByteArrayReader;
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/drew/lang/ByteArrayReader;->getInt16(I)S

    move-result v4

    .line 830
    .local v4, "item0":S
    const/4 v11, 0x2

    invoke-virtual {v6, v11}, Lcom/drew/lang/ByteArrayReader;->getInt16(I)S

    move-result v5

    .line 832
    .local v5, "item1":S
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 833
    .local v0, "copyArray":Ljava/lang/Boolean;
    mul-int v11, v4, v5

    add-int/lit8 v1, v11, 0x2

    .line 834
    .local v1, "end":I
    array-length v11, v8

    if-le v1, v11, :cond_5

    .line 837
    invoke-virtual {v6}, Lcom/drew/lang/ByteArrayReader;->isMotorolaByteOrder()Z

    move-result v11

    if-nez v11, :cond_4

    :goto_2
    invoke-virtual {v6, v9}, Lcom/drew/lang/ByteArrayReader;->setMotorolaByteOrder(Z)V

    .line 838
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/drew/lang/ByteArrayReader;->getInt16(I)S

    move-result v4

    .line 839
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Lcom/drew/lang/ByteArrayReader;->getInt16(I)S

    move-result v5

    .line 841
    array-length v9, v8

    mul-int v10, v4, v5

    add-int/lit8 v10, v10, 0x2

    if-lt v9, v10, :cond_3

    .line 842
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 847
    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 849
    const/4 v9, 0x0

    aput v4, v7, v9

    .line 850
    const/4 v9, 0x1

    aput v5, v7, v9

    .line 852
    const/4 v3, 0x4

    .restart local v3    # "i":I
    :goto_4
    array-length v9, v8

    if-ge v3, v9, :cond_0

    .line 853
    add-int/lit8 v9, v3, -0x2

    invoke-virtual {v6, v3}, Lcom/drew/lang/ByteArrayReader;->getInt8(I)B

    move-result v10

    aput v10, v7, v9

    .line 852
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v3    # "i":I
    :cond_4
    move v9, v10

    .line 837
    goto :goto_2

    .line 845
    :cond_5
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_3

    .line 855
    .end local v0    # "copyArray":Ljava/lang/Boolean;
    .end local v1    # "end":I
    .end local v4    # "item0":S
    .end local v5    # "item1":S
    .end local v6    # "reader":Lcom/drew/lang/ByteArrayReader;
    :catch_0
    move-exception v2

    .line 856
    .local v2, "ex":Ljava/io/IOException;
    iget-object v9, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IO exception processing data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static formatCFAPattern([I)Ljava/lang/String;
    .locals 9
    .param p0, "pattern"    # [I
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 762
    if-nez p0, :cond_0

    .line 763
    const/4 v4, 0x0

    .line 791
    :goto_0
    return-object v4

    .line 764
    :cond_0
    array-length v4, p0

    if-ge v4, v8, :cond_1

    .line 765
    const-string v4, "<truncated data>"

    goto :goto_0

    .line 766
    :cond_1
    aget v4, p0, v7

    if-nez v4, :cond_2

    aget v4, p0, v6

    if-nez v4, :cond_2

    .line 767
    const-string v4, "<zero pattern size>"

    goto :goto_0

    .line 769
    :cond_2
    aget v4, p0, v7

    aget v5, p0, v6

    mul-int/2addr v4, v5

    add-int/lit8 v1, v4, 0x2

    .line 770
    .local v1, "end":I
    array-length v4, p0

    if-le v1, v4, :cond_3

    .line 771
    const-string v4, "<invalid pattern size>"

    goto :goto_0

    .line 773
    :cond_3
    const/4 v4, 0x7

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "Red"

    aput-object v4, v0, v7

    const-string v4, "Green"

    aput-object v4, v0, v6

    const-string v4, "Blue"

    aput-object v4, v0, v8

    const/4 v4, 0x3

    const-string v5, "Cyan"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "Magenta"

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const-string v5, "Yellow"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, "White"

    aput-object v5, v0, v4

    .line 775
    .local v0, "cfaColors":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 776
    .local v3, "ret":Ljava/lang/StringBuilder;
    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    const/4 v2, 0x2

    .local v2, "pos":I
    :goto_1
    if-ge v2, v1, :cond_7

    .line 779
    aget v4, p0, v2

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    if-gt v4, v5, :cond_5

    .line 780
    aget v4, p0, v2

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    :goto_2
    add-int/lit8 v4, v2, -0x2

    aget v5, p0, v6

    rem-int/2addr v4, v5

    if-nez v4, :cond_6

    .line 785
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 782
    :cond_5
    const-string v4, "Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 786
    :cond_6
    add-int/lit8 v4, v1, -0x1

    if-eq v2, v4, :cond_4

    .line 787
    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 789
    :cond_7
    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private getUnicodeDescription(I)Ljava/lang/String;
    .locals 5
    .param p1, "tag"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const/4 v2, 0x0

    .line 315
    iget-object v3, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v3, p1}, Lcom/drew/metadata/Directory;->getByteArray(I)[B

    move-result-object v0

    .line 316
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 322
    :goto_0
    return-object v2

    .line 320
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-16LE"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 321
    :catch_0
    move-exception v1

    .line 322
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method


# virtual methods
.method public get35mmFilmEquivFocalLengthDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 586
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v2, 0xa405

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 587
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Unknown"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v2, v1

    invoke-static {v2, v3}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFocalLengthDescription(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getApertureValueDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 895
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v4, 0x9202

    invoke-virtual {v1, v4}, Lcom/drew/metadata/Directory;->getDoubleObject(I)Ljava/lang/Double;

    move-result-object v0

    .line 896
    .local v0, "aperture":Ljava/lang/Double;
    if-nez v0, :cond_0

    .line 897
    const/4 v1, 0x0

    .line 899
    :goto_0
    return-object v1

    .line 898
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/drew/imaging/PhotographicConversions;->apertureToFStop(D)D

    move-result-wide v2

    .line 899
    .local v2, "fStop":D
    invoke-static {v2, v3}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFStopDescription(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getBitsPerSampleDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 436
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v2, 0x102

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bits/component/pixel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCfaPattern2Description()Ljava/lang/String;
    .locals 10
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const v9, 0x828e

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 736
    iget-object v4, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v4, v9}, Lcom/drew/metadata/Directory;->getByteArray(I)[B

    move-result-object v3

    .line 737
    .local v3, "values":[B
    if-nez v3, :cond_0

    .line 738
    const/4 v4, 0x0

    .line 756
    :goto_0
    return-object v4

    .line 740
    :cond_0
    iget-object v4, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v5, 0x828d

    invoke-virtual {v4, v5}, Lcom/drew/metadata/Directory;->getIntArray(I)[I

    move-result-object v2

    .line 741
    .local v2, "repeatPattern":[I
    if-nez v2, :cond_1

    .line 742
    const-string v4, "Repeat Pattern not found for CFAPattern (%s)"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-super {p0, v9}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 744
    :cond_1
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    array-length v4, v3

    aget v5, v2, v7

    aget v6, v2, v8

    mul-int/2addr v5, v6

    if-ne v4, v5, :cond_3

    .line 746
    array-length v4, v3

    add-int/lit8 v4, v4, 0x2

    new-array v1, v4, [I

    .line 747
    .local v1, "intpattern":[I
    aget v4, v2, v7

    aput v4, v1, v7

    .line 748
    aget v4, v2, v8

    aput v4, v1, v8

    .line 750
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 751
    add-int/lit8 v4, v0, 0x2

    aget-byte v5, v3, v0

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v4

    .line 750
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 753
    :cond_2
    invoke-static {v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->formatCFAPattern([I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 756
    .end local v0    # "i":I
    .end local v1    # "intpattern":[I
    :cond_3
    const-string v4, "Unknown Pattern (%s)"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-super {p0, v9}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getCfaPatternDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 720
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const v0, 0xa302

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->decodeCfaPattern(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->formatCFAPattern([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorSpaceDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 971
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v2, 0xa001

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 972
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 973
    const/4 v1, 0x0

    .line 978
    :goto_0
    return-object v1

    .line 974
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 975
    const-string v1, "sRGB"

    goto :goto_0

    .line 976
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0xffff

    if-ne v1, v2, :cond_2

    .line 977
    const-string v1, "Undefined"

    goto :goto_0

    .line 978
    :cond_2
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
.end method

.method public getComponentConfigurationDescription()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const/4 v7, 0x4

    .line 1207
    iget-object v5, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v6, 0x9101

    invoke-virtual {v5, v6}, Lcom/drew/metadata/Directory;->getIntArray(I)[I

    move-result-object v2

    .line 1208
    .local v2, "components":[I
    if-nez v2, :cond_0

    .line 1209
    const/4 v5, 0x0

    .line 1218
    :goto_0
    return-object v5

    .line 1210
    :cond_0
    const/4 v5, 0x7

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const-string v6, "Y"

    aput-object v6, v1, v5

    const/4 v5, 0x2

    const-string v6, "Cb"

    aput-object v6, v1, v5

    const/4 v5, 0x3

    const-string v6, "Cr"

    aput-object v6, v1, v5

    const-string v5, "R"

    aput-object v5, v1, v7

    const/4 v5, 0x5

    const-string v6, "G"

    aput-object v6, v1, v5

    const/4 v5, 0x6

    const-string v6, "B"

    aput-object v6, v1, v5

    .line 1211
    .local v1, "componentStrings":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1212
    .local v0, "componentConfig":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v2

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 1213
    aget v4, v2, v3

    .line 1214
    .local v4, "j":I
    if-lez v4, :cond_1

    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 1215
    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1218
    .end local v4    # "j":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public getCompressedAverageBitsPerPixelDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const/4 v4, 0x1

    .line 1154
    iget-object v2, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v3, 0x9102

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v1

    .line 1155
    .local v1, "value":Lcom/drew/lang/Rational;
    if-nez v1, :cond_0

    .line 1156
    const/4 v2, 0x0

    .line 1158
    :goto_0
    return-object v2

    .line 1157
    :cond_0
    invoke-virtual {v1, v4}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1158
    .local v0, "ratio":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/drew/lang/Rational;->isInteger()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/drew/lang/Rational;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bit/pixel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bits/pixel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getCompressionDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 1091
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v2, 0x103

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1092
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1093
    const/4 v1, 0x0

    .line 1137
    :goto_0
    return-object v1

    .line 1094
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1137
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

    .line 1095
    :sswitch_0
    const-string v1, "Uncompressed"

    goto :goto_0

    .line 1096
    :sswitch_1
    const-string v1, "CCITT 1D"

    goto :goto_0

    .line 1097
    :sswitch_2
    const-string v1, "T4/Group 3 Fax"

    goto :goto_0

    .line 1098
    :sswitch_3
    const-string v1, "T6/Group 4 Fax"

    goto :goto_0

    .line 1099
    :sswitch_4
    const-string v1, "LZW"

    goto :goto_0

    .line 1100
    :sswitch_5
    const-string v1, "JPEG (old-style)"

    goto :goto_0

    .line 1101
    :sswitch_6
    const-string v1, "JPEG"

    goto :goto_0

    .line 1102
    :sswitch_7
    const-string v1, "Adobe Deflate"

    goto :goto_0

    .line 1103
    :sswitch_8
    const-string v1, "JBIG B&W"

    goto :goto_0

    .line 1104
    :sswitch_9
    const-string v1, "JBIG Color"

    goto :goto_0

    .line 1105
    :sswitch_a
    const-string v1, "JPEG"

    goto :goto_0

    .line 1106
    :sswitch_b
    const-string v1, "Kodak 262"

    goto :goto_0

    .line 1107
    :sswitch_c
    const-string v1, "Next"

    goto :goto_0

    .line 1108
    :sswitch_d
    const-string v1, "Sony ARW Compressed"

    goto :goto_0

    .line 1109
    :sswitch_e
    const-string v1, "Packed RAW"

    goto :goto_0

    .line 1110
    :sswitch_f
    const-string v1, "Samsung SRW Compressed"

    goto :goto_0

    .line 1111
    :sswitch_10
    const-string v1, "CCIRLEW"

    goto :goto_0

    .line 1112
    :sswitch_11
    const-string v1, "Samsung SRW Compressed 2"

    goto :goto_0

    .line 1113
    :sswitch_12
    const-string v1, "PackBits"

    goto :goto_0

    .line 1114
    :sswitch_13
    const-string v1, "Thunderscan"

    goto :goto_0

    .line 1115
    :sswitch_14
    const-string v1, "Kodak KDC Compressed"

    goto :goto_0

    .line 1116
    :sswitch_15
    const-string v1, "IT8CTPAD"

    goto :goto_0

    .line 1117
    :sswitch_16
    const-string v1, "IT8LW"

    goto :goto_0

    .line 1118
    :sswitch_17
    const-string v1, "IT8MP"

    goto :goto_0

    .line 1119
    :sswitch_18
    const-string v1, "IT8BL"

    goto :goto_0

    .line 1120
    :sswitch_19
    const-string v1, "PixarFilm"

    goto :goto_0

    .line 1121
    :sswitch_1a
    const-string v1, "PixarLog"

    goto :goto_0

    .line 1122
    :sswitch_1b
    const-string v1, "Deflate"

    goto :goto_0

    .line 1123
    :sswitch_1c
    const-string v1, "DCS"

    goto :goto_0

    .line 1124
    :sswitch_1d
    const-string v1, "JBIG"

    goto :goto_0

    .line 1125
    :sswitch_1e
    const-string v1, "SGILog"

    goto :goto_0

    .line 1126
    :sswitch_1f
    const-string v1, "SGILog24"

    goto/16 :goto_0

    .line 1127
    :sswitch_20
    const-string v1, "JPEG 2000"

    goto/16 :goto_0

    .line 1128
    :sswitch_21
    const-string v1, "Nikon NEF Compressed"

    goto/16 :goto_0

    .line 1129
    :sswitch_22
    const-string v1, "JBIG2 TIFF FX"

    goto/16 :goto_0

    .line 1130
    :sswitch_23
    const-string v1, "Microsoft Document Imaging (MDI) Binary Level Codec"

    goto/16 :goto_0

    .line 1131
    :sswitch_24
    const-string v1, "Microsoft Document Imaging (MDI) Progressive Transform Codec"

    goto/16 :goto_0

    .line 1132
    :sswitch_25
    const-string v1, "Microsoft Document Imaging (MDI) Vector"

    goto/16 :goto_0

    .line 1133
    :sswitch_26
    const-string v1, "Lossy JPEG"

    goto/16 :goto_0

    .line 1134
    :sswitch_27
    const-string v1, "Kodak DCR Compressed"

    goto/16 :goto_0

    .line 1135
    :sswitch_28
    const-string v1, "Pentax PEF Compressed"

    goto/16 :goto_0

    .line 1094
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0x63 -> :sswitch_a
        0x106 -> :sswitch_b
        0x7ffe -> :sswitch_c
        0x7fff -> :sswitch_d
        0x8001 -> :sswitch_e
        0x8002 -> :sswitch_f
        0x8003 -> :sswitch_10
        0x8004 -> :sswitch_11
        0x8005 -> :sswitch_12
        0x8029 -> :sswitch_13
        0x8063 -> :sswitch_14
        0x807f -> :sswitch_15
        0x8080 -> :sswitch_16
        0x8081 -> :sswitch_17
        0x8082 -> :sswitch_18
        0x808c -> :sswitch_19
        0x808d -> :sswitch_1a
        0x80b2 -> :sswitch_1b
        0x80b3 -> :sswitch_1c
        0x8765 -> :sswitch_1d
        0x8774 -> :sswitch_1e
        0x8775 -> :sswitch_1f
        0x8798 -> :sswitch_20
        0x8799 -> :sswitch_21
        0x879b -> :sswitch_22
        0x879e -> :sswitch_23
        0x879f -> :sswitch_24
        0x87a0 -> :sswitch_25
        0x884c -> :sswitch_26
        0xfde8 -> :sswitch_27
        0xffff -> :sswitch_28
    .end sparse-switch
.end method

.method public getContrastDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 553
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const v0, 0xa408

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "None"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Soft"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Hard"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomRenderedDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 627
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const v0, 0xa401

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Normal process"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Custom process"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    sparse-switch p1, :sswitch_data_0

    .line 213
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 73
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getInteropIndexDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getInteropVersionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getOrientationDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getResolutionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getYCbCrPositioningDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getXResolutionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 85
    :sswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getYResolutionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 87
    :sswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getImageWidthDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :sswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getImageHeightDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :sswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getBitsPerSampleDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :sswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getPhotometricInterpretationDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :sswitch_b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getRowsPerStripDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :sswitch_c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getStripByteCountsDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    :sswitch_d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getSamplesPerPixelDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :sswitch_e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getPlanarConfigurationDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    :sswitch_f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getYCbCrSubsamplingDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :sswitch_10
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getReferenceBlackWhiteDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :sswitch_11
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getWindowsAuthorDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :sswitch_12
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getWindowsCommentDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :sswitch_13
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getWindowsKeywordsDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :sswitch_14
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getWindowsSubjectDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    :sswitch_15
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getWindowsTitleDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :sswitch_16
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getNewSubfileTypeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :sswitch_17
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getSubfileTypeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :sswitch_18
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getThresholdingDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :sswitch_19
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFillOrderDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 125
    :sswitch_1a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getCfaPattern2Description()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 127
    :sswitch_1b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getExposureTimeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 129
    :sswitch_1c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getShutterSpeedDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 131
    :sswitch_1d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFNumberDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 133
    :sswitch_1e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getCompressedAverageBitsPerPixelDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 135
    :sswitch_1f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getSubjectDistanceDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 137
    :sswitch_20
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getMeteringModeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 139
    :sswitch_21
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getWhiteBalanceDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 141
    :sswitch_22
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFlashDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 143
    :sswitch_23
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFocalLengthDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 145
    :sswitch_24
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getColorSpaceDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 147
    :sswitch_25
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getExifImageWidthDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 149
    :sswitch_26
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getExifImageHeightDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 151
    :sswitch_27
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFocalPlaneResolutionUnitDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 153
    :sswitch_28
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFocalPlaneXResolutionDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 155
    :sswitch_29
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFocalPlaneYResolutionDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 157
    :sswitch_2a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getExposureProgramDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 159
    :sswitch_2b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getApertureValueDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 161
    :sswitch_2c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getMaxApertureValueDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 163
    :sswitch_2d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getSensingMethodDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 165
    :sswitch_2e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getExposureBiasDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 167
    :sswitch_2f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFileSourceDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 169
    :sswitch_30
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getSceneTypeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 171
    :sswitch_31
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getCfaPatternDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 173
    :sswitch_32
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getComponentConfigurationDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 175
    :sswitch_33
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getExifVersionDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 177
    :sswitch_34
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFlashPixVersionDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 179
    :sswitch_35
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIsoEquivalentDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 181
    :sswitch_36
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getUserCommentDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 183
    :sswitch_37
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getCustomRenderedDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 185
    :sswitch_38
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getExposureModeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 187
    :sswitch_39
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getWhiteBalanceModeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 189
    :sswitch_3a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getDigitalZoomRatioDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 191
    :sswitch_3b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->get35mmFilmEquivFocalLengthDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 193
    :sswitch_3c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getSceneCaptureTypeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 195
    :sswitch_3d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getGainControlDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 197
    :sswitch_3e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getContrastDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 199
    :sswitch_3f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getSaturationDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 201
    :sswitch_40
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getSharpnessDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 203
    :sswitch_41
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getSubjectDistanceRangeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 205
    :sswitch_42
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getSensitivityTypeRangeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 207
    :sswitch_43
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getCompressionDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 209
    :sswitch_44
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getJpegProcDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 211
    :sswitch_45
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getLensSpecificationDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 71
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xfe -> :sswitch_16
        0xff -> :sswitch_17
        0x100 -> :sswitch_7
        0x101 -> :sswitch_8
        0x102 -> :sswitch_9
        0x103 -> :sswitch_43
        0x106 -> :sswitch_a
        0x107 -> :sswitch_18
        0x10a -> :sswitch_19
        0x112 -> :sswitch_2
        0x115 -> :sswitch_d
        0x116 -> :sswitch_b
        0x117 -> :sswitch_c
        0x11a -> :sswitch_5
        0x11b -> :sswitch_6
        0x11c -> :sswitch_e
        0x128 -> :sswitch_3
        0x200 -> :sswitch_44
        0x212 -> :sswitch_f
        0x213 -> :sswitch_4
        0x214 -> :sswitch_10
        0x828e -> :sswitch_1a
        0x829a -> :sswitch_1b
        0x829d -> :sswitch_1d
        0x8822 -> :sswitch_2a
        0x8827 -> :sswitch_35
        0x8830 -> :sswitch_42
        0x9000 -> :sswitch_33
        0x9101 -> :sswitch_32
        0x9102 -> :sswitch_1e
        0x9201 -> :sswitch_1c
        0x9202 -> :sswitch_2b
        0x9204 -> :sswitch_2e
        0x9205 -> :sswitch_2c
        0x9206 -> :sswitch_1f
        0x9207 -> :sswitch_20
        0x9208 -> :sswitch_21
        0x9209 -> :sswitch_22
        0x920a -> :sswitch_23
        0x9286 -> :sswitch_36
        0x9c9b -> :sswitch_15
        0x9c9c -> :sswitch_12
        0x9c9d -> :sswitch_11
        0x9c9e -> :sswitch_13
        0x9c9f -> :sswitch_14
        0xa000 -> :sswitch_34
        0xa001 -> :sswitch_24
        0xa002 -> :sswitch_25
        0xa003 -> :sswitch_26
        0xa20e -> :sswitch_28
        0xa20f -> :sswitch_29
        0xa210 -> :sswitch_27
        0xa217 -> :sswitch_2d
        0xa300 -> :sswitch_2f
        0xa301 -> :sswitch_30
        0xa302 -> :sswitch_31
        0xa401 -> :sswitch_37
        0xa402 -> :sswitch_38
        0xa403 -> :sswitch_39
        0xa404 -> :sswitch_3a
        0xa405 -> :sswitch_3b
        0xa406 -> :sswitch_3c
        0xa407 -> :sswitch_3d
        0xa408 -> :sswitch_3e
        0xa409 -> :sswitch_3f
        0xa40a -> :sswitch_40
        0xa40c -> :sswitch_41
        0xa432 -> :sswitch_45
    .end sparse-switch
.end method

.method public getDigitalZoomRatioDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 597
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v2, 0xa404

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 598
    .local v0, "value":Lcom/drew/lang/Rational;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/drew/lang/Rational;->getNumerator()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const-string v1, "Digital zoom not used"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.#"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getExifImageHeightDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 964
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v2, 0xa003

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 965
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pixels"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getExifImageWidthDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 957
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v2, 0xa002

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 958
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pixels"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getExifVersionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 688
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const v0, 0x9000

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExposureBiasDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 876
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v2, 0x9204

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 877
    .local v0, "value":Lcom/drew/lang/Rational;
    if-nez v0, :cond_0

    .line 878
    const/4 v1, 0x0

    .line 879
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getExposureModeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 617
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const v0, 0xa402

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Auto exposure"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Manual exposure"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Auto bracket"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExposureProgramDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const/4 v4, 0x1

    .line 905
    const v0, 0x8822

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Manual control"

    aput-object v3, v1, v2

    const-string v2, "Program normal"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "Aperture priority"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Shutter priority"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Program creative (slow program)"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Program action (high-speed program)"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Portrait mode"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Landscape mode"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExposureTimeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 1166
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v2, 0x829a

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1167
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFNumberDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 1179
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v2, 0x829d

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 1180
    .local v0, "value":Lcom/drew/lang/Rational;
    if-nez v0, :cond_0

    .line 1181
    const/4 v1, 0x0

    .line 1182
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFStopDescription(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFileSourceDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const/4 v4, 0x1

    .line 865
    const v0, 0xa300

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Film Scanner"

    aput-object v3, v1, v2

    const-string v2, "Reflection Print Scanner"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "Digital Still Camera (DSC)"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFillOrderDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const/4 v4, 0x1

    .line 492
    const/16 v0, 0x10a

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Normal"

    aput-object v3, v1, v2

    const-string v2, "Reversed"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 1002
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v2, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v3, 0x9209

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1004
    .local v1, "value":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 1005
    const/4 v2, 0x0

    .line 1028
    :goto_0
    return-object v2

    .line 1007
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1009
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 1010
    const-string v2, "Flash fired"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 1016
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    .line 1017
    const-string v2, ", return detected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    :cond_1
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    .line 1023
    const-string v2, ", auto"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_3

    .line 1026
    const-string v2, ", red-eye reduction"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1012
    :cond_4
    const-string v2, "Flash did not fire"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1019
    :cond_5
    const-string v2, ", return not detected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public getFlashPixVersionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 694
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const v0, 0xa000

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocalLengthDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 984
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v2, 0x920a

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 985
    .local v0, "value":Lcom/drew/lang/Rational;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFocalLengthDescription(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFocalPlaneResolutionUnitDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const/4 v4, 0x1

    .line 946
    const v0, 0xa210

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "(No unit)"

    aput-object v3, v1, v2

    const-string v2, "Inches"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "cm"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocalPlaneXResolutionDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 922
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v2, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v3, 0xa20e

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 923
    .local v0, "rational":Lcom/drew/lang/Rational;
    if-nez v0, :cond_0

    .line 924
    const/4 v2, 0x0

    .line 926
    :goto_0
    return-object v2

    .line 925
    :cond_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFocalPlaneResolutionUnitDescription()Ljava/lang/String;

    move-result-object v1

    .line 926
    .local v1, "unit":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->getReciprocal()Lcom/drew/lang/Rational;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_1

    const-string v2, ""

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getFocalPlaneYResolutionDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 933
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v2, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v3, 0xa20f

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 934
    .local v0, "rational":Lcom/drew/lang/Rational;
    if-nez v0, :cond_0

    .line 935
    const/4 v2, 0x0

    .line 937
    :goto_0
    return-object v2

    .line 936
    :cond_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFocalPlaneResolutionUnitDescription()Ljava/lang/String;

    move-result-object v1

    .line 937
    .local v1, "unit":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->getReciprocal()Lcom/drew/lang/Rational;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_1

    const-string v2, ""

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getGainControlDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 563
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const v0, 0xa407

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "None"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Low gain up"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Low gain down"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "High gain up"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "High gain down"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageHeightDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v2, 0x101

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pixels"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getImageWidthDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 443
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pixels"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getInteropIndexDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 229
    const/4 v1, 0x0

    .line 231
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "R98"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Recommended Exif Interoperability Rules (ExifR98)"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getInteropVersionDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const/4 v0, 0x2

    .line 220
    invoke-virtual {p0, v0, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsoEquivalentDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 677
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v2, 0x8827

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 680
    .local v0, "isoEquiv":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getJpegProcDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 1224
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1225
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1226
    const/4 v1, 0x0

    .line 1231
    :goto_0
    return-object v1

    .line 1227
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1231
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

    .line 1228
    :sswitch_0
    const-string v1, "Baseline"

    goto :goto_0

    .line 1229
    :sswitch_1
    const-string v1, "Lossless"

    goto :goto_0

    .line 1227
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch
.end method

.method public getLensSpecificationDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 527
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const v0, 0xa432

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getLensSpecificationDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxApertureValueDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 885
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v4, 0x9205

    invoke-virtual {v1, v4}, Lcom/drew/metadata/Directory;->getDoubleObject(I)Ljava/lang/Double;

    move-result-object v0

    .line 886
    .local v0, "aperture":Ljava/lang/Double;
    if-nez v0, :cond_0

    .line 887
    const/4 v1, 0x0

    .line 889
    :goto_0
    return-object v1

    .line 888
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/drew/imaging/PhotographicConversions;->apertureToFStop(D)D

    move-result-wide v2

    .line 889
    .local v2, "fStop":D
    invoke-static {v2, v3}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFStopDescription(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMeteringModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 1071
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v2, 0x9207

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1072
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1073
    const/4 v1, 0x0

    .line 1084
    :goto_0
    return-object v1

    .line 1074
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1084
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

    .line 1075
    :sswitch_0
    const-string v1, "Unknown"

    goto :goto_0

    .line 1076
    :sswitch_1
    const-string v1, "Average"

    goto :goto_0

    .line 1077
    :sswitch_2
    const-string v1, "Center weighted average"

    goto :goto_0

    .line 1078
    :sswitch_3
    const-string v1, "Spot"

    goto :goto_0

    .line 1079
    :sswitch_4
    const-string v1, "Multi-spot"

    goto :goto_0

    .line 1080
    :sswitch_5
    const-string v1, "Multi-segment"

    goto :goto_0

    .line 1081
    :sswitch_6
    const-string v1, "Partial"

    goto :goto_0

    .line 1082
    :sswitch_7
    const-string v1, "(Other)"

    goto :goto_0

    .line 1074
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0xff -> :sswitch_7
    .end sparse-switch
.end method

.method public getNewSubfileTypeDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const/4 v4, 0x0

    .line 457
    const/16 v0, 0xfe

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Full-resolution image"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "Reduced-resolution image"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Single page of multi-page image"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Single page of multi-page reduced-resolution image"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Transparency mask"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Transparency mask of reduced-resolution image"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Transparency mask of multi-page image"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Transparency mask of reduced-resolution multi-page image"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrientationDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 301
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const/16 v0, 0x112

    invoke-super {p0, v0}, Lcom/drew/metadata/TagDescriptor;->getOrientationDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotometricInterpretationDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 410
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v2, 0x106

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 411
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 412
    const/4 v1, 0x0

    .line 429
    :goto_0
    return-object v1

    .line 413
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 429
    const-string v1, "Unknown colour space"

    goto :goto_0

    .line 414
    :sswitch_0
    const-string v1, "WhiteIsZero"

    goto :goto_0

    .line 415
    :sswitch_1
    const-string v1, "BlackIsZero"

    goto :goto_0

    .line 416
    :sswitch_2
    const-string v1, "RGB"

    goto :goto_0

    .line 417
    :sswitch_3
    const-string v1, "RGB Palette"

    goto :goto_0

    .line 418
    :sswitch_4
    const-string v1, "Transparency Mask"

    goto :goto_0

    .line 419
    :sswitch_5
    const-string v1, "CMYK"

    goto :goto_0

    .line 420
    :sswitch_6
    const-string v1, "YCbCr"

    goto :goto_0

    .line 421
    :sswitch_7
    const-string v1, "CIELab"

    goto :goto_0

    .line 422
    :sswitch_8
    const-string v1, "ICCLab"

    goto :goto_0

    .line 423
    :sswitch_9
    const-string v1, "ITULab"

    goto :goto_0

    .line 424
    :sswitch_a
    const-string v1, "Color Filter Array"

    goto :goto_0

    .line 425
    :sswitch_b
    const-string v1, "Pixar LogL"

    goto :goto_0

    .line 426
    :sswitch_c
    const-string v1, "Pixar LogLuv"

    goto :goto_0

    .line 427
    :sswitch_d
    const-string v1, "Linear Raw"

    goto :goto_0

    .line 413
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0x8023 -> :sswitch_a
        0x804c -> :sswitch_b
        0x804d -> :sswitch_c
        0x807c -> :sswitch_d
    .end sparse-switch
.end method

.method public getPlanarConfigurationDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const/4 v4, 0x1

    .line 378
    const/16 v0, 0x11c

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Chunky (contiguous for each subsampling pixel)"

    aput-object v3, v1, v2

    const-string v2, "Separate (Y-plane/Cb-plane/Cr-plane format)"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReferenceBlackWhiteDescription()Ljava/lang/String;
    .locals 14
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v10, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v11, 0x214

    invoke-virtual {v10, v11}, Lcom/drew/metadata/Directory;->getIntArray(I)[I

    move-result-object v4

    .line 242
    .local v4, "ints":[I
    if-eqz v4, :cond_0

    array-length v10, v4

    const/4 v11, 0x6

    if-ge v10, v11, :cond_3

    .line 244
    :cond_0
    iget-object v10, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v11, 0x214

    invoke-virtual {v10, v11}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v6

    .line 245
    .local v6, "o":Ljava/lang/Object;
    if-eqz v6, :cond_2

    instance-of v10, v6, [J

    if-eqz v10, :cond_2

    .line 247
    check-cast v6, [J

    .end local v6    # "o":Ljava/lang/Object;
    move-object v5, v6

    check-cast v5, [J

    .line 248
    .local v5, "longs":[J
    array-length v10, v5

    const/4 v11, 0x6

    if-ge v10, v11, :cond_1

    .line 249
    const/4 v10, 0x0

    .line 265
    .end local v5    # "longs":[J
    :goto_0
    return-object v10

    .line 251
    .restart local v5    # "longs":[J
    :cond_1
    array-length v10, v5

    new-array v4, v10, [I

    .line 252
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v10, v5

    if-ge v3, v10, :cond_3

    .line 253
    aget-wide v10, v5, v3

    long-to-int v10, v10

    aput v10, v4, v3

    .line 252
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 256
    .end local v3    # "i":I
    .end local v5    # "longs":[J
    .restart local v6    # "o":Ljava/lang/Object;
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 259
    .end local v6    # "o":Ljava/lang/Object;
    :cond_3
    const/4 v10, 0x0

    aget v2, v4, v10

    .line 260
    .local v2, "blackR":I
    const/4 v10, 0x1

    aget v9, v4, v10

    .line 261
    .local v9, "whiteR":I
    const/4 v10, 0x2

    aget v1, v4, v10

    .line 262
    .local v1, "blackG":I
    const/4 v10, 0x3

    aget v8, v4, v10

    .line 263
    .local v8, "whiteG":I
    const/4 v10, 0x4

    aget v0, v4, v10

    .line 264
    .local v0, "blackB":I
    const/4 v10, 0x5

    aget v7, v4, v10

    .line 265
    .local v7, "whiteB":I
    const-string v10, "[%d,%d,%d] [%d,%d,%d]"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method public getResolutionDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const/4 v4, 0x1

    .line 308
    const/16 v0, 0x128

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "(No unit)"

    aput-object v3, v1, v2

    const-string v2, "Inch"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "cm"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRowsPerStripDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v2, 0x116

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows/strip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSamplesPerPixelDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 388
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v2, 0x115

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " samples/pixel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSaturationDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 543
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const v0, 0xa409

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "None"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Low saturation"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "High saturation"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSceneCaptureTypeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 575
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const v0, 0xa406

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Standard"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Landscape"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Portrait"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Night scene"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSceneTypeDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const/4 v4, 0x1

    .line 700
    const v0, 0xa301

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Directly photographed image"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSensingMethodDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const/4 v4, 0x1

    .line 1191
    const v0, 0xa217

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "(Not defined)"

    aput-object v3, v1, v2

    const-string v2, "One-chip color area sensor"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "Two-chip color area sensor"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Three-chip color area sensor"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Color sequential area sensor"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Trilinear sensor"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Color sequential linear sensor"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSensitivityTypeRangeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 512
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const v0, 0x8830

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Unknown"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Standard Output Sensitivity"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Recommended Exposure Index"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "ISO Speed"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Standard Output Sensitivity and Recommended Exposure Index"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Standard Output Sensitivity and ISO Speed"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Recommended Exposure Index and ISO Speed"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Standard Output Sensitivity, Recommended Exposure Index and ISO Speed"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharpnessDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 533
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const v0, 0xa40a

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "None"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Low"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Hard"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShutterSpeedDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 1173
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const v0, 0x9201

    invoke-super {p0, v0}, Lcom/drew/metadata/TagDescriptor;->getShutterSpeedDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStripByteCountsDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v2, 0x117

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSubfileTypeDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const/4 v4, 0x1

    .line 472
    const/16 v0, 0xff

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Full-resolution image"

    aput-object v3, v1, v2

    const-string v2, "Reduced-resolution image"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "Single page of multi-page image"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectDistanceDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 1144
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v2, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v3, 0x9206

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v1

    .line 1145
    .local v1, "value":Lcom/drew/lang/Rational;
    if-nez v1, :cond_0

    .line 1146
    const/4 v2, 0x0

    .line 1148
    :goto_0
    return-object v2

    .line 1147
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "0.0##"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1148
    .local v0, "formatter":Ljava/text/DecimalFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " metres"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getSubjectDistanceRangeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 501
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const v0, 0xa40c

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Unknown"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Macro"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Close view"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Distant view"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThresholdingDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const/4 v4, 0x1

    .line 482
    const/16 v0, 0x107

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "No dithering or halftoning"

    aput-object v3, v1, v2

    const-string v2, "Ordered dither or halftone"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "Randomized dither"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserCommentDescription()Ljava/lang/String;
    .locals 14
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const/4 v10, 0x0

    const/16 v13, 0xa

    .line 636
    iget-object v11, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v12, 0x9286

    invoke-virtual {v11, v12}, Lcom/drew/metadata/Directory;->getByteArray(I)[B

    move-result-object v2

    .line 637
    .local v2, "commentBytes":[B
    if-nez v2, :cond_0

    .line 669
    :goto_0
    return-object v10

    .line 639
    :cond_0
    array-length v11, v2

    if-nez v11, :cond_1

    .line 640
    const-string v10, ""

    goto :goto_0

    .line 642
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 643
    .local v3, "encodingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "ASCII"

    const-string v12, "file.encoding"

    invoke-static {v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    const-string v11, "UNICODE"

    const-string v12, "UTF-16LE"

    invoke-interface {v3, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    const-string v11, "JIS"

    const-string v12, "Shift-JIS"

    invoke-interface {v3, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    :try_start_0
    array-length v11, v2

    if-lt v11, v13, :cond_5

    .line 649
    new-instance v6, Ljava/lang/String;

    const/4 v11, 0x0

    const/16 v12, 0xa

    invoke-direct {v6, v2, v11, v12}, Ljava/lang/String;-><init>([BII)V

    .line 652
    .local v6, "firstTenBytesString":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 653
    .local v9, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 654
    .local v4, "encodingName":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 655
    .local v1, "charset":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 657
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    .local v8, "j":I
    :goto_1
    if-ge v8, v13, :cond_4

    .line 658
    aget-byte v0, v2, v8

    .line 659
    .local v0, "b":B
    if-eqz v0, :cond_3

    const/16 v11, 0x20

    if-eq v0, v11, :cond_3

    .line 660
    new-instance v11, Ljava/lang/String;

    array-length v12, v2

    sub-int/2addr v12, v8

    invoke-direct {v11, v2, v8, v12, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 657
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 662
    .end local v0    # "b":B
    :cond_4
    new-instance v11, Ljava/lang/String;

    const/16 v12, 0xa

    array-length v13, v2

    add-int/lit8 v13, v13, -0xa

    invoke-direct {v11, v2, v12, v13, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 667
    .end local v1    # "charset":Ljava/lang/String;
    .end local v4    # "encodingName":Ljava/lang/String;
    .end local v6    # "firstTenBytesString":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "j":I
    .end local v9    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    new-instance v11, Ljava/lang/String;

    const-string v12, "file.encoding"

    invoke-static {v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v2, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto/16 :goto_0

    .line 668
    :catch_0
    move-exception v5

    .line 669
    .local v5, "ex":Ljava/io/UnsupportedEncodingException;
    goto/16 :goto_0
.end method

.method public getWhiteBalanceDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 1035
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v2, 0x9208

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1036
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1037
    const/4 v1, 0x0

    .line 1062
    :goto_0
    return-object v1

    .line 1038
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1062
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

    .line 1039
    :sswitch_0
    const-string v1, "Unknown"

    goto :goto_0

    .line 1040
    :sswitch_1
    const-string v1, "Daylight"

    goto :goto_0

    .line 1041
    :sswitch_2
    const-string v1, "Florescent"

    goto :goto_0

    .line 1042
    :sswitch_3
    const-string v1, "Tungsten"

    goto :goto_0

    .line 1043
    :sswitch_4
    const-string v1, "Flash"

    goto :goto_0

    .line 1044
    :sswitch_5
    const-string v1, "Fine Weather"

    goto :goto_0

    .line 1045
    :sswitch_6
    const-string v1, "Cloudy"

    goto :goto_0

    .line 1046
    :sswitch_7
    const-string v1, "Shade"

    goto :goto_0

    .line 1047
    :sswitch_8
    const-string v1, "Daylight Fluorescent"

    goto :goto_0

    .line 1048
    :sswitch_9
    const-string v1, "Day White Fluorescent"

    goto :goto_0

    .line 1049
    :sswitch_a
    const-string v1, "Cool White Fluorescent"

    goto :goto_0

    .line 1050
    :sswitch_b
    const-string v1, "White Fluorescent"

    goto :goto_0

    .line 1051
    :sswitch_c
    const-string v1, "Warm White Fluorescent"

    goto :goto_0

    .line 1052
    :sswitch_d
    const-string v1, "Standard light"

    goto :goto_0

    .line 1053
    :sswitch_e
    const-string v1, "Standard light (B)"

    goto :goto_0

    .line 1054
    :sswitch_f
    const-string v1, "Standard light (C)"

    goto :goto_0

    .line 1055
    :sswitch_10
    const-string v1, "D55"

    goto :goto_0

    .line 1056
    :sswitch_11
    const-string v1, "D65"

    goto :goto_0

    .line 1057
    :sswitch_12
    const-string v1, "D75"

    goto :goto_0

    .line 1058
    :sswitch_13
    const-string v1, "D50"

    goto :goto_0

    .line 1059
    :sswitch_14
    const-string v1, "Studio Tungsten"

    goto :goto_0

    .line 1060
    :sswitch_15
    const-string v1, "(Other)"

    goto :goto_0

    .line 1038
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x9 -> :sswitch_5
        0xa -> :sswitch_6
        0xb -> :sswitch_7
        0xc -> :sswitch_8
        0xd -> :sswitch_9
        0xe -> :sswitch_a
        0xf -> :sswitch_b
        0x10 -> :sswitch_c
        0x11 -> :sswitch_d
        0x12 -> :sswitch_e
        0x13 -> :sswitch_f
        0x14 -> :sswitch_10
        0x15 -> :sswitch_11
        0x16 -> :sswitch_12
        0x17 -> :sswitch_13
        0x18 -> :sswitch_14
        0xff -> :sswitch_15
    .end sparse-switch
.end method

.method public getWhiteBalanceModeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 608
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const v0, 0xa403

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Auto white balance"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Manual white balance"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowsAuthorDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 329
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const v0, 0x9c9d

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getUnicodeDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowsCommentDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 335
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const v0, 0x9c9c

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getUnicodeDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowsKeywordsDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 341
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const v0, 0x9c9e

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getUnicodeDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowsSubjectDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 353
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const v0, 0x9c9f

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getUnicodeDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowsTitleDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 347
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const v0, 0x9c9b

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getUnicodeDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXResolutionDescription()Ljava/lang/String;
    .locals 7
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const/4 v6, 0x1

    .line 283
    iget-object v2, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v3, 0x11a

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v1

    .line 284
    .local v1, "value":Lcom/drew/lang/Rational;
    if-nez v1, :cond_0

    .line 285
    const/4 v2, 0x0

    .line 287
    :goto_0
    return-object v2

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getResolutionDescription()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "unit":Ljava/lang/String;
    const-string v3, "%s dots per %s"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1, v6}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    if-nez v0, :cond_1

    const-string v2, "unit"

    :goto_1
    aput-object v2, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getYCbCrPositioningDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const/4 v4, 0x1

    .line 295
    const/16 v0, 0x213

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Center of pixel array"

    aput-object v3, v1, v2

    const-string v2, "Datum point"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYCbCrSubsamplingDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 359
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v2, 0x212

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getIntArray(I)[I

    move-result-object v0

    .line 360
    .local v0, "positions":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, v3, :cond_1

    .line 361
    :cond_0
    const/4 v1, 0x0

    .line 367
    :goto_0
    return-object v1

    .line 362
    :cond_1
    aget v1, v0, v5

    if-ne v1, v3, :cond_2

    aget v1, v0, v4

    if-ne v1, v4, :cond_2

    .line 363
    const-string v1, "YCbCr4:2:2"

    goto :goto_0

    .line 364
    :cond_2
    aget v1, v0, v5

    if-ne v1, v3, :cond_3

    aget v1, v0, v4

    if-ne v1, v3, :cond_3

    .line 365
    const-string v1, "YCbCr4:2:0"

    goto :goto_0

    .line 367
    :cond_3
    const-string v1, "(Unknown)"

    goto :goto_0
.end method

.method public getYResolutionDescription()Ljava/lang/String;
    .locals 7
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/drew/metadata/exif/ExifDescriptorBase;, "Lcom/drew/metadata/exif/ExifDescriptorBase<TT;>;"
    const/4 v6, 0x1

    .line 271
    iget-object v2, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v3, 0x11b

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v1

    .line 272
    .local v1, "value":Lcom/drew/lang/Rational;
    if-nez v1, :cond_0

    .line 273
    const/4 v2, 0x0

    .line 275
    :goto_0
    return-object v2

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getResolutionDescription()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "unit":Ljava/lang/String;
    const-string v3, "%s dots per %s"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1, v6}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    if-nez v0, :cond_1

    const-string v2, "unit"

    :goto_1
    aput-object v2, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

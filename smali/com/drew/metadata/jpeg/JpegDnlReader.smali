.class public Lcom/drew/metadata/jpeg/JpegDnlReader;
.super Ljava/lang/Object;
.source "JpegDnlReader.java"

# interfaces
.implements Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extract([BLcom/drew/metadata/Metadata;Lcom/drew/imaging/jpeg/JpegSegmentType;)V
    .locals 7
    .param p1, "segmentBytes"    # [B
    .param p2, "metadata"    # Lcom/drew/metadata/Metadata;
    .param p3, "segmentType"    # Lcom/drew/imaging/jpeg/JpegSegmentType;

    .prologue
    .line 57
    const-class v5, Lcom/drew/metadata/jpeg/JpegDirectory;

    invoke-virtual {p2, v5}, Lcom/drew/metadata/Metadata;->getFirstDirectoryOfType(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v0

    check-cast v0, Lcom/drew/metadata/jpeg/JpegDirectory;

    .line 58
    .local v0, "directory":Lcom/drew/metadata/jpeg/JpegDirectory;
    if-nez v0, :cond_1

    .line 59
    new-instance v1, Lcom/drew/metadata/ErrorDirectory;

    invoke-direct {v1}, Lcom/drew/metadata/ErrorDirectory;-><init>()V

    .line 60
    .local v1, "errorDirectory":Lcom/drew/metadata/ErrorDirectory;
    invoke-virtual {p2, v1}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 61
    const-string v5, "DNL segment found without SOFx - illegal JPEG format"

    invoke-virtual {v1, v5}, Lcom/drew/metadata/ErrorDirectory;->addError(Ljava/lang/String;)V

    .line 76
    .end local v1    # "errorDirectory":Lcom/drew/metadata/ErrorDirectory;
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    new-instance v4, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {v4, p1}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    .line 69
    .local v4, "reader":Lcom/drew/lang/SequentialReader;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v0, v5}, Lcom/drew/metadata/jpeg/JpegDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v3

    .line 70
    .local v3, "i":Ljava/lang/Integer;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_0

    .line 71
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v4}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/drew/metadata/jpeg/JpegDirectory;->setInt(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v3    # "i":Ljava/lang/Integer;
    :catch_0
    move-exception v2

    .line 74
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/drew/metadata/jpeg/JpegDirectory;->addError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSegmentTypes()Ljava/lang/Iterable;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/drew/imaging/jpeg/JpegSegmentType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->DNL:Lcom/drew/imaging/jpeg/JpegSegmentType;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readJpegSegments(Ljava/lang/Iterable;Lcom/drew/metadata/Metadata;Lcom/drew/imaging/jpeg/JpegSegmentType;)V
    .locals 3
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "segmentType"    # Lcom/drew/imaging/jpeg/JpegSegmentType;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<[B>;",
            "Lcom/drew/metadata/Metadata;",
            "Lcom/drew/imaging/jpeg/JpegSegmentType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "segments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 51
    .local v1, "segmentBytes":[B
    invoke-virtual {p0, v1, p2, p3}, Lcom/drew/metadata/jpeg/JpegDnlReader;->extract([BLcom/drew/metadata/Metadata;Lcom/drew/imaging/jpeg/JpegSegmentType;)V

    goto :goto_0

    .line 53
    .end local v1    # "segmentBytes":[B
    :cond_0
    return-void
.end method

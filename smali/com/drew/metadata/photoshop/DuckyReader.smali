.class public Lcom/drew/metadata/photoshop/DuckyReader;
.super Ljava/lang/Object;
.source "DuckyReader.java"

# interfaces
.implements Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;


# static fields
.field private static final JPEG_SEGMENT_PREAMBLE:Ljava/lang/String; = "Ducky"
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;)V
    .locals 6
    .param p1, "reader"    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 68
    new-instance v0, Lcom/drew/metadata/photoshop/DuckyDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/photoshop/DuckyDirectory;-><init>()V

    .line 69
    .local v0, "directory":Lcom/drew/metadata/photoshop/DuckyDirectory;
    invoke-virtual {p2, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 75
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v3

    .line 78
    .local v3, "tag":I
    if-nez v3, :cond_0

    .line 115
    .end local v3    # "tag":I
    :goto_1
    return-void

    .line 81
    .restart local v3    # "tag":I
    :cond_0
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v2

    .line 83
    .local v2, "length":I
    packed-switch v3, :pswitch_data_0

    .line 105
    invoke-virtual {p1, v2}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/drew/metadata/photoshop/DuckyDirectory;->setByteArray(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    .end local v2    # "length":I
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/drew/metadata/photoshop/DuckyDirectory;->addError(Ljava/lang/String;)V

    goto :goto_1

    .line 87
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "length":I
    .restart local v3    # "tag":I
    :pswitch_0
    const/4 v4, 0x4

    if-eq v2, v4, :cond_1

    .line 89
    :try_start_1
    const-string v4, "Unexpected length for the quality tag"

    invoke-virtual {v0, v4}, Lcom/drew/metadata/photoshop/DuckyDirectory;->addError(Ljava/lang/String;)V

    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/drew/metadata/photoshop/DuckyDirectory;->setInt(II)V

    goto :goto_0

    .line 98
    :pswitch_1
    const-wide/16 v4, 0x4

    invoke-virtual {p1, v4, v5}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 99
    add-int/lit8 v4, v2, -0x4

    sget-object v5, Lcom/drew/lang/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v4, v5}, Lcom/drew/lang/SequentialReader;->getStringValue(ILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/drew/metadata/photoshop/DuckyDirectory;->setStringValue(ILcom/drew/metadata/StringValue;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
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
    .line 48
    sget-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->APPC:Lcom/drew/imaging/jpeg/JpegSegmentType;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readJpegSegments(Ljava/lang/Iterable;Lcom/drew/metadata/Metadata;Lcom/drew/imaging/jpeg/JpegSegmentType;)V
    .locals 6
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
    .line 53
    .local p1, "segments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    const-string v3, "Ducky"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 55
    .local v1, "preambleLength":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 57
    .local v2, "segmentBytes":[B
    array-length v3, v2

    if-lt v3, v1, :cond_0

    const-string v3, "Ducky"

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    new-instance v3, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {v3, v2, v1}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([BI)V

    invoke-virtual {p0, v3, p2}, Lcom/drew/metadata/photoshop/DuckyReader;->extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;)V

    goto :goto_0

    .line 64
    .end local v2    # "segmentBytes":[B
    :cond_1
    return-void
.end method

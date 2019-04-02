.class public Lcom/drew/metadata/jpeg/JpegCommentReader;
.super Ljava/lang/Object;
.source "JpegCommentReader.java"

# interfaces
.implements Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 42
    sget-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->COM:Lcom/drew/imaging/jpeg/JpegSegmentType;

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
    .line 47
    .local p1, "segments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 48
    .local v2, "segmentBytes":[B
    new-instance v0, Lcom/drew/metadata/jpeg/JpegCommentDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/jpeg/JpegCommentDirectory;-><init>()V

    .line 49
    .local v0, "directory":Lcom/drew/metadata/jpeg/JpegCommentDirectory;
    invoke-virtual {p2, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 52
    const/4 v3, 0x0

    new-instance v4, Lcom/drew/metadata/StringValue;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v3, v4}, Lcom/drew/metadata/jpeg/JpegCommentDirectory;->setStringValue(ILcom/drew/metadata/StringValue;)V

    goto :goto_0

    .line 54
    .end local v0    # "directory":Lcom/drew/metadata/jpeg/JpegCommentDirectory;
    .end local v2    # "segmentBytes":[B
    :cond_0
    return-void
.end method

.class public Lcom/drew/imaging/jpeg/JpegMetadataReader;
.super Ljava/lang/Object;
.source "JpegMetadataReader.java"


# static fields
.field public static final ALL_READERS:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;

    const/4 v1, 0x0

    new-instance v2, Lcom/drew/metadata/jpeg/JpegReader;

    invoke-direct {v2}, Lcom/drew/metadata/jpeg/JpegReader;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/drew/metadata/jpeg/JpegCommentReader;

    invoke-direct {v2}, Lcom/drew/metadata/jpeg/JpegCommentReader;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/drew/metadata/jfif/JfifReader;

    invoke-direct {v2}, Lcom/drew/metadata/jfif/JfifReader;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/drew/metadata/jfxx/JfxxReader;

    invoke-direct {v2}, Lcom/drew/metadata/jfxx/JfxxReader;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/drew/metadata/exif/ExifReader;

    invoke-direct {v2}, Lcom/drew/metadata/exif/ExifReader;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/drew/metadata/xmp/XmpReader;

    invoke-direct {v2}, Lcom/drew/metadata/xmp/XmpReader;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/drew/metadata/icc/IccReader;

    invoke-direct {v2}, Lcom/drew/metadata/icc/IccReader;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/drew/metadata/photoshop/PhotoshopReader;

    invoke-direct {v2}, Lcom/drew/metadata/photoshop/PhotoshopReader;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/drew/metadata/photoshop/DuckyReader;

    invoke-direct {v2}, Lcom/drew/metadata/photoshop/DuckyReader;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/drew/metadata/iptc/IptcReader;

    invoke-direct {v2}, Lcom/drew/metadata/iptc/IptcReader;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/drew/metadata/adobe/AdobeJpegReader;

    invoke-direct {v2}, Lcom/drew/metadata/adobe/AdobeJpegReader;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/drew/metadata/jpeg/JpegDhtReader;

    invoke-direct {v2}, Lcom/drew/metadata/jpeg/JpegDhtReader;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/drew/metadata/jpeg/JpegDnlReader;

    invoke-direct {v2}, Lcom/drew/metadata/jpeg/JpegDnlReader;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/drew/imaging/jpeg/JpegMetadataReader;->ALL_READERS:Ljava/lang/Iterable;

    return-void
.end method

.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Not intended for instantiation"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static process(Lcom/drew/metadata/Metadata;Ljava/io/InputStream;)V
    .locals 1
    .param p0, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "inputStream"    # Ljava/io/InputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/drew/imaging/jpeg/JpegMetadataReader;->process(Lcom/drew/metadata/Metadata;Ljava/io/InputStream;Ljava/lang/Iterable;)V

    .line 110
    return-void
.end method

.method public static process(Lcom/drew/metadata/Metadata;Ljava/io/InputStream;Ljava/lang/Iterable;)V
    .locals 7
    .param p0, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "inputStream"    # Ljava/io/InputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Iterable;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/drew/metadata/Metadata;",
            "Ljava/io/InputStream;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    .local p2, "readers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;>;"
    if-nez p2, :cond_0

    .line 115
    sget-object p2, Lcom/drew/imaging/jpeg/JpegMetadataReader;->ALL_READERS:Ljava/lang/Iterable;

    .line 117
    :cond_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 118
    .local v4, "segmentTypes":Ljava/util/Set;, "Ljava/util/Set<Lcom/drew/imaging/jpeg/JpegSegmentType;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;

    .line 119
    .local v2, "reader":Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;
    invoke-interface {v2}, Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;->getSegmentTypes()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 120
    .local v5, "type":Lcom/drew/imaging/jpeg/JpegSegmentType;
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "reader":Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;
    .end local v5    # "type":Lcom/drew/imaging/jpeg/JpegSegmentType;
    :cond_2
    new-instance v6, Lcom/drew/lang/StreamReader;

    invoke-direct {v6, p1}, Lcom/drew/lang/StreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v6, v4}, Lcom/drew/imaging/jpeg/JpegSegmentReader;->readSegments(Lcom/drew/lang/SequentialReader;Ljava/lang/Iterable;)Lcom/drew/imaging/jpeg/JpegSegmentData;

    move-result-object v3

    .line 126
    .local v3, "segmentData":Lcom/drew/imaging/jpeg/JpegSegmentData;
    invoke-static {p0, p2, v3}, Lcom/drew/imaging/jpeg/JpegMetadataReader;->processJpegSegmentData(Lcom/drew/metadata/Metadata;Ljava/lang/Iterable;Lcom/drew/imaging/jpeg/JpegSegmentData;)V

    .line 127
    return-void
.end method

.method public static processJpegSegmentData(Lcom/drew/metadata/Metadata;Ljava/lang/Iterable;Lcom/drew/imaging/jpeg/JpegSegmentData;)V
    .locals 5
    .param p0, "metadata"    # Lcom/drew/metadata/Metadata;
    .param p2, "segmentData"    # Lcom/drew/imaging/jpeg/JpegSegmentData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/drew/metadata/Metadata;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;",
            ">;",
            "Lcom/drew/imaging/jpeg/JpegSegmentData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "readers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;

    .line 133
    .local v2, "reader":Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;
    invoke-interface {v2}, Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;->getSegmentTypes()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 134
    .local v3, "segmentType":Lcom/drew/imaging/jpeg/JpegSegmentType;
    invoke-virtual {p2, v3}, Lcom/drew/imaging/jpeg/JpegSegmentData;->getSegments(Lcom/drew/imaging/jpeg/JpegSegmentType;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v2, v4, p0, v3}, Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;->readJpegSegments(Ljava/lang/Iterable;Lcom/drew/metadata/Metadata;Lcom/drew/imaging/jpeg/JpegSegmentType;)V

    goto :goto_0

    .line 137
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "reader":Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;
    .end local v3    # "segmentType":Lcom/drew/imaging/jpeg/JpegSegmentType;
    :cond_1
    return-void
.end method

.method public static readMetadata(Ljava/io/File;)Lcom/drew/metadata/Metadata;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/drew/imaging/jpeg/JpegMetadataReader;->readMetadata(Ljava/io/File;Ljava/lang/Iterable;)Lcom/drew/metadata/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public static readMetadata(Ljava/io/File;Ljava/lang/Iterable;)Lcom/drew/metadata/Metadata;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;",
            ">;)",
            "Lcom/drew/metadata/Metadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "readers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;>;"
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 93
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0, p1}, Lcom/drew/imaging/jpeg/JpegMetadataReader;->readMetadata(Ljava/io/InputStream;Ljava/lang/Iterable;)Lcom/drew/metadata/Metadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 95
    .local v1, "metadata":Lcom/drew/metadata/Metadata;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 97
    new-instance v2, Lcom/drew/metadata/file/FileMetadataReader;

    invoke-direct {v2}, Lcom/drew/metadata/file/FileMetadataReader;-><init>()V

    invoke-virtual {v2, p0, v1}, Lcom/drew/metadata/file/FileMetadataReader;->read(Ljava/io/File;Lcom/drew/metadata/Metadata;)V

    .line 98
    return-object v1

    .line 95
    .end local v1    # "metadata":Lcom/drew/metadata/Metadata;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v2
.end method

.method public static readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/drew/imaging/jpeg/JpegMetadataReader;->readMetadata(Ljava/io/InputStream;Ljava/lang/Iterable;)Lcom/drew/metadata/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public static readMetadata(Ljava/io/InputStream;Ljava/lang/Iterable;)Lcom/drew/metadata/Metadata;
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;",
            ">;)",
            "Lcom/drew/metadata/Metadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "readers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;>;"
    new-instance v0, Lcom/drew/metadata/Metadata;

    invoke-direct {v0}, Lcom/drew/metadata/Metadata;-><init>()V

    .line 77
    .local v0, "metadata":Lcom/drew/metadata/Metadata;
    invoke-static {v0, p0, p1}, Lcom/drew/imaging/jpeg/JpegMetadataReader;->process(Lcom/drew/metadata/Metadata;Ljava/io/InputStream;Ljava/lang/Iterable;)V

    .line 78
    return-object v0
.end method

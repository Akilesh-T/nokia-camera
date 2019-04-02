.class public Lcom/drew/metadata/exif/ExifReader;
.super Ljava/lang/Object;
.source "ExifReader.java"

# interfaces
.implements Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final JPEG_SEGMENT_PREAMBLE:Ljava/lang/String; = "Exif\u0000\u0000"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/drew/metadata/exif/ExifReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/drew/metadata/exif/ExifReader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extract(Lcom/drew/lang/RandomAccessReader;Lcom/drew/metadata/Metadata;)V
    .locals 1
    .param p1, "reader"    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/drew/metadata/exif/ExifReader;->extract(Lcom/drew/lang/RandomAccessReader;Lcom/drew/metadata/Metadata;I)V

    .line 72
    return-void
.end method

.method public extract(Lcom/drew/lang/RandomAccessReader;Lcom/drew/metadata/Metadata;I)V
    .locals 1
    .param p1, "reader"    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "readerOffset"    # I

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/drew/metadata/exif/ExifReader;->extract(Lcom/drew/lang/RandomAccessReader;Lcom/drew/metadata/Metadata;ILcom/drew/metadata/Directory;)V

    .line 78
    return-void
.end method

.method public extract(Lcom/drew/lang/RandomAccessReader;Lcom/drew/metadata/Metadata;ILcom/drew/metadata/Directory;)V
    .locals 4
    .param p1, "reader"    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "readerOffset"    # I
    .param p4, "parentDirectory"    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    new-instance v1, Lcom/drew/metadata/exif/ExifTiffHandler;

    invoke-direct {v1, p2, p4}, Lcom/drew/metadata/exif/ExifTiffHandler;-><init>(Lcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V

    .line 87
    .local v1, "exifTiffHandler":Lcom/drew/metadata/exif/ExifTiffHandler;
    :try_start_0
    new-instance v2, Lcom/drew/imaging/tiff/TiffReader;

    invoke-direct {v2}, Lcom/drew/imaging/tiff/TiffReader;-><init>()V

    invoke-virtual {v2, p1, v1, p3}, Lcom/drew/imaging/tiff/TiffReader;->processTiff(Lcom/drew/lang/RandomAccessReader;Lcom/drew/imaging/tiff/TiffHandler;I)V
    :try_end_0
    .catch Lcom/drew/imaging/tiff/TiffProcessingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Lcom/drew/imaging/tiff/TiffProcessingException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception processing TIFF data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/drew/imaging/tiff/TiffProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/ExifTiffHandler;->error(Ljava/lang/String;)V

    .line 95
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Lcom/drew/imaging/tiff/TiffProcessingException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 96
    .end local v0    # "e":Lcom/drew/imaging/tiff/TiffProcessingException;
    :catch_1
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception processing TIFF data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/ExifTiffHandler;->error(Ljava/lang/String;)V

    .line 99
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

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
    .line 53
    sget-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP1:Lcom/drew/imaging/jpeg/JpegSegmentType;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readJpegSegments(Ljava/lang/Iterable;Lcom/drew/metadata/Metadata;Lcom/drew/imaging/jpeg/JpegSegmentType;)V
    .locals 5
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
    .line 58
    .local p1, "segments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    sget-boolean v2, Lcom/drew/metadata/exif/ExifReader;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP1:Lcom/drew/imaging/jpeg/JpegSegmentType;

    if-eq p3, v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 60
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 62
    .local v1, "segmentBytes":[B
    array-length v2, v1

    const-string v3, "Exif\u0000\u0000"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_1

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Exif\u0000\u0000"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const-string v3, "Exif\u0000\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    new-instance v2, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {v2, v1}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    const-string v3, "Exif\u0000\u0000"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, p2, v3}, Lcom/drew/metadata/exif/ExifReader;->extract(Lcom/drew/lang/RandomAccessReader;Lcom/drew/metadata/Metadata;I)V

    goto :goto_0

    .line 66
    .end local v1    # "segmentBytes":[B
    :cond_2
    return-void
.end method

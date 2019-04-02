.class public Lcom/drew/imaging/FileTypeDetector;
.super Ljava/lang/Object;
.source "FileTypeDetector.java"


# static fields
.field private static final _root:Lcom/drew/lang/ByteTrie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/drew/lang/ByteTrie",
            "<",
            "Lcom/drew/imaging/FileType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    new-instance v0, Lcom/drew/lang/ByteTrie;

    invoke-direct {v0}, Lcom/drew/lang/ByteTrie;-><init>()V

    sput-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    .line 39
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Unknown:Lcom/drew/imaging/FileType;

    invoke-virtual {v0, v1}, Lcom/drew/lang/ByteTrie;->setDefaultValue(Ljava/lang/Object;)V

    .line 43
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Jpeg:Lcom/drew/imaging/FileType;

    new-array v2, v5, [[B

    new-array v3, v6, [B

    fill-array-data v3, :array_0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 44
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Tiff:Lcom/drew/imaging/FileType;

    new-array v2, v6, [[B

    const-string v3, "II"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v2, v4

    new-array v3, v6, [B

    fill-array-data v3, :array_1

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 45
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Tiff:Lcom/drew/imaging/FileType;

    new-array v2, v6, [[B

    const-string v3, "MM"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v2, v4

    new-array v3, v6, [B

    fill-array-data v3, :array_2

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 46
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Psd:Lcom/drew/imaging/FileType;

    new-array v2, v5, [[B

    const-string v3, "8BPS"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 47
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Png:Lcom/drew/imaging/FileType;

    new-array v2, v5, [[B

    const/16 v3, 0x10

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 48
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Bmp:Lcom/drew/imaging/FileType;

    new-array v2, v5, [[B

    const-string v3, "BM"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 49
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Gif:Lcom/drew/imaging/FileType;

    new-array v2, v5, [[B

    const-string v3, "GIF87a"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 50
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Gif:Lcom/drew/imaging/FileType;

    new-array v2, v5, [[B

    const-string v3, "GIF89a"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 51
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Ico:Lcom/drew/imaging/FileType;

    new-array v2, v5, [[B

    new-array v3, v8, [B

    fill-array-data v3, :array_4

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 52
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Pcx:Lcom/drew/imaging/FileType;

    new-array v2, v5, [[B

    new-array v3, v7, [B

    fill-array-data v3, :array_5

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 53
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Pcx:Lcom/drew/imaging/FileType;

    new-array v2, v5, [[B

    new-array v3, v7, [B

    fill-array-data v3, :array_6

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 54
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Pcx:Lcom/drew/imaging/FileType;

    new-array v2, v5, [[B

    new-array v3, v7, [B

    fill-array-data v3, :array_7

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 55
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Pcx:Lcom/drew/imaging/FileType;

    new-array v2, v5, [[B

    new-array v3, v7, [B

    fill-array-data v3, :array_8

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 56
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Riff:Lcom/drew/imaging/FileType;

    new-array v2, v5, [[B

    const-string v3, "RIFF"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 58
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Arw:Lcom/drew/imaging/FileType;

    new-array v2, v6, [[B

    const-string v3, "II"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v2, v4

    new-array v3, v8, [B

    fill-array-data v3, :array_9

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 59
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Crw:Lcom/drew/imaging/FileType;

    new-array v2, v7, [[B

    const-string v3, "II"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v2, v4

    new-array v3, v8, [B

    fill-array-data v3, :array_a

    aput-object v3, v2, v5

    const-string v3, "HEAPCCDR"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 60
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Cr2:Lcom/drew/imaging/FileType;

    new-array v2, v6, [[B

    const-string v3, "II"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0x8

    new-array v3, v3, [B

    fill-array-data v3, :array_b

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 61
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Nef:Lcom/drew/imaging/FileType;

    new-array v2, v6, [[B

    const-string v3, "MM"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_c

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 62
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Orf:Lcom/drew/imaging/FileType;

    new-array v2, v6, [[B

    const-string v3, "IIRO"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v2, v4

    new-array v3, v6, [B

    fill-array-data v3, :array_d

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 63
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Orf:Lcom/drew/imaging/FileType;

    new-array v2, v6, [[B

    const-string v3, "MMOR"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v2, v4

    new-array v3, v6, [B

    fill-array-data v3, :array_e

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 64
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Orf:Lcom/drew/imaging/FileType;

    new-array v2, v6, [[B

    const-string v3, "IIRS"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v2, v4

    new-array v3, v6, [B

    fill-array-data v3, :array_f

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 65
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Raf:Lcom/drew/imaging/FileType;

    new-array v2, v5, [[B

    const-string v3, "FUJIFILMCCD-RAW"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 66
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Rw2:Lcom/drew/imaging/FileType;

    new-array v2, v6, [[B

    const-string v3, "II"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v2, v4

    new-array v3, v6, [B

    fill-array-data v3, :array_10

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 67
    return-void

    .line 43
    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    .line 44
    nop

    :array_1
    .array-data 1
        0x2at
        0x0t
    .end array-data

    .line 45
    nop

    :array_2
    .array-data 1
        0x0t
        0x2at
    .end array-data

    .line 47
    nop

    :array_3
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
        0x0t
        0x0t
        0x0t
        0xdt
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    .line 51
    :array_4
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    .line 52
    :array_5
    .array-data 1
        0xat
        0x0t
        0x1t
    .end array-data

    .line 53
    :array_6
    .array-data 1
        0xat
        0x2t
        0x1t
    .end array-data

    .line 54
    :array_7
    .array-data 1
        0xat
        0x3t
        0x1t
    .end array-data

    .line 55
    :array_8
    .array-data 1
        0xat
        0x5t
        0x1t
    .end array-data

    .line 58
    :array_9
    .array-data 1
        0x2at
        0x0t
        0x8t
        0x0t
    .end array-data

    .line 59
    :array_a
    .array-data 1
        0x1at
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 60
    :array_b
    .array-data 1
        0x2at
        0x0t
        0x10t
        0x0t
        0x0t
        0x0t
        0x43t
        0x52t
    .end array-data

    .line 61
    :array_c
    .array-data 1
        0x0t
        0x2at
        0x0t
        0x0t
        0x0t
        -0x80t
        0x0t
    .end array-data

    .line 62
    :array_d
    .array-data 1
        0x8t
        0x0t
    .end array-data

    .line 63
    nop

    :array_e
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 64
    nop

    :array_f
    .array-data 1
        0x8t
        0x0t
    .end array-data

    .line 66
    nop

    :array_10
    .array-data 1
        0x55t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Not intended for instantiation"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static detectFileType(Ljava/io/BufferedInputStream;)Lcom/drew/imaging/FileType;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/BufferedInputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->markSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Stream must support mark/reset"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 90
    :cond_0
    sget-object v3, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    invoke-virtual {v3}, Lcom/drew/lang/ByteTrie;->getMaxDepth()I

    move-result v2

    .line 92
    .local v2, "maxByteCount":I
    invoke-virtual {p0, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 94
    new-array v0, v2, [B

    .line 95
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    .line 97
    .local v1, "bytesRead":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 98
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Stream ended before file\'s magic number could be determined."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    :cond_1
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    .line 103
    sget-object v3, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    invoke-virtual {v3, v0}, Lcom/drew/lang/ByteTrie;->find([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/drew/imaging/FileType;

    return-object v3
.end method

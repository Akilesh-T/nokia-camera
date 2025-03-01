.class public Lnet/lingala/zip4j/unzip/UnzipEngine;
.super Ljava/lang/Object;
.source "UnzipEngine.java"


# instance fields
.field private crc:Ljava/util/zip/CRC32;

.field private currSplitFileCounter:I

.field private decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

.field private fileHeader:Lnet/lingala/zip4j/model/FileHeader;

.field private localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

.field private zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 2
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    .line 58
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 59
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Invalid parameters passed to StoreUnzip. One or more of the parameters were null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    iput-object p1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 63
    iput-object p2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    .line 64
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->crc:Ljava/util/zip/CRC32;

    .line 65
    return-void
.end method

.method private calculateAESSaltLength(Lnet/lingala/zip4j/model/AESExtraDataRecord;)I
    .locals 2
    .param p1, "aesExtraDataRecord"    # Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 252
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "unable to determine salt length: AESExtraDataRecord is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesStrength()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 262
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "unable to determine salt length: invalid aes key strength"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :pswitch_0
    const/16 v0, 0x8

    .line 260
    :goto_0
    return v0

    .line 258
    :pswitch_1
    const/16 v0, 0xc

    goto :goto_0

    .line 260
    :pswitch_2
    const/16 v0, 0x10

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private checkLocalHeader()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 327
    const/4 v2, 0x0

    .line 329
    .local v2, "rafForLH":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-direct {p0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->checkSplitFile()Ljava/io/RandomAccessFile;

    move-result-object v2

    .line 331
    if-nez v2, :cond_0

    .line 332
    new-instance v3, Ljava/io/RandomAccessFile;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "r"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v2    # "rafForLH":Ljava/io/RandomAccessFile;
    .local v3, "rafForLH":Ljava/io/RandomAccessFile;
    move-object v2, v3

    .line 335
    .end local v3    # "rafForLH":Ljava/io/RandomAccessFile;
    .restart local v2    # "rafForLH":Ljava/io/RandomAccessFile;
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/core/HeaderReader;

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/core/HeaderReader;-><init>(Ljava/io/RandomAccessFile;)V

    .line 336
    .local v1, "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    iget-object v4, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1, v4}, Lnet/lingala/zip4j/core/HeaderReader;->readLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v4

    iput-object v4, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 338
    iget-object v4, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    if-nez v4, :cond_2

    .line 339
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    const-string v5, "error reading local file header. Is this a valid zip file?"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    .end local v1    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v4, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    .line 351
    if-eqz v2, :cond_1

    .line 353
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 360
    :cond_1
    :goto_0
    throw v4

    .line 343
    .restart local v1    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    :cond_2
    :try_start_3
    iget-object v4, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressionMethod()I

    move-result v4

    iget-object v5, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->getCompressionMethod()I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    if-eq v4, v5, :cond_4

    .line 351
    if-eqz v2, :cond_3

    .line 353
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 344
    :cond_3
    :goto_1
    const/4 v4, 0x0

    .line 347
    :goto_2
    return v4

    .line 351
    :cond_4
    if-eqz v2, :cond_5

    .line 353
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 347
    :cond_5
    :goto_3
    const/4 v4, 0x1

    goto :goto_2

    .line 354
    :catch_1
    move-exception v4

    goto :goto_1

    .line 356
    :catch_2
    move-exception v4

    goto :goto_1

    .line 354
    :catch_3
    move-exception v4

    goto :goto_3

    .line 356
    :catch_4
    move-exception v4

    goto :goto_3

    .line 354
    .end local v1    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    :catch_5
    move-exception v5

    goto :goto_0

    .line 356
    :catch_6
    move-exception v5

    goto :goto_0
.end method

.method private checkSplitFile()Ljava/io/RandomAccessFile;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 364
    iget-object v6, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 365
    iget-object v6, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v1

    .line 366
    .local v1, "diskNumberStartOfFile":I
    add-int/lit8 v6, v1, 0x1

    iput v6, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    .line 367
    iget-object v6, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "curZipFile":Ljava/lang/String;
    const/4 v3, 0x0

    .line 369
    .local v3, "partFile":Ljava/lang/String;
    iget-object v6, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v6

    if-ne v1, v6, :cond_0

    .line 370
    iget-object v6, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v3

    .line 380
    :goto_0
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v4, v3, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .local v4, "raf":Ljava/io/RandomAccessFile;
    iget v6, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 383
    const/4 v6, 0x4

    new-array v5, v6, [B

    .line 384
    .local v5, "splitSig":[B
    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->read([B)I

    .line 385
    const/4 v6, 0x0

    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v6

    int-to-long v6, v6

    const-wide/32 v8, 0x8074b50

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 386
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    const-string v7, "invalid first part split file signature"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 390
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .end local v5    # "splitSig":[B
    :catch_0
    move-exception v2

    .line 391
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v6, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 372
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    const/16 v6, 0x9

    if-lt v1, v6, :cond_1

    .line 373
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".z"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 374
    goto :goto_0

    .line 375
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".z0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 392
    :catch_1
    move-exception v2

    .line 393
    .local v2, "e":Ljava/io/IOException;
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v6, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 396
    .end local v0    # "curZipFile":Ljava/lang/String;
    .end local v1    # "diskNumberStartOfFile":I
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "partFile":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    :cond_3
    return-object v4
.end method

.method private closeStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 482
    if-eqz p1, :cond_0

    .line 483
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :cond_0
    if-eqz p2, :cond_1

    .line 496
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 500
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 507
    :cond_1
    :goto_1
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/io/IOException;
    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 488
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, " - Wrong Password?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 489
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 492
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 494
    if-eqz p2, :cond_2

    .line 496
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 500
    :goto_2
    :try_start_5
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 506
    :cond_2
    :goto_3
    throw v1

    .line 494
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_3
    if-eqz p2, :cond_1

    .line 496
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 500
    :goto_4
    :try_start_7
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 503
    :catch_1
    move-exception v1

    goto :goto_1

    .line 497
    :catch_2
    move-exception v1

    goto :goto_4

    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_0

    .line 503
    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v2

    goto :goto_3
.end method

.method private createFileHandler(Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 4
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 400
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 401
    :cond_0
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "input parameter is null in getFilePointer"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 405
    :cond_1
    const/4 v1, 0x0

    .line 406
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 407
    invoke-direct {p0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->checkSplitFile()Ljava/io/RandomAccessFile;

    move-result-object v1

    .line 411
    :goto_0
    return-object v1

    .line 409
    :cond_2
    new-instance v1, Ljava/io/RandomAccessFile;

    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 412
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 414
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getAESPasswordVerifier(Ljava/io/RandomAccessFile;)[B
    .locals 3
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 242
    const/4 v2, 0x2

    :try_start_0
    new-array v1, v2, [B

    .line 243
    .local v1, "pvBytes":[B
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    return-object v1

    .line 245
    .end local v1    # "pvBytes":[B
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getAESSalt(Ljava/io/RandomAccessFile;)[B
    .locals 6
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v3

    if-nez v3, :cond_0

    .line 227
    const/4 v2, 0x0

    .line 234
    :goto_0
    return-object v2

    .line 230
    :cond_0
    :try_start_0
    iget-object v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    .line 231
    .local v0, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->calculateAESSaltLength(Lnet/lingala/zip4j/model/AESExtraDataRecord;)I

    move-result v3

    new-array v2, v3, [B

    .line 232
    .local v2, "saltBytes":[B
    iget-object v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->getOffsetStartOfData()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 233
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    .end local v0    # "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .end local v2    # "saltBytes":[B
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v3, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getOutputFileNameWithPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "outPath"    # Ljava/lang/String;
    .param p2, "newFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    move-object v0, p2

    .line 449
    :goto_0
    const-string v1, "file.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 452
    :goto_1
    return-object v1

    .line 447
    :cond_0
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 452
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "file.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getOutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 5
    .param p1, "outPath"    # Ljava/lang/String;
    .param p2, "newFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 421
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    const-string v4, "invalid output path"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 425
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getOutputFileNameWithPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 427
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 428
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 431
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 432
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 435
    :cond_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    return-object v2

    .line 437
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v3, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getStandardDecrypterHeaderBytes(Ljava/io/RandomAccessFile;)[B
    .locals 4
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 214
    const/16 v2, 0xc

    :try_start_0
    new-array v1, v2, [B

    .line 215
    .local v1, "headerBytes":[B
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getOffsetStartOfData()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 216
    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 217
    return-object v1

    .line 218
    .end local v1    # "headerBytes":[B
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 220
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private init(Ljava/io/RandomAccessFile;)V
    .locals 3
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    if-nez v1, :cond_0

    .line 184
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "local file header is null, cannot initialize input stream"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->initDecrypter(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Lnet/lingala/zip4j/exception/ZipException;
    throw v0

    .line 191
    .end local v0    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :catch_1
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private initDecrypter(Ljava/io/RandomAccessFile;)V
    .locals 4
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "local file header is null, cannot init decrypter"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()I

    move-result v0

    if-nez v0, :cond_2

    .line 203
    new-instance v0, Lnet/lingala/zip4j/crypto/StandardDecrypter;

    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getStandardDecrypterHeaderBytes(Ljava/io/RandomAccessFile;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/crypto/StandardDecrypter;-><init>(Lnet/lingala/zip4j/model/FileHeader;[B)V

    iput-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    .line 210
    :cond_1
    :goto_0
    return-void

    .line 204
    :cond_2
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_3

    .line 205
    new-instance v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getAESSalt(Ljava/io/RandomAccessFile;)[B

    move-result-object v2

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getAESPasswordVerifier(Ljava/io/RandomAccessFile;)[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/lingala/zip4j/crypto/AESDecrypter;-><init>(Lnet/lingala/zip4j/model/LocalFileHeader;[B[B)V

    iput-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    goto :goto_0

    .line 207
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "unsupported encryption method"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public checkCRC()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x0

    .line 267
    iget-object v6, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    if-eqz v6, :cond_4

    .line 268
    iget-object v6, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/FileHeader;->getEncryptionMethod()I

    move-result v6

    const/16 v7, 0x63

    if-ne v6, v7, :cond_2

    .line 269
    iget-object v6, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    instance-of v6, v6, Lnet/lingala/zip4j/crypto/AESDecrypter;

    if-eqz v6, :cond_4

    .line 270
    iget-object v6, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    check-cast v6, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v6}, Lnet/lingala/zip4j/crypto/AESDecrypter;->getCalculatedAuthenticationBytes()[B

    move-result-object v5

    .line 271
    .local v5, "tmpMacBytes":[B
    iget-object v6, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    check-cast v6, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v6}, Lnet/lingala/zip4j/crypto/AESDecrypter;->getStoredMac()[B

    move-result-object v4

    .line 272
    .local v4, "storedMac":[B
    new-array v2, v9, [B

    .line 274
    .local v2, "calculatedMac":[B
    if-eqz v2, :cond_0

    if-nez v4, :cond_1

    .line 275
    :cond_0
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "CRC (MAC) check failed for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 278
    :cond_1
    invoke-static {v5, v8, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_4

    .line 281
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "invalid CRC (MAC) for file: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 285
    .end local v2    # "calculatedMac":[B
    .end local v4    # "storedMac":[B
    .end local v5    # "tmpMacBytes":[B
    :cond_2
    iget-object v6, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v6}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    const-wide v8, 0xffffffffL

    and-long v0, v6, v8

    .line 286
    .local v0, "calculatedCRC":J
    iget-object v6, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/FileHeader;->getCrc32()J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-eqz v6, :cond_4

    .line 287
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "invalid CRC for file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, "errMsg":Ljava/lang/String;
    iget-object v6, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 289
    iget-object v6, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()I

    move-result v6

    if-nez v6, :cond_3

    .line 290
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " - Wrong Password?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 292
    :cond_3
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v6, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 296
    .end local v0    # "calculatedCRC":J
    .end local v3    # "errMsg":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public getDecrypter()Lnet/lingala/zip4j/crypto/IDecrypter;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    return-object v0
.end method

.method public getFileHeader()Lnet/lingala/zip4j/model/FileHeader;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    return-object v0
.end method

.method public getInputStream()Lnet/lingala/zip4j/io/ZipInputStream;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0xc

    const/16 v12, 0x63

    .line 108
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v6, "file header is null, cannot get inputstream"

    invoke-direct {v0, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    const/4 v1, 0x0

    .line 114
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    const-string v0, "r"

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->createFileHandler(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v1

    .line 115
    const-string v9, "local header and file header do not match"

    .line 118
    .local v9, "errMsg":Ljava/lang/String;
    invoke-direct {p0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->checkLocalHeader()Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    .end local v9    # "errMsg":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 161
    .local v8, "e":Lnet/lingala/zip4j/exception/ZipException;
    if-eqz v1, :cond_1

    .line 163
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 168
    :cond_1
    :goto_0
    throw v8

    .line 121
    .end local v8    # "e":Lnet/lingala/zip4j/exception/ZipException;
    .restart local v9    # "errMsg":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-direct {p0, v1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->init(Ljava/io/RandomAccessFile;)V

    .line 123
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v4

    .line 124
    .local v4, "comprSize":J
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getOffsetStartOfData()J

    move-result-wide v2

    .line 126
    .local v2, "offsetStartOfData":J
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()I

    move-result v0

    if-ne v0, v12, :cond_7

    .line 128
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    instance-of v0, v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    if-eqz v0, :cond_6

    .line 129
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    check-cast v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/AESDecrypter;->getSaltLength()I

    move-result v6

    .line 130
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    check-cast v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/AESDecrypter;->getPasswordVerifierLength()I

    move-result v0

    .line 129
    add-int/2addr v0, v6

    .line 130
    add-int/lit8 v0, v0, 0xa

    int-to-long v10, v0

    sub-long/2addr v4, v10

    .line 131
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    check-cast v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/AESDecrypter;->getSaltLength()I

    move-result v6

    .line 132
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    check-cast v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/AESDecrypter;->getPasswordVerifierLength()I

    move-result v0

    add-int/2addr v0, v6

    int-to-long v10, v0

    add-long/2addr v2, v10

    .line 143
    :cond_3
    :goto_1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getCompressionMethod()I

    move-result v7

    .line 144
    .local v7, "compressionMethod":I
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getEncryptionMethod()I

    move-result v0

    if-ne v0, v12, :cond_4

    .line 145
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 146
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getCompressionMethod()I

    move-result v7

    .line 151
    :cond_4
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 152
    sparse-switch v7, :sswitch_data_0

    .line 158
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v6, "compression type not supported"

    invoke-direct {v0, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 169
    .end local v2    # "offsetStartOfData":J
    .end local v4    # "comprSize":J
    .end local v7    # "compressionMethod":I
    .end local v9    # "errMsg":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 170
    .local v8, "e":Ljava/lang/Exception;
    if-eqz v1, :cond_5

    .line 172
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 176
    :cond_5
    :goto_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 134
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v2    # "offsetStartOfData":J
    .restart local v4    # "comprSize":J
    .restart local v9    # "errMsg":Ljava/lang/String;
    :cond_6
    :try_start_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "invalid decryptor when trying to calculate compressed size for AES encrypted file: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    iget-object v10, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 134
    invoke-direct {v0, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_7
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()I

    move-result v0

    if-nez v0, :cond_3

    .line 138
    sub-long/2addr v4, v10

    .line 139
    add-long/2addr v2, v10

    goto :goto_1

    .line 148
    .restart local v7    # "compressionMethod":I
    :cond_8
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "AESExtraDataRecord does not exist for AES encrypted file: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :sswitch_0
    new-instance v10, Lnet/lingala/zip4j/io/ZipInputStream;

    new-instance v0, Lnet/lingala/zip4j/io/PartInputStream;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lnet/lingala/zip4j/io/PartInputStream;-><init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/UnzipEngine;)V

    invoke-direct {v10, v0}, Lnet/lingala/zip4j/io/ZipInputStream;-><init>(Lnet/lingala/zip4j/io/BaseInputStream;)V

    move-object v0, v10

    .line 156
    :goto_3
    return-object v0

    :sswitch_1
    new-instance v10, Lnet/lingala/zip4j/io/ZipInputStream;

    new-instance v0, Lnet/lingala/zip4j/io/InflaterInputStream;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lnet/lingala/zip4j/io/InflaterInputStream;-><init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/UnzipEngine;)V

    invoke-direct {v10, v0}, Lnet/lingala/zip4j/io/ZipInputStream;-><init>(Lnet/lingala/zip4j/io/BaseInputStream;)V
    :try_end_4
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v10

    goto :goto_3

    .line 164
    .end local v2    # "offsetStartOfData":J
    .end local v4    # "comprSize":J
    .end local v7    # "compressionMethod":I
    .end local v9    # "errMsg":Ljava/lang/String;
    .local v8, "e":Lnet/lingala/zip4j/exception/ZipException;
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 173
    .local v8, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    goto :goto_2

    .line 152
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public getLocalFileHeader()Lnet/lingala/zip4j/model/LocalFileHeader;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    return-object v0
.end method

.method public getZipModel()Lnet/lingala/zip4j/model/ZipModel;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    return-object v0
.end method

.method public startNextSplitFile()Ljava/io/RandomAccessFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 458
    iget-object v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "currZipFile":Ljava/lang/String;
    const/4 v2, 0x0

    .line 460
    .local v2, "partFile":Ljava/lang/String;
    iget v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    iget-object v4, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 461
    iget-object v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v2

    .line 469
    :goto_0
    iget v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    .line 471
    :try_start_0
    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 472
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "zip split file does not exist: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :catch_0
    move-exception v1

    .line 475
    .local v1, "e":Lnet/lingala/zip4j/exception/ZipException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v1}, Lnet/lingala/zip4j/exception/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 463
    .end local v1    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :cond_0
    iget v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_1

    .line 464
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".z"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 465
    goto :goto_0

    .line 466
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".z0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 477
    :cond_2
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public unzipFile(Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V
    .locals 8
    .param p1, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p2, "outPath"    # Ljava/lang/String;
    .param p3, "newFileName"    # Ljava/lang/String;
    .param p4, "unzipParameters"    # Lnet/lingala/zip4j/model/UnzipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v5, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    if-eqz v5, :cond_0

    invoke-static {p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 70
    :cond_0
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    const-string v6, "Invalid parameters passed during unzipping file. One or more of the parameters were null"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 72
    :cond_1
    const/4 v2, 0x0

    .line 73
    .local v2, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 75
    .local v3, "os":Ljava/io/OutputStream;
    const/16 v5, 0x1000

    :try_start_0
    new-array v0, v5, [B

    .line 76
    .local v0, "buff":[B
    const/4 v4, -0x1

    .line 78
    .local v4, "readLength":I
    invoke-virtual {p0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getInputStream()Lnet/lingala/zip4j/io/ZipInputStream;

    move-result-object v2

    .line 79
    invoke-direct {p0, p2, p3}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getOutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 81
    :cond_2
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 91
    invoke-direct {p0, v2, v3}, Lnet/lingala/zip4j/unzip/UnzipEngine;->closeStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 92
    const/4 v2, 0x0

    .line 93
    const/4 v3, 0x0

    .line 94
    iget-object v5, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    new-instance v6, Ljava/io/File;

    invoke-direct {p0, p2, p3}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getOutputFileNameWithPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6, p4}, Lnet/lingala/zip4j/unzip/UnzipUtil;->applyFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;Lnet/lingala/zip4j/model/UnzipParameters;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-direct {p0, v2, v3}, Lnet/lingala/zip4j/unzip/UnzipEngine;->closeStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 102
    const/4 v2, 0x0

    .line 103
    const/4 v3, 0x0

    .line 105
    :goto_0
    return-void

    .line 82
    :cond_3
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v3, v0, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 83
    int-to-long v6, v4

    invoke-virtual {p1, v6, v7}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V

    .line 84
    invoke-virtual {p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 86
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    invoke-direct {p0, v2, v3}, Lnet/lingala/zip4j/unzip/UnzipEngine;->closeStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 102
    const/4 v2, 0x0

    .line 103
    const/4 v3, 0x0

    .line 87
    goto :goto_0

    .line 96
    .end local v0    # "buff":[B
    .end local v4    # "readLength":I
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v5, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 101
    invoke-direct {p0, v2, v3}, Lnet/lingala/zip4j/unzip/UnzipEngine;->closeStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 102
    const/4 v2, 0x0

    .line 103
    const/4 v3, 0x0

    .line 104
    throw v5

    .line 98
    :catch_1
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v5, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public updateCRC(I)V
    .locals 1
    .param p1, "b"    # I

    .prologue
    .line 510
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update(I)V

    .line 511
    return-void
.end method

.method public updateCRC([BII)V
    .locals 1
    .param p1, "buff"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 514
    if-eqz p1, :cond_0

    .line 515
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 517
    :cond_0
    return-void
.end method

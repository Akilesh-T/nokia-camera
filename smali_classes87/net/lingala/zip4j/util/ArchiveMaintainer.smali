.class public Lnet/lingala/zip4j/util/ArchiveMaintainer;
.super Ljava/lang/Object;
.source "ArchiveMaintainer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic access$0(Lnet/lingala/zip4j/util/ArchiveMaintainer;Lnet/lingala/zip4j/model/ZipModel;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->initMergeSplitZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method private calculateTotalWorkForMergeOp(Lnet/lingala/zip4j/model/ZipModel;)J
    .locals 12
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 722
    const-wide/16 v6, 0x0

    .line 723
    .local v6, "totSize":J
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 724
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v4

    .line 725
    .local v4, "totNoOfSplitFiles":I
    const/4 v2, 0x0

    .line 726
    .local v2, "partFile":Ljava/lang/String;
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, "curZipFile":Ljava/lang/String;
    const/4 v3, 0x0

    .line 728
    .local v3, "partNumber":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-le v1, v4, :cond_1

    .line 743
    .end local v0    # "curZipFile":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "partFile":Ljava/lang/String;
    .end local v3    # "partNumber":I
    .end local v4    # "totNoOfSplitFiles":I
    :cond_0
    return-wide v6

    .line 729
    .restart local v0    # "curZipFile":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "partFile":Ljava/lang/String;
    .restart local v3    # "partNumber":I
    .restart local v4    # "totNoOfSplitFiles":I
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v5

    if-ne v3, v5, :cond_2

    .line 730
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v2

    .line 739
    :goto_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 728
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 732
    :cond_2
    const/16 v5, 0x9

    if-lt v3, v5, :cond_3

    .line 733
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".z"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 734
    goto :goto_1

    .line 735
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".z0"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private calculateTotalWorkForRemoveOp(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;)J
    .locals 4
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 707
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v0

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 17
    .param p1, "inputStream"    # Ljava/io/RandomAccessFile;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 259
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 260
    :cond_0
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    const-string v12, "input or output stream is null, cannot copy file"

    invoke-direct {v11, v12}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 263
    :cond_1
    const-wide/16 v12, 0x0

    cmp-long v11, p3, v12

    if-gez v11, :cond_2

    .line 264
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    const-string v12, "starting offset is negative, cannot copy file"

    invoke-direct {v11, v12}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 267
    :cond_2
    const-wide/16 v12, 0x0

    cmp-long v11, p5, v12

    if-gez v11, :cond_3

    .line 268
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    const-string v12, "end offset is negative, cannot copy file"

    invoke-direct {v11, v12}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 271
    :cond_3
    cmp-long v11, p3, p5

    if-lez v11, :cond_4

    .line 272
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    const-string v12, "start offset is greater than end offset, cannot copy file"

    invoke-direct {v11, v12}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 275
    :cond_4
    cmp-long v11, p3, p5

    if-nez v11, :cond_6

    .line 322
    :cond_5
    :goto_0
    return-void

    .line 279
    :cond_6
    invoke-virtual/range {p7 .. p7}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 280
    const/4 v11, 0x3

    move-object/from16 v0, p7

    invoke-virtual {v0, v11}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 281
    const/4 v11, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v11}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V

    goto :goto_0

    .line 286
    :cond_7
    :try_start_0
    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 288
    const/4 v10, -0x2

    .line 290
    .local v10, "readLen":I
    const-wide/16 v6, 0x0

    .line 291
    .local v6, "bytesRead":J
    sub-long v8, p5, p3

    .line 293
    .local v8, "bytesToRead":J
    sub-long v12, p5, p3

    const-wide/16 v14, 0x1000

    cmp-long v11, v12, v14

    if-gez v11, :cond_9

    .line 294
    sub-long v12, p5, p3

    long-to-int v11, v12

    new-array v4, v11, [B

    .line 299
    .local v4, "buff":[B
    :cond_8
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    .line 300
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v11, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 302
    int-to-long v12, v10

    move-object/from16 v0, p7

    invoke-virtual {v0, v12, v13}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V

    .line 303
    invoke-virtual/range {p7 .. p7}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 304
    const/4 v11, 0x3

    move-object/from16 v0, p7

    invoke-virtual {v0, v11}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 317
    .end local v4    # "buff":[B
    .end local v6    # "bytesRead":J
    .end local v8    # "bytesToRead":J
    .end local v10    # "readLen":I
    :catch_0
    move-exception v5

    .line 318
    .local v5, "e":Ljava/io/IOException;
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v11, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 296
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v6    # "bytesRead":J
    .restart local v8    # "bytesToRead":J
    .restart local v10    # "readLen":I
    :cond_9
    const/16 v11, 0x1000

    :try_start_1
    new-array v4, v11, [B

    .line 299
    .restart local v4    # "buff":[B
    goto :goto_1

    .line 308
    :cond_a
    int-to-long v12, v10

    add-long/2addr v6, v12

    .line 310
    cmp-long v11, v6, v8

    if-eqz v11, :cond_5

    .line 312
    array-length v11, v4

    int-to-long v12, v11

    add-long/2addr v12, v6

    cmp-long v11, v12, v8

    if-lez v11, :cond_8

    .line 313
    sub-long v12, v8, v6

    long-to-int v11, v12

    new-array v4, v11, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 319
    .end local v4    # "buff":[B
    .end local v6    # "bytesRead":J
    .end local v8    # "bytesToRead":J
    .end local v10    # "readLen":I
    :catch_1
    move-exception v5

    .line 320
    .local v5, "e":Ljava/lang/Exception;
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v11, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v11
.end method

.method private createFileHandler(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 4
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 325
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 326
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "input parameter is null in getFilePointer, cannot create file handler to remove file"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private createSplitZipFileHandler(Lnet/lingala/zip4j/model/ZipModel;I)Ljava/io/RandomAccessFile;
    .locals 7
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "partNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 469
    if-nez p1, :cond_0

    .line 470
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    const-string v5, "zip model is null, cannot create split file handler"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 473
    :cond_0
    if-gez p2, :cond_1

    .line 474
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    const-string v5, "invlaid part number, cannot create split file handler"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 478
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "curZipFile":Ljava/lang/String;
    const/4 v2, 0x0

    .line 480
    .local v2, "partFile":Ljava/lang/String;
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v4

    if-ne p2, v4, :cond_2

    .line 481
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v2

    .line 489
    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 491
    .local v3, "tmpFile":Ljava/io/File;
    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 492
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "split file does not exist: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 496
    .end local v0    # "curZipFile":Ljava/lang/String;
    .end local v2    # "partFile":Ljava/lang/String;
    .end local v3    # "tmpFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 497
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v4, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 483
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "curZipFile":Ljava/lang/String;
    .restart local v2    # "partFile":Ljava/lang/String;
    :cond_2
    const/16 v4, 0x9

    if-lt p2, v4, :cond_3

    .line 484
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".z"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 485
    goto :goto_0

    .line 486
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".z0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 495
    .restart local v3    # "tmpFile":Ljava/io/File;
    :cond_4
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .line 498
    .end local v0    # "curZipFile":Ljava/lang/String;
    .end local v2    # "partFile":Ljava/lang/String;
    .end local v3    # "tmpFile":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 499
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v4, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private initMergeSplitZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 24
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "outputZipFile"    # Ljava/io/File;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 360
    if-nez p1, :cond_0

    .line 361
    new-instance v13, Lnet/lingala/zip4j/exception/ZipException;

    const-string v5, "one of the input parameters is null, cannot merge split zip file"

    invoke-direct {v13, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 362
    .local v13, "e":Lnet/lingala/zip4j/exception/ZipException;
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 363
    throw v13

    .line 366
    .end local v13    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v5

    if-nez v5, :cond_1

    .line 367
    new-instance v13, Lnet/lingala/zip4j/exception/ZipException;

    const-string v5, "archive not a split zip file"

    invoke-direct {v13, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 368
    .restart local v13    # "e":Lnet/lingala/zip4j/exception/ZipException;
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 369
    throw v13

    .line 372
    .end local v13    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :cond_1
    const/4 v7, 0x0

    .line 373
    .local v7, "outputStream":Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 374
    .local v6, "inputStream":Ljava/io/RandomAccessFile;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v15, "fileSizeList":Ljava/util/ArrayList;
    const-wide/16 v22, 0x0

    .line 376
    .local v22, "totBytesWritten":J
    const/16 v19, 0x0

    .line 379
    .local v19, "splitSigRemoved":Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v21

    .line 381
    .local v21, "totNoOfSplitFiles":I
    if-gtz v21, :cond_4

    .line 382
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "corrupt zip model, archive not a split zip file"

    invoke-direct {v5, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    .end local v21    # "totNoOfSplitFiles":I
    :catch_0
    move-exception v13

    .line 438
    .local v13, "e":Ljava/io/IOException;
    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 439
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v5, v13}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 444
    if-eqz v7, :cond_2

    .line 446
    :try_start_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 452
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 454
    :try_start_3
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 459
    :cond_3
    :goto_1
    throw v5

    .line 385
    .restart local v21    # "totNoOfSplitFiles":I
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->prepareOutputStreamForMerge(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v7

    .line 386
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_7

    .line 427
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->clone()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lnet/lingala/zip4j/model/ZipModel;

    .line 428
    .local v18, "newZipModel":Lnet/lingala/zip4j/model/ZipModel;
    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setOffsetOfStartOfCentralDir(J)V

    .line 430
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v15, v2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->updateSplitZipModel(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;Z)V

    .line 432
    new-instance v16, Lnet/lingala/zip4j/core/HeaderWriter;

    invoke-direct/range {v16 .. v16}, Lnet/lingala/zip4j/core/HeaderWriter;-><init>()V

    .line 433
    .local v16, "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->finalizeZipFileWithoutValidations(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    .line 435
    invoke-virtual/range {p3 .. p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 444
    if-eqz v7, :cond_5

    .line 446
    :try_start_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 452
    :cond_5
    :goto_3
    if-eqz v6, :cond_6

    .line 454
    :try_start_6
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 460
    .end local v16    # "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    .end local v18    # "newZipModel":Lnet/lingala/zip4j/model/ZipModel;
    :cond_6
    :goto_4
    return-void

    .line 387
    :cond_7
    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->createSplitZipFileHandler(Lnet/lingala/zip4j/model/ZipModel;I)Ljava/io/RandomAccessFile;

    move-result-object v6

    .line 389
    const/16 v20, 0x0

    .line 390
    .local v20, "start":I
    new-instance v14, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-direct {v14, v8, v9}, Ljava/lang/Long;-><init>(J)V

    .line 392
    .local v14, "end":Ljava/lang/Long;
    if-nez v17, :cond_8

    .line 393
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 394
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 395
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 396
    const/4 v5, 0x4

    new-array v4, v5, [B

    .line 397
    .local v4, "buff":[B
    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 398
    invoke-virtual {v6, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 399
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v5

    int-to-long v8, v5

    const-wide/32 v10, 0x8074b50

    cmp-long v5, v8, v10

    if-nez v5, :cond_8

    .line 400
    const/16 v20, 0x4

    .line 401
    const/16 v19, 0x1

    .line 406
    .end local v4    # "buff":[B
    :cond_8
    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 407
    new-instance v14, Ljava/lang/Long;

    .end local v14    # "end":Ljava/lang/Long;
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v8

    invoke-direct {v14, v8, v9}, Ljava/lang/Long;-><init>(J)V

    .line 410
    .restart local v14    # "end":Ljava/lang/Long;
    :cond_9
    move/from16 v0, v20

    int-to-long v8, v0

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v5, p0

    move-object/from16 v12, p3

    invoke-direct/range {v5 .. v12}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 411
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move/from16 v0, v20

    int-to-long v10, v0

    sub-long/2addr v8, v10

    add-long v22, v22, v8

    .line 412
    invoke-virtual/range {p3 .. p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 413
    const/4 v5, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 414
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 444
    if-eqz v7, :cond_a

    .line 446
    :try_start_8
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 452
    :cond_a
    :goto_5
    if-eqz v6, :cond_6

    .line 454
    :try_start_9
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_4

    .line 455
    :catch_1
    move-exception v5

    goto/16 :goto_4

    .line 418
    :cond_b
    :try_start_a
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 421
    :try_start_b
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 386
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 440
    .end local v14    # "end":Ljava/lang/Long;
    .end local v17    # "i":I
    .end local v20    # "start":I
    .end local v21    # "totNoOfSplitFiles":I
    :catch_2
    move-exception v13

    .line 441
    .local v13, "e":Ljava/lang/Exception;
    :try_start_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 442
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v5, v13}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 447
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v14    # "end":Ljava/lang/Long;
    .restart local v17    # "i":I
    .restart local v20    # "start":I
    .restart local v21    # "totNoOfSplitFiles":I
    :catch_3
    move-exception v5

    goto :goto_5

    .line 422
    :catch_4
    move-exception v5

    goto :goto_6

    .line 447
    .end local v14    # "end":Ljava/lang/Long;
    .end local v17    # "i":I
    .end local v20    # "start":I
    .end local v21    # "totNoOfSplitFiles":I
    :catch_5
    move-exception v8

    goto/16 :goto_0

    .line 455
    :catch_6
    move-exception v8

    goto/16 :goto_1

    .line 447
    .restart local v16    # "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    .restart local v17    # "i":I
    .restart local v18    # "newZipModel":Lnet/lingala/zip4j/model/ZipModel;
    .restart local v21    # "totNoOfSplitFiles":I
    :catch_7
    move-exception v5

    goto/16 :goto_3

    .line 455
    :catch_8
    move-exception v5

    goto/16 :goto_4
.end method

.method private prepareOutputStreamForMerge(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 3
    .param p1, "outFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 505
    if-nez p1, :cond_0

    .line 506
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "outFile is null, cannot create outputstream"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 510
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 513
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 514
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private restoreFileName(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p1, "zipFile"    # Ljava/io/File;
    .param p2, "tmpZipFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "newZipFile":Ljava/io/File;
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "cannot rename modified zip file"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    .end local v0    # "newZipFile":Ljava/io/File;
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "cannot delete old zip file"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    .restart local v0    # "newZipFile":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private updateSplitEndCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)V
    .locals 3
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 565
    if-nez p1, :cond_0

    .line 566
    :try_start_0
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "zip model is null - cannot update end of central directory for split zip model"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Lnet/lingala/zip4j/exception/ZipException;
    throw v0

    .line 569
    .end local v0    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    if-nez v1, :cond_1

    .line 570
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "corrupt zip model - getCentralDirectory, cannot update split zip model"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 582
    :catch_1
    move-exception v0

    .line 583
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 573
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setNoOfThisDisk(I)V

    .line 574
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setNoOfThisDiskStartOfCentralDir(I)V

    .line 575
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    .line 576
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 575
    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDir(I)V

    .line 577
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    .line 578
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 577
    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(I)V
    :try_end_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 585
    return-void
.end method

.method private updateSplitFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;Z)V
    .locals 12
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "fileSizeList"    # Ljava/util/ArrayList;
    .param p3, "splitSigRemoved"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 535
    :try_start_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v7

    if-nez v7, :cond_0

    .line 536
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "corrupt zip model - getCentralDirectory, cannot update split zip model"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Lnet/lingala/zip4j/exception/ZipException;
    throw v0

    .line 539
    .end local v0    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 540
    .local v1, "fileHeaderCount":I
    const/4 v6, 0x0

    .line 541
    .local v6, "splitSigOverhead":I
    if-eqz p3, :cond_1

    .line 542
    const/4 v6, 0x4

    .line 544
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_2

    .line 561
    return-void

    .line 545
    :cond_2
    const-wide/16 v4, 0x0

    .line 547
    .local v4, "offsetLHToAdd":J
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v7

    if-lt v3, v7, :cond_3

    .line 550
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/lingala/zip4j/model/FileHeader;

    .line 551
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v8

    add-long/2addr v8, v4

    .line 552
    int-to-long v10, v6

    .line 551
    sub-long/2addr v8, v10

    .line 550
    invoke-virtual {v7, v8, v9}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    .line 553
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/lingala/zip4j/model/FileHeader;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    .line 544
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 548
    :cond_3
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v8

    add-long/2addr v4, v8

    .line 547
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 558
    .end local v1    # "fileHeaderCount":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "offsetLHToAdd":J
    .end local v6    # "splitSigOverhead":I
    :catch_1
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v7, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private updateSplitZip64EndCentralDirLocator(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "fileSizeList"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 588
    if-nez p1, :cond_0

    .line 589
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v4, "zip model is null, cannot update split Zip64 end of central directory locator"

    invoke-direct {v1, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 592
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    if-nez v1, :cond_1

    .line 606
    :goto_0
    return-void

    .line 596
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setNoOfDiskStartOfZip64EndOfCentralDirRec(I)V

    .line 597
    const-wide/16 v2, 0x0

    .line 599
    .local v2, "offsetZip64EndCentralDirRec":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 602
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    .line 603
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->getOffsetZip64EndOfCentralDirRec()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 602
    invoke-virtual {v1, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setOffsetZip64EndOfCentralDirRec(J)V

    .line 605
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setTotNumberOfDiscs(I)V

    goto :goto_0

    .line 600
    :cond_2
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateSplitZip64EndCentralDirRec(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "fileSizeList"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 609
    if-nez p1, :cond_0

    .line 610
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v4, "zip model is null, cannot update split Zip64 end of central directory record"

    invoke-direct {v1, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 613
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v1

    if-nez v1, :cond_1

    .line 631
    :goto_0
    return-void

    .line 617
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v1, v4}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setNoOfThisDisk(I)V

    .line 618
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v1, v4}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setNoOfThisDiskStartOfCentralDir(I)V

    .line 619
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v1

    .line 620
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getTotNoOfEntriesInCentralDir()I

    move-result v4

    int-to-long v4, v4

    .line 619
    invoke-virtual {v1, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(J)V

    .line 622
    const-wide/16 v2, 0x0

    .line 624
    .local v2, "offsetStartCenDirWRTStartDiskNo":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 628
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v1

    .line 629
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->getOffsetStartCenDirWRTStartDiskNo()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 628
    invoke-virtual {v1, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setOffsetStartCenDirWRTStartDiskNo(J)V

    goto :goto_0

    .line 625
    :cond_2
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 624
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateSplitZipModel(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;Z)V
    .locals 2
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "fileSizeList"    # Ljava/util/ArrayList;
    .param p3, "splitSigRemoved"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 519
    if-nez p1, :cond_0

    .line 520
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "zip model is null, cannot update split zip model"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    .line 524
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->updateSplitFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;Z)V

    .line 525
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->updateSplitEndCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)V

    .line 526
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->updateSplitZip64EndCentralDirLocator(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;)V

    .line 528
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->updateSplitZip64EndCentralDirRec(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;)V

    .line 530
    :cond_1
    return-void
.end method


# virtual methods
.method public initProgressMonitorForMergeOp(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 2
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 711
    if-nez p1, :cond_0

    .line 712
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "zip model is null, cannot calculate total work for merge op"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 716
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 717
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->calculateTotalWorkForMergeOp(Lnet/lingala/zip4j/model/ZipModel;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setTotalWork(J)V

    .line 718
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V

    .line 719
    return-void
.end method

.method public initProgressMonitorForRemoveOp(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 2
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 696
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 697
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "one of the input parameters is null, cannot calculate total work"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 701
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 702
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->calculateTotalWorkForRemoveOp(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setTotalWork(J)V

    .line 703
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V

    .line 704
    return-void
.end method

.method public initRemoveZipFile(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)Ljava/util/HashMap;
    .locals 43
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 71
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 72
    :cond_0
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "input parameters is null in maintain zip file, cannot remove file from archive"

    invoke-direct {v5, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 75
    :cond_1
    const/16 v36, 0x0

    .line 76
    .local v36, "outputStream":Ljava/io/OutputStream;
    const/16 v41, 0x0

    .line 77
    .local v41, "zipFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 78
    .local v6, "inputStream":Ljava/io/RandomAccessFile;
    const/16 v38, 0x0

    .line 79
    .local v38, "successFlag":Z
    const/16 v40, 0x0

    .line 80
    .local v40, "tmpZipFileName":Ljava/lang/String;
    new-instance v37, Ljava/util/HashMap;

    invoke-direct/range {v37 .. v37}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v37, "retMap":Ljava/util/HashMap;
    :try_start_0
    invoke-static/range {p1 .. p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->getIndexOfFileHeader(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;)I

    move-result v28

    .line 85
    .local v28, "indexOfFileHeader":I
    if-gez v28, :cond_4

    .line 86
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "file header not found in zip model, cannot remove file"

    invoke-direct {v5, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 199
    .end local v28    # "indexOfFileHeader":I
    :catch_0
    move-exception v4

    move-object/from16 v7, v36

    .line 200
    .end local v36    # "outputStream":Ljava/io/OutputStream;
    .local v4, "e":Lnet/lingala/zip4j/exception/ZipException;
    .local v7, "outputStream":Ljava/io/OutputStream;
    :goto_0
    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 201
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    .end local v4    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :catchall_0
    move-exception v5

    .line 214
    :goto_1
    if-eqz v6, :cond_2

    .line 216
    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 217
    const/4 v6, 0x0

    .line 223
    :cond_2
    :goto_2
    if-eqz v7, :cond_3

    .line 225
    :try_start_3
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 226
    const/4 v7, 0x0

    .line 233
    :cond_3
    :goto_3
    if-eqz v38, :cond_19

    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->restoreFileName(Ljava/io/File;Ljava/lang/String;)V

    .line 239
    :goto_4
    throw v5

    .line 89
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v28    # "indexOfFileHeader":I
    .restart local v36    # "outputStream":Ljava/io/OutputStream;
    :cond_4
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 90
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "This is a split archive. Zip file format does not allow updating split/spanned files"

    invoke-direct {v5, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 202
    .end local v28    # "indexOfFileHeader":I
    :catch_1
    move-exception v4

    move-object/from16 v7, v36

    .line 203
    .end local v36    # "outputStream":Ljava/io/OutputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    :goto_5
    :try_start_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 204
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v5, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 93
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v28    # "indexOfFileHeader":I
    .restart local v36    # "outputStream":Ljava/io/OutputStream;
    :cond_5
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 94
    .local v22, "currTime":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v8, 0x3e8

    rem-long v8, v22, v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 95
    new-instance v39, Ljava/io/File;

    invoke-direct/range {v39 .. v40}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v39, "tmpFile":Ljava/io/File;
    :goto_6
    invoke-virtual/range {v39 .. v39}, Ljava/io/File;->exists()Z
    :try_end_6
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v5

    if-nez v5, :cond_6

    .line 104
    :try_start_7
    new-instance v7, Lnet/lingala/zip4j/io/SplitOutputStream;

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v40

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v5}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 109
    .end local v36    # "outputStream":Ljava/io/OutputStream;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    :try_start_8
    new-instance v42, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 111
    .end local v41    # "zipFile":Ljava/io/File;
    .local v42, "zipFile":Ljava/io/File;
    :try_start_9
    const-string v5, "r"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->createFileHandler(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v6

    .line 113
    new-instance v25, Lnet/lingala/zip4j/core/HeaderReader;

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Lnet/lingala/zip4j/core/HeaderReader;-><init>(Ljava/io/RandomAccessFile;)V

    .line 114
    .local v25, "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/core/HeaderReader;->readLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v29

    .line 115
    .local v29, "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    if-nez v29, :cond_7

    .line 116
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "invalid local file header, cannot remove file from archive"

    invoke-direct {v5, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_9
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 199
    .end local v25    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    .end local v29    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    :catch_2
    move-exception v4

    move-object/from16 v41, v42

    .end local v42    # "zipFile":Ljava/io/File;
    .restart local v41    # "zipFile":Ljava/io/File;
    goto/16 :goto_0

    .line 98
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v36    # "outputStream":Ljava/io/OutputStream;
    :cond_6
    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v8, 0x3e8

    rem-long v8, v22, v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 100
    new-instance v39, Ljava/io/File;

    .end local v39    # "tmpFile":Ljava/io/File;
    invoke-direct/range {v39 .. v40}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v39    # "tmpFile":Ljava/io/File;
    goto :goto_6

    .line 105
    :catch_3
    move-exception v21

    .line 106
    .local v21, "e1":Ljava/io/FileNotFoundException;
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_a
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 205
    .end local v21    # "e1":Ljava/io/FileNotFoundException;
    .end local v22    # "currTime":J
    .end local v28    # "indexOfFileHeader":I
    .end local v39    # "tmpFile":Ljava/io/File;
    :catchall_1
    move-exception v5

    move-object/from16 v7, v36

    .end local v36    # "outputStream":Ljava/io/OutputStream;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    goto/16 :goto_1

    .line 119
    .end local v41    # "zipFile":Ljava/io/File;
    .restart local v22    # "currTime":J
    .restart local v25    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    .restart local v28    # "indexOfFileHeader":I
    .restart local v29    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    .restart local v39    # "tmpFile":Ljava/io/File;
    .restart local v42    # "zipFile":Ljava/io/File;
    :cond_7
    :try_start_b
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v18

    .line 121
    .local v18, "offsetLocalFileHeader":J
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 122
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v8

    const-wide/16 v12, -0x1

    cmp-long v5, v8, v12

    if-eqz v5, :cond_8

    .line 123
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v18

    .line 126
    :cond_8
    const-wide/16 v32, -0x1

    .line 128
    .local v32, "offsetEndOfCompressedFile":J
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v10

    .line 129
    .local v10, "offsetStartCentralDir":J
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 130
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 131
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->getOffsetStartCenDirWRTStartDiskNo()J

    move-result-wide v10

    .line 135
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v24

    .line 137
    .local v24, "fileHeaderList":Ljava/util/ArrayList;
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v28

    if-ne v0, v5, :cond_c

    .line 138
    const-wide/16 v8, 0x1

    sub-long v32, v10, v8

    .line 150
    :cond_a
    :goto_7
    const-wide/16 v8, 0x0

    cmp-long v5, v18, v8

    if-ltz v5, :cond_b

    const-wide/16 v8, 0x0

    cmp-long v5, v32, v8

    if-gez v5, :cond_d

    .line 151
    :cond_b
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "invalid offset for start and end of local file, cannot remove file"

    invoke-direct {v5, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 202
    .end local v10    # "offsetStartCentralDir":J
    .end local v18    # "offsetLocalFileHeader":J
    .end local v24    # "fileHeaderList":Ljava/util/ArrayList;
    .end local v25    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    .end local v29    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    .end local v32    # "offsetEndOfCompressedFile":J
    :catch_4
    move-exception v4

    move-object/from16 v41, v42

    .end local v42    # "zipFile":Ljava/io/File;
    .restart local v41    # "zipFile":Ljava/io/File;
    goto/16 :goto_5

    .line 140
    .end local v41    # "zipFile":Ljava/io/File;
    .restart local v10    # "offsetStartCentralDir":J
    .restart local v18    # "offsetLocalFileHeader":J
    .restart local v24    # "fileHeaderList":Ljava/util/ArrayList;
    .restart local v25    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    .restart local v29    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    .restart local v32    # "offsetEndOfCompressedFile":J
    .restart local v42    # "zipFile":Ljava/io/File;
    :cond_c
    add-int/lit8 v5, v28, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lnet/lingala/zip4j/model/FileHeader;

    .line 141
    .local v31, "nextFileHeader":Lnet/lingala/zip4j/model/FileHeader;
    if-eqz v31, :cond_a

    .line 142
    invoke-virtual/range {v31 .. v31}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v8

    const-wide/16 v12, 0x1

    sub-long v32, v8, v12

    .line 143
    invoke-virtual/range {v31 .. v31}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 144
    invoke-virtual/range {v31 .. v31}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v8

    const-wide/16 v12, -0x1

    cmp-long v5, v8, v12

    if-eqz v5, :cond_a

    .line 145
    invoke-virtual/range {v31 .. v31}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v8

    const-wide/16 v12, 0x1

    sub-long v32, v8, v12

    goto :goto_7

    .line 154
    .end local v31    # "nextFileHeader":Lnet/lingala/zip4j/model/FileHeader;
    :cond_d
    if-nez v28, :cond_11

    .line 155
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v8, 0x1

    if-le v5, v8, :cond_e

    .line 157
    const-wide/16 v8, 0x1

    add-long v8, v8, v32

    move-object/from16 v5, p0

    move-object/from16 v12, p3

    invoke-direct/range {v5 .. v12}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 166
    :cond_e
    :goto_8
    invoke-virtual/range {p3 .. p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 167
    const/4 v5, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 168
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_b
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 214
    if-eqz v6, :cond_f

    .line 216
    :try_start_c
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 217
    const/4 v6, 0x0

    .line 223
    :cond_f
    :goto_9
    if-eqz v7, :cond_10

    .line 225
    :try_start_d
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 226
    const/4 v7, 0x0

    .line 233
    :cond_10
    :goto_a
    if-eqz v38, :cond_13

    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->restoreFileName(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    :goto_b
    const/16 v37, 0x0

    .line 241
    .end local v37    # "retMap":Ljava/util/HashMap;
    :goto_c
    return-object v37

    .line 159
    .restart local v37    # "retMap":Ljava/util/HashMap;
    :cond_11
    :try_start_e
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v28

    if-ne v0, v5, :cond_12

    .line 160
    const-wide/16 v16, 0x0

    move-object/from16 v13, p0

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v20, p3

    invoke-direct/range {v13 .. v20}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V

    goto :goto_8

    .line 205
    .end local v10    # "offsetStartCentralDir":J
    .end local v18    # "offsetLocalFileHeader":J
    .end local v24    # "fileHeaderList":Ljava/util/ArrayList;
    .end local v25    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    .end local v29    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    .end local v32    # "offsetEndOfCompressedFile":J
    :catchall_2
    move-exception v5

    move-object/from16 v41, v42

    .end local v42    # "zipFile":Ljava/io/File;
    .restart local v41    # "zipFile":Ljava/io/File;
    goto/16 :goto_1

    .line 162
    .end local v41    # "zipFile":Ljava/io/File;
    .restart local v10    # "offsetStartCentralDir":J
    .restart local v18    # "offsetLocalFileHeader":J
    .restart local v24    # "fileHeaderList":Ljava/util/ArrayList;
    .restart local v25    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    .restart local v29    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    .restart local v32    # "offsetEndOfCompressedFile":J
    .restart local v42    # "zipFile":Ljava/io/File;
    :cond_12
    const-wide/16 v16, 0x0

    move-object/from16 v13, p0

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v20, p3

    invoke-direct/range {v13 .. v20}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 163
    const-wide/16 v8, 0x1

    add-long v8, v8, v32

    move-object/from16 v5, p0

    move-object/from16 v12, p3

    invoke-direct/range {v5 .. v12}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V
    :try_end_e
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_8

    .line 218
    :catch_5
    move-exception v4

    .line 220
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 227
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 229
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 236
    .end local v4    # "e":Ljava/io/IOException;
    :cond_13
    new-instance v30, Ljava/io/File;

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v30, "newZipFile":Ljava/io/File;
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z

    goto :goto_b

    .line 172
    .end local v30    # "newZipFile":Ljava/io/File;
    :cond_14
    :try_start_f
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v8

    move-object v0, v7

    check-cast v0, Lnet/lingala/zip4j/io/SplitOutputStream;

    move-object v5, v0

    invoke-virtual {v5}, Lnet/lingala/zip4j/io/SplitOutputStream;->getFilePointer()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setOffsetOfStartOfCentralDir(J)V

    .line 173
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    .line 174
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getTotNoOfEntriesInCentralDir()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .line 173
    invoke-virtual {v5, v8}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDir(I)V

    .line 175
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    .line 176
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getTotNoOfEntriesInCentralDirOnThisDisk()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .line 175
    invoke-virtual {v5, v8}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(I)V

    .line 178
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 180
    move/from16 v27, v28

    .local v27, "i":I
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v27

    if-lt v0, v5, :cond_17

    .line 191
    new-instance v26, Lnet/lingala/zip4j/core/HeaderWriter;

    invoke-direct/range {v26 .. v26}, Lnet/lingala/zip4j/core/HeaderWriter;-><init>()V

    .line 192
    .local v26, "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->finalizeZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    .line 194
    const/16 v38, 0x1

    .line 196
    const-string v5, "offsetCentralDir"

    .line 197
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 196
    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 214
    if-eqz v6, :cond_15

    .line 216
    :try_start_10
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 217
    const/4 v6, 0x0

    .line 223
    :cond_15
    :goto_e
    if-eqz v7, :cond_16

    .line 225
    :try_start_11
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 226
    const/4 v7, 0x0

    .line 233
    :cond_16
    :goto_f
    if-eqz v38, :cond_1a

    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->restoreFileName(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 181
    .end local v26    # "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    :cond_17
    :try_start_12
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v34

    .line 182
    .local v34, "offsetLocalHdr":J
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 183
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v8

    const-wide/16 v12, -0x1

    cmp-long v5, v8, v12

    if-eqz v5, :cond_18

    .line 184
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v34

    .line 187
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/lingala/zip4j/model/FileHeader;

    .line 188
    sub-long v8, v32, v18

    sub-long v8, v34, v8

    const-wide/16 v12, 0x1

    sub-long/2addr v8, v12

    .line 187
    invoke-virtual {v5, v8, v9}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V
    :try_end_12
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 180
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_d

    .line 218
    .end local v10    # "offsetStartCentralDir":J
    .end local v18    # "offsetLocalFileHeader":J
    .end local v22    # "currTime":J
    .end local v24    # "fileHeaderList":Ljava/util/ArrayList;
    .end local v25    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    .end local v27    # "i":I
    .end local v28    # "indexOfFileHeader":I
    .end local v29    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    .end local v32    # "offsetEndOfCompressedFile":J
    .end local v34    # "offsetLocalHdr":J
    .end local v39    # "tmpFile":Ljava/io/File;
    .end local v42    # "zipFile":Ljava/io/File;
    .restart local v41    # "zipFile":Ljava/io/File;
    :catch_7
    move-exception v4

    .line 220
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 227
    .end local v4    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v4

    .line 229
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 236
    .end local v4    # "e":Ljava/io/IOException;
    :cond_19
    new-instance v30, Ljava/io/File;

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .restart local v30    # "newZipFile":Ljava/io/File;
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z

    goto/16 :goto_4

    .line 218
    .end local v30    # "newZipFile":Ljava/io/File;
    .end local v41    # "zipFile":Ljava/io/File;
    .restart local v10    # "offsetStartCentralDir":J
    .restart local v18    # "offsetLocalFileHeader":J
    .restart local v22    # "currTime":J
    .restart local v24    # "fileHeaderList":Ljava/util/ArrayList;
    .restart local v25    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    .restart local v26    # "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    .restart local v27    # "i":I
    .restart local v28    # "indexOfFileHeader":I
    .restart local v29    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    .restart local v32    # "offsetEndOfCompressedFile":J
    .restart local v39    # "tmpFile":Ljava/io/File;
    .restart local v42    # "zipFile":Ljava/io/File;
    :catch_9
    move-exception v4

    .line 220
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_e

    .line 227
    .end local v4    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v4

    .line 229
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_f

    .line 236
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1a
    new-instance v30, Ljava/io/File;

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .restart local v30    # "newZipFile":Ljava/io/File;
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z

    goto/16 :goto_c

    .line 202
    .end local v10    # "offsetStartCentralDir":J
    .end local v18    # "offsetLocalFileHeader":J
    .end local v24    # "fileHeaderList":Ljava/util/ArrayList;
    .end local v25    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    .end local v26    # "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    .end local v27    # "i":I
    .end local v29    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    .end local v30    # "newZipFile":Ljava/io/File;
    .end local v32    # "offsetEndOfCompressedFile":J
    .end local v42    # "zipFile":Ljava/io/File;
    .restart local v41    # "zipFile":Ljava/io/File;
    :catch_b
    move-exception v4

    goto/16 :goto_5

    .line 199
    :catch_c
    move-exception v4

    goto/16 :goto_0
.end method

.method public mergeSplitZipFiles(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V
    .locals 6
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "outputZipFile"    # Ljava/io/File;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p4, "runInThread"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 343
    if-eqz p4, :cond_0

    .line 344
    new-instance v0, Lnet/lingala/zip4j/util/ArchiveMaintainer$2;

    const-string v2, "Zip4j"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lnet/lingala/zip4j/util/ArchiveMaintainer$2;-><init>(Lnet/lingala/zip4j/util/ArchiveMaintainer;Ljava/lang/String;Lnet/lingala/zip4j/model/ZipModel;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 352
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 356
    .end local v0    # "thread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 354
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->initMergeSplitZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    goto :goto_0
.end method

.method public removeZipFile(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)Ljava/util/HashMap;
    .locals 7
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p4, "runInThread"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 48
    if-eqz p4, :cond_0

    .line 49
    new-instance v0, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;

    const-string v2, "Zip4j"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;-><init>(Lnet/lingala/zip4j/util/ArchiveMaintainer;Ljava/lang/String;Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 58
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    const/4 v6, 0x0

    .line 63
    .end local v0    # "thread":Ljava/lang/Thread;
    :goto_0
    return-object v6

    .line 61
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->initRemoveZipFile(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)Ljava/util/HashMap;

    move-result-object v6

    .line 62
    .local v6, "retMap":Ljava/util/HashMap;
    invoke-virtual {p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V

    goto :goto_0
.end method

.method public setComment(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)V
    .locals 10
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 634
    if-nez p2, :cond_0

    .line 635
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    const-string v9, "comment is null, cannot update Zip file with comment"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 638
    :cond_0
    if-nez p1, :cond_1

    .line 639
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    const-string v9, "zipModel is null, cannot update Zip file with comment"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 642
    :cond_1
    move-object v3, p2

    .line 643
    .local v3, "encodedComment":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 644
    .local v0, "commentBytes":[B
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 646
    .local v1, "commentLength":I
    const-string v8, "windows-1254"

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->isSupportedCharset(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 648
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v8, "windows-1254"

    invoke-virtual {p2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const-string v9, "windows-1254"

    invoke-direct {v4, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    .end local v3    # "encodedComment":Ljava/lang/String;
    .local v4, "encodedComment":Ljava/lang/String;
    :try_start_1
    const-string v8, "windows-1254"

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 650
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v1

    move-object v3, v4

    .line 658
    .end local v4    # "encodedComment":Ljava/lang/String;
    .restart local v3    # "encodedComment":Ljava/lang/String;
    :cond_2
    :goto_0
    const v8, 0xffff

    if-le v1, v8, :cond_3

    .line 659
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    const-string v9, "comment length exceeds maximum length"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 651
    :catch_0
    move-exception v2

    .line 652
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    move-object v3, p2

    .line 653
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 654
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    .line 662
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v8

    invoke-virtual {v8, v3}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setComment(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v8

    invoke-virtual {v8, v0}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setCommentBytes([B)V

    .line 664
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v8

    invoke-virtual {v8, v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setCommentLength(I)V

    .line 666
    const/4 v6, 0x0

    .line 669
    .local v6, "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :try_start_2
    new-instance v5, Lnet/lingala/zip4j/core/HeaderWriter;

    invoke-direct {v5}, Lnet/lingala/zip4j/core/HeaderWriter;-><init>()V

    .line 670
    .local v5, "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    new-instance v7, Lnet/lingala/zip4j/io/SplitOutputStream;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 672
    .end local v6    # "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .local v7, "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :try_start_3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 673
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->getOffsetStartCenDirWRTStartDiskNo()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lnet/lingala/zip4j/io/SplitOutputStream;->seek(J)V

    .line 678
    :goto_2
    invoke-virtual {v5, p1, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->finalizeZipFileWithoutValidations(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 684
    if-eqz v7, :cond_4

    .line 686
    :try_start_4
    invoke-virtual {v7}, Lnet/lingala/zip4j/io/SplitOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 692
    :cond_4
    :goto_3
    return-void

    .line 675
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lnet/lingala/zip4j/io/SplitOutputStream;->seek(J)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 679
    :catch_1
    move-exception v2

    move-object v6, v7

    .line 680
    .end local v5    # "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    .end local v7    # "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :goto_4
    :try_start_6
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v8, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 683
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v8

    .line 684
    :goto_5
    if-eqz v6, :cond_6

    .line 686
    :try_start_7
    invoke-virtual {v6}, Lnet/lingala/zip4j/io/SplitOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 691
    :cond_6
    :goto_6
    throw v8

    .line 681
    :catch_2
    move-exception v2

    .line 682
    .local v2, "e":Ljava/io/IOException;
    :goto_7
    :try_start_8
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v8, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 687
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    goto :goto_6

    .end local v6    # "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .restart local v5    # "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    .restart local v7    # "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_4
    move-exception v8

    goto :goto_3

    .line 683
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .restart local v6    # "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    goto :goto_5

    .line 681
    .end local v6    # "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .restart local v7    # "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_5
    move-exception v2

    move-object v6, v7

    .end local v7    # "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .restart local v6    # "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    goto :goto_7

    .line 679
    .end local v5    # "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    :catch_6
    move-exception v2

    goto :goto_4

    .line 651
    .end local v3    # "encodedComment":Ljava/lang/String;
    .end local v6    # "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .restart local v4    # "encodedComment":Ljava/lang/String;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "encodedComment":Ljava/lang/String;
    .restart local v3    # "encodedComment":Ljava/lang/String;
    goto :goto_1
.end method

.class public Lnet/lingala/zip4j/zip/ZipEngine;
.super Ljava/lang/Object;
.source "ZipEngine.java"


# instance fields
.field private zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;)V
    .locals 2
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "zip model is null in ZipEngine constructor"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lnet/lingala/zip4j/zip/ZipEngine;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/zip/ZipEngine;->initAddFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method private calculateTotalWork(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;)J
    .locals 12
    .param p1, "fileList"    # Ljava/util/ArrayList;
    .param p2, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 502
    if-nez p1, :cond_0

    .line 503
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "file list is null, cannot calculate total work"

    invoke-direct {v5, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 506
    :cond_0
    const-wide/16 v6, 0x0

    .line 508
    .local v6, "totalWork":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 538
    return-wide v6

    .line 509
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/io/File;

    if-eqz v5, :cond_2

    .line 510
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 511
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 512
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v5

    if-nez v5, :cond_3

    .line 513
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-static {v5}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v8

    const-wide/16 v10, 0x2

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 518
    :goto_1
    iget-object v5, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 519
    iget-object v5, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 520
    iget-object v5, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 522
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getRootFolderInZip()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getDefaultFolderPath()Ljava/lang/String;

    move-result-object v9

    .line 521
    invoke-static {v5, v8, v9}, Lnet/lingala/zip4j/util/Zip4jUtil;->getRelativeFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 523
    .local v4, "relativeFileName":Ljava/lang/String;
    iget-object v5, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-static {v5, v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v0

    .line 524
    .local v0, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    if-eqz v0, :cond_2

    .line 525
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_4

    .line 526
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/lingala/zip4j/util/CRCUtil;->computeFileCRC(Ljava/lang/String;)J

    move-result-wide v2

    .line 527
    .local v2, "newCRC":J
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getCrc32()J

    move-result-wide v8

    cmp-long v5, v2, v8

    if-nez v5, :cond_4

    .line 508
    .end local v0    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v2    # "newCRC":J
    .end local v4    # "relativeFileName":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 515
    :cond_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-static {v5}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_1

    .line 531
    .restart local v0    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .restart local v4    # "relativeFileName":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v8

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v10

    sub-long/2addr v8, v10

    add-long/2addr v6, v8

    goto :goto_2
.end method

.method private checkParameters(Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 3
    .param p1, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    const/4 v2, -0x1

    .line 343
    if-nez p1, :cond_0

    .line 344
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "cannot validate zip parameters"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 349
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "unsupported compression type"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 353
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()I

    move-result v0

    if-gez v0, :cond_2

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_2

    .line 354
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid compression level. compression level dor deflate should be in the range of 0-9"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 359
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    if-eqz v0, :cond_3

    .line 360
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_3

    .line 361
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "unsupported encryption method"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getPassword()[C

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getPassword()[C

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_6

    .line 365
    :cond_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input password is empty or null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_5
    invoke-virtual {p1, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setAesKeyStrength(I)V

    .line 369
    invoke-virtual {p1, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptionMethod(I)V

    .line 372
    :cond_6
    return-void
.end method

.method private createEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 492
    new-instance v0, Lnet/lingala/zip4j/model/EndCentralDirRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/EndCentralDirRecord;-><init>()V

    .line 493
    .local v0, "endCentralDirRecord":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    const-wide/32 v2, 0x6054b50

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setSignature(J)V

    .line 494
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setNoOfThisDisk(I)V

    .line 495
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDir(I)V

    .line 496
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(I)V

    .line 497
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setOffsetOfStartOfCentralDir(J)V

    .line 498
    return-object v0
.end method

.method private getNewAddArrayList(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "fileList"    # Ljava/util/ArrayList;
    .param p2, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 542
    iget-object v7, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 543
    iget-object v7, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 544
    iget-object v7, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_2

    :cond_0
    move-object v6, p1

    .line 571
    :cond_1
    return-object v6

    .line 548
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 549
    .local v6, "result":Ljava/util/ArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 550
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 553
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getRootFolderInZip()Ljava/lang/String;

    move-result-object v8

    .line 554
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getDefaultFolderPath()Ljava/lang/String;

    move-result-object v9

    .line 552
    invoke-static {v7, v8, v9}, Lnet/lingala/zip4j/util/Zip4jUtil;->getRelativeFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 556
    .local v2, "fileName":Ljava/lang/String;
    iget-object v7, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-static {v7, v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v1

    .line 558
    .local v1, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    if-eqz v1, :cond_4

    .line 559
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_3

    .line 561
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnet/lingala/zip4j/util/CRCUtil;->computeFileCRC(Ljava/lang/String;)J

    move-result-wide v4

    .line 562
    .local v4, "newCRC":J
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->getCrc32()J

    move-result-wide v8

    cmp-long v7, v4, v8

    if-nez v7, :cond_4

    .line 549
    .end local v4    # "newCRC":J
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 569
    :cond_4
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private initAddFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 24
    .param p1, "fileList"    # Ljava/util/ArrayList;
    .param p2, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 92
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 93
    :cond_0
    new-instance v19, Lnet/lingala/zip4j/exception/ZipException;

    const-string v20, "one of the input parameters is null when adding files"

    invoke-direct/range {v19 .. v20}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 96
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-gtz v19, :cond_2

    .line 97
    new-instance v19, Lnet/lingala/zip4j/exception/ZipException;

    const-string v20, "no files to add"

    invoke-direct/range {v19 .. v20}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 100
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v19

    if-nez v19, :cond_3

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lnet/lingala/zip4j/zip/ZipEngine;->createEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lnet/lingala/zip4j/model/ZipModel;->setEndCentralDirRecord(Lnet/lingala/zip4j/model/EndCentralDirRecord;)V

    .line 104
    :cond_3
    const/4 v14, 0x0

    .line 105
    .local v14, "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    const/4 v9, 0x0

    .line 107
    .local v9, "inputStream":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/zip/ZipEngine;->checkParameters(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 109
    invoke-direct/range {p0 .. p3}, Lnet/lingala/zip4j/zip/ZipEngine;->removeFilesIfExists(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v11

    .line 113
    .local v11, "isZipFileAlreadExists":Z
    new-instance v18, Lnet/lingala/zip4j/io/SplitOutputStream;

    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/ZipModel;->getSplitLength()J

    move-result-wide v20

    invoke-direct/range {v18 .. v21}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;J)V

    .line 114
    .local v18, "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    new-instance v15, Lnet/lingala/zip4j/io/ZipOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Lnet/lingala/zip4j/io/ZipOutputStream;-><init>(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipModel;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .local v15, "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    if-eqz v11, :cond_7

    .line 117
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v19

    if-nez v19, :cond_6

    .line 118
    new-instance v19, Lnet/lingala/zip4j/exception/ZipException;

    const-string v20, "invalid end of central directory record"

    invoke-direct/range {v19 .. v20}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 216
    :catch_0
    move-exception v4

    move-object v14, v15

    .line 217
    .end local v11    # "isZipFileAlreadExists":Z
    .end local v15    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .end local v18    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .local v4, "e":Lnet/lingala/zip4j/exception/ZipException;
    .restart local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :goto_0
    :try_start_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 218
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    .end local v4    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :catchall_0
    move-exception v19

    .line 223
    :goto_1
    if-eqz v9, :cond_4

    .line 225
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    .line 230
    :cond_4
    :goto_2
    if-eqz v14, :cond_5

    .line 232
    :try_start_4
    invoke-virtual {v14}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b

    .line 236
    :cond_5
    :goto_3
    throw v19

    .line 120
    .end local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v11    # "isZipFileAlreadExists":Z
    .restart local v15    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v18    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/io/SplitOutputStream;->seek(J)V

    .line 122
    :cond_7
    const/16 v19, 0x1000

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v16, v0
    :try_end_5
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 123
    .local v16, "readBuff":[B
    const/16 v17, -0x1

    .line 124
    .local v17, "readLen":I
    const/4 v8, 0x0

    .local v8, "i":I
    move-object v10, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .local v10, "inputStream":Ljava/io/InputStream;
    :goto_4
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v8, v0, :cond_b

    .line 214
    invoke-virtual {v15}, Lnet/lingala/zip4j/io/ZipOutputStream;->finish()V

    .line 215
    invoke-virtual/range {p3 .. p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V
    :try_end_6
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_f
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 223
    if-eqz v10, :cond_8

    .line 225
    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c

    .line 230
    :cond_8
    :goto_5
    if-eqz v15, :cond_9

    .line 232
    :try_start_8
    invoke-virtual {v15}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d

    :cond_9
    :goto_6
    move-object v9, v10

    .end local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    move-object v14, v15

    .line 237
    .end local v15    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :cond_a
    :goto_7
    return-void

    .line 126
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v15    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :cond_b
    :try_start_9
    invoke-virtual/range {p3 .. p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 127
    const/16 v19, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 128
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_9
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_f
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 223
    if-eqz v10, :cond_c

    .line 225
    :try_start_a
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 230
    :cond_c
    :goto_8
    if-eqz v15, :cond_d

    .line 232
    :try_start_b
    invoke-virtual {v15}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_d
    :goto_9
    move-object v9, v10

    .end local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    move-object v14, v15

    .line 129
    .end local v15    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    goto :goto_7

    .line 132
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v15    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :cond_e
    :try_start_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    .line 133
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/ZipParameters;->getRootFolderInZip()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/ZipParameters;->getDefaultFolderPath()Ljava/lang/String;

    move-result-object v21

    .line 132
    invoke-static/range {v19 .. v21}, Lnet/lingala/zip4j/util/Zip4jUtil;->getRelativeFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v5

    .line 137
    .local v5, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    if-eqz v5, :cond_10

    .line 138
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-nez v19, :cond_1b

    .line 139
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lnet/lingala/zip4j/util/CRCUtil;->computeFileCRC(Ljava/lang/String;)J

    move-result-wide v12

    .line 140
    .local v12, "newCRC":J
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->getCrc32()J

    move-result-wide v20

    cmp-long v19, v12, v20

    if-nez v19, :cond_10

    move-object v9, v10

    .line 124
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .end local v12    # "newCRC":J
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    :cond_f
    :goto_a
    add-int/lit8 v8, v8, 0x1

    move-object v10, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_4

    .line 149
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/ZipParameters;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/lingala/zip4j/model/ZipParameters;

    .line 151
    .local v7, "fileParameters":Lnet/lingala/zip4j/model/ZipParameters;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 153
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-nez v19, :cond_14

    .line 154
    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v19

    if-eqz v19, :cond_13

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v19

    if-nez v19, :cond_13

    .line 155
    const/16 v19, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 156
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lnet/lingala/zip4j/util/CRCUtil;->computeFileCRC(Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lnet/lingala/zip4j/model/ZipParameters;->setSourceFileCRC(I)V

    .line 157
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 159
    invoke-virtual/range {p3 .. p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v19

    if-eqz v19, :cond_13

    .line 160
    const/16 v19, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 161
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_c
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_c .. :try_end_c} :catch_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 223
    if-eqz v10, :cond_11

    .line 225
    :try_start_d
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 230
    :cond_11
    :goto_b
    if-eqz v15, :cond_12

    .line 232
    :try_start_e
    invoke-virtual {v15}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    :cond_12
    :goto_c
    move-object v9, v10

    .end local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    move-object v14, v15

    .line 162
    .end local v15    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    goto/16 :goto_7

    .line 166
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v15    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :cond_13
    :try_start_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/io/File;

    invoke-static/range {v19 .. v19}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-nez v19, :cond_14

    .line 167
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionMethod(I)V

    .line 171
    :cond_14
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v7}, Lnet/lingala/zip4j/io/ZipOutputStream;->putNextEntry(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 172
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-eqz v19, :cond_15

    .line 173
    invoke-virtual {v15}, Lnet/lingala/zip4j/io/ZipOutputStream;->closeEntry()V

    move-object v9, v10

    .line 174
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_a

    .line 177
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    :cond_15
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_f .. :try_end_f} :catch_11
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 179
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    :goto_d
    :try_start_10
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v17

    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    .line 207
    invoke-virtual {v15}, Lnet/lingala/zip4j/io/ZipOutputStream;->closeEntry()V

    .line 209
    if-eqz v9, :cond_f

    .line 210
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_a

    .line 219
    .end local v5    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "fileParameters":Lnet/lingala/zip4j/model/ZipParameters;
    .end local v8    # "i":I
    .end local v16    # "readBuff":[B
    .end local v17    # "readLen":I
    :catch_1
    move-exception v4

    move-object v14, v15

    .line 220
    .end local v11    # "isZipFileAlreadExists":Z
    .end local v15    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .end local v18    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :goto_e
    :try_start_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 221
    new-instance v19, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v19
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 180
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v5    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v7    # "fileParameters":Lnet/lingala/zip4j/model/ZipParameters;
    .restart local v8    # "i":I
    .restart local v11    # "isZipFileAlreadExists":Z
    .restart local v15    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v16    # "readBuff":[B
    .restart local v17    # "readLen":I
    .restart local v18    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :cond_16
    :try_start_12
    invoke-virtual/range {p3 .. p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v19

    if-eqz v19, :cond_19

    .line 181
    invoke-virtual {v15}, Lnet/lingala/zip4j/io/ZipOutputStream;->closeEntry()V
    :try_end_12
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 182
    if-eqz v9, :cond_17

    .line 184
    :try_start_13
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 187
    :goto_f
    const/4 v9, 0x0

    .line 190
    :cond_17
    :try_start_14
    invoke-virtual {v15}, Lnet/lingala/zip4j/io/ZipOutputStream;->finish()V
    :try_end_14
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 191
    if-eqz v15, :cond_1a

    .line 193
    :try_start_15
    invoke-virtual {v15}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 196
    :goto_10
    const/4 v14, 0x0

    .line 198
    .end local v15    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :goto_11
    const/16 v19, 0x3

    :try_start_16
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 199
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_16
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_16 .. :try_end_16} :catch_10
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_e
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 223
    if-eqz v9, :cond_18

    .line 225
    :try_start_17
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_9

    .line 230
    :cond_18
    :goto_12
    if-eqz v14, :cond_a

    .line 232
    :try_start_18
    invoke-virtual {v14}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2

    goto/16 :goto_7

    .line 233
    :catch_2
    move-exception v19

    goto/16 :goto_7

    .line 203
    .end local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v15    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :cond_19
    const/16 v19, 0x0

    :try_start_19
    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v15, v0, v1, v2}, Lnet/lingala/zip4j/io/ZipOutputStream;->write([BII)V

    .line 204
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V
    :try_end_19
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_19 .. :try_end_19} :catch_0
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto :goto_d

    .line 222
    .end local v5    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "fileParameters":Lnet/lingala/zip4j/model/ZipParameters;
    .end local v8    # "i":I
    .end local v16    # "readBuff":[B
    .end local v17    # "readLen":I
    :catchall_1
    move-exception v19

    move-object v14, v15

    .end local v15    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    goto/16 :goto_1

    .line 226
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v8    # "i":I
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v15    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v16    # "readBuff":[B
    .restart local v17    # "readLen":I
    :catch_3
    move-exception v19

    goto/16 :goto_8

    .line 233
    :catch_4
    move-exception v19

    goto/16 :goto_9

    .line 226
    .restart local v5    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v7    # "fileParameters":Lnet/lingala/zip4j/model/ZipParameters;
    :catch_5
    move-exception v19

    goto/16 :goto_b

    .line 233
    :catch_6
    move-exception v19

    goto/16 :goto_c

    .line 185
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    :catch_7
    move-exception v19

    goto :goto_f

    .line 194
    :catch_8
    move-exception v19

    goto :goto_10

    .line 226
    .end local v15    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :catch_9
    move-exception v19

    goto :goto_12

    .end local v5    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "fileParameters":Lnet/lingala/zip4j/model/ZipParameters;
    .end local v8    # "i":I
    .end local v11    # "isZipFileAlreadExists":Z
    .end local v16    # "readBuff":[B
    .end local v17    # "readLen":I
    .end local v18    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_a
    move-exception v20

    goto/16 :goto_2

    .line 233
    :catch_b
    move-exception v20

    goto/16 :goto_3

    .line 226
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v8    # "i":I
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "isZipFileAlreadExists":Z
    .restart local v15    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v16    # "readBuff":[B
    .restart local v17    # "readLen":I
    .restart local v18    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_c
    move-exception v19

    goto/16 :goto_5

    .line 233
    :catch_d
    move-exception v19

    goto/16 :goto_6

    .line 222
    :catchall_2
    move-exception v19

    move-object v9, v10

    .end local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    goto/16 :goto_1

    .line 219
    .end local v8    # "i":I
    .end local v11    # "isZipFileAlreadExists":Z
    .end local v16    # "readBuff":[B
    .end local v17    # "readLen":I
    .end local v18    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_e
    move-exception v4

    goto/16 :goto_e

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v8    # "i":I
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "isZipFileAlreadExists":Z
    .restart local v15    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v16    # "readBuff":[B
    .restart local v17    # "readLen":I
    .restart local v18    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_f
    move-exception v4

    move-object v9, v10

    .end local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    goto/16 :goto_e

    .line 216
    .end local v8    # "i":I
    .end local v11    # "isZipFileAlreadExists":Z
    .end local v16    # "readBuff":[B
    .end local v17    # "readLen":I
    .end local v18    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_10
    move-exception v4

    goto/16 :goto_0

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v8    # "i":I
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "isZipFileAlreadExists":Z
    .restart local v15    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v16    # "readBuff":[B
    .restart local v17    # "readLen":I
    .restart local v18    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_11
    move-exception v4

    move-object v9, v10

    .end local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    goto/16 :goto_0

    .end local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v5    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v7    # "fileParameters":Lnet/lingala/zip4j/model/ZipParameters;
    .restart local v15    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :cond_1a
    move-object v14, v15

    .end local v15    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    goto :goto_11

    .end local v7    # "fileParameters":Lnet/lingala/zip4j/model/ZipParameters;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v14    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v15    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :cond_1b
    move-object v9, v10

    .end local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_a
.end method

.method private prepareFileOutputStream()Ljava/io/RandomAccessFile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 475
    iget-object v3, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, "outPath":Ljava/lang/String;
    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 477
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    const-string v4, "invalid output path"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 481
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 482
    .local v1, "outFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 483
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 485
    :cond_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 486
    .end local v1    # "outFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v3, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private removeFilesIfExists(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 17
    .param p1, "fileList"    # Ljava/util/ArrayList;
    .param p2, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 387
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v14}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 388
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v14}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v14

    invoke-virtual {v14}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 389
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v14}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v14

    invoke-virtual {v14}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-gtz v14, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    const/4 v12, 0x0

    .line 396
    .local v12, "outputStream":Ljava/io/RandomAccessFile;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    if-lt v7, v14, :cond_2

    .line 464
    if-eqz v12, :cond_0

    .line 466
    :try_start_1
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 467
    :catch_0
    move-exception v14

    goto :goto_0

    .line 397
    :cond_2
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 399
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 400
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/ZipParameters;->getRootFolderInZip()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/ZipParameters;->getDefaultFolderPath()Ljava/lang/String;

    move-result-object v16

    .line 399
    invoke-static/range {v14 .. v16}, Lnet/lingala/zip4j/util/Zip4jUtil;->getRelativeFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 402
    .local v6, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-static {v14, v6}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v5

    .line 404
    .local v5, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    if-eqz v5, :cond_3

    .line 405
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-nez v14, :cond_3

    .line 406
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lnet/lingala/zip4j/util/CRCUtil;->computeFileCRC(Ljava/lang/String;)J

    move-result-wide v8

    .line 407
    .local v8, "newCRC":J
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->getCrc32()J

    move-result-wide v14

    cmp-long v14, v8, v14

    if-nez v14, :cond_4

    .line 396
    .end local v8    # "newCRC":J
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 413
    .restart local v8    # "newCRC":J
    :cond_4
    if-eqz v12, :cond_5

    .line 414
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    .line 415
    const/4 v12, 0x0

    .line 419
    :cond_5
    new-instance v2, Lnet/lingala/zip4j/util/ArchiveMaintainer;

    invoke-direct {v2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;-><init>()V

    .line 420
    .local v2, "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    const/4 v14, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 421
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v0, p3

    invoke-virtual {v2, v14, v5, v0}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->initRemoveZipFile(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)Ljava/util/HashMap;

    move-result-object v13

    .line 424
    .local v13, "retMap":Ljava/util/HashMap;
    invoke-virtual/range {p3 .. p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 425
    const/4 v14, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 426
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 464
    if-eqz v12, :cond_0

    .line 466
    :try_start_3
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 467
    :catch_1
    move-exception v14

    goto :goto_0

    .line 431
    :cond_6
    const/4 v14, 0x0

    :try_start_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 433
    if-nez v12, :cond_3

    .line 434
    invoke-direct/range {p0 .. p0}, Lnet/lingala/zip4j/zip/ZipEngine;->prepareFileOutputStream()Ljava/io/RandomAccessFile;

    move-result-object v12

    .line 436
    if-eqz v13, :cond_3

    .line 437
    const-string v14, "offsetCentralDir"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v14

    if-eqz v14, :cond_3

    .line 438
    const-wide/16 v10, -0x1

    .line 442
    .local v10, "offsetCentralDir":J
    :try_start_5
    const-string v14, "offsetCentralDir"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 441
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v10

    .line 453
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-ltz v14, :cond_3

    .line 454
    :try_start_6
    invoke-virtual {v12, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 461
    .end local v2    # "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v8    # "newCRC":J
    .end local v10    # "offsetCentralDir":J
    .end local v13    # "retMap":Ljava/util/HashMap;
    :catch_2
    move-exception v3

    .line 462
    .local v3, "e":Ljava/io/IOException;
    :try_start_7
    new-instance v14, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v14, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 463
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 464
    if-eqz v12, :cond_7

    .line 466
    :try_start_8
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 471
    :cond_7
    :goto_3
    throw v14

    .line 443
    .restart local v2    # "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v8    # "newCRC":J
    .restart local v10    # "offsetCentralDir":J
    .restart local v13    # "retMap":Ljava/util/HashMap;
    :catch_3
    move-exception v3

    .line 444
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_9
    new-instance v14, Lnet/lingala/zip4j/exception/ZipException;

    .line 445
    const-string v15, "NumberFormatException while parsing offset central directory. Cannot update already existing file header"

    .line 444
    invoke-direct {v14, v15}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 447
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v3

    .line 448
    .local v3, "e":Ljava/lang/Exception;
    new-instance v14, Lnet/lingala/zip4j/exception/ZipException;

    .line 449
    const-string v15, "Error while parsing offset central directory. Cannot update already existing file header"

    .line 448
    invoke-direct {v14, v15}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 467
    .end local v2    # "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v8    # "newCRC":J
    .end local v10    # "offsetCentralDir":J
    .end local v13    # "retMap":Ljava/util/HashMap;
    :catch_5
    move-exception v15

    goto :goto_3
.end method


# virtual methods
.method public addFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V
    .locals 6
    .param p1, "fileList"    # Ljava/util/ArrayList;
    .param p2, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p4, "runInThread"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 58
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 59
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "one of the input parameters is null when adding files"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 63
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "no files to add"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_2
    invoke-virtual {p3, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 67
    invoke-virtual {p3, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V

    .line 68
    invoke-virtual {p3, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 70
    if-eqz p4, :cond_3

    .line 71
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/zip/ZipEngine;->calculateTotalWork(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;)J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setTotalWork(J)V

    .line 72
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 74
    new-instance v0, Lnet/lingala/zip4j/zip/ZipEngine$1;

    const-string v2, "Zip4j"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lnet/lingala/zip4j/zip/ZipEngine$1;-><init>(Lnet/lingala/zip4j/zip/ZipEngine;Ljava/lang/String;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 82
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 87
    .end local v0    # "thread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 85
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/zip/ZipEngine;->initAddFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    goto :goto_0
.end method

.method public addFolderToZip(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p4, "runInThread"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 293
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 294
    :cond_0
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "one of the input parameters is null, cannot add folder to zip"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 297
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 298
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "input folder does not exist"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 301
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    .line 302
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "input file is not a folder, user addFileToZip method to add files"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 305
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileReadAccess(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 306
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cannot read folder: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 309
    :cond_4
    const/4 v1, 0x0

    .line 310
    .local v1, "rootFolderPath":Ljava/lang/String;
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->isIncludeRootFolder()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 311
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 312
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 320
    :goto_0
    invoke-virtual {p2, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setDefaultFolderPath(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->isReadHiddenFiles()Z

    move-result v2

    invoke-static {p1, v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFilesInDirectoryRec(Ljava/io/File;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 324
    .local v0, "fileList":Ljava/util/ArrayList;
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->isIncludeRootFolder()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 325
    if-nez v0, :cond_5

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "fileList":Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .restart local v0    # "fileList":Ljava/util/ArrayList;
    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_6
    invoke-direct {p0, v0, p2}, Lnet/lingala/zip4j/zip/ZipEngine;->getNewAddArrayList(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/util/ArrayList;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_b

    .line 334
    invoke-virtual {p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V

    .line 338
    :goto_1
    return-void

    .line 312
    .end local v0    # "fileList":Ljava/util/ArrayList;
    :cond_7
    const-string v1, ""

    goto :goto_0

    .line 314
    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 316
    :goto_2
    goto :goto_0

    .line 314
    :cond_9
    const-string v1, ""

    goto :goto_2

    .line 317
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 337
    .restart local v0    # "fileList":Ljava/util/ArrayList;
    :cond_b
    invoke-virtual {p0, v0, p2, p3, p4}, Lnet/lingala/zip4j/zip/ZipEngine;->addFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V

    goto :goto_1
.end method

.method public addStreamToZip(Ljava/io/InputStream;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 10
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 240
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 241
    :cond_0
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "one of the input parameters is null, cannot add stream to zip"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 244
    :cond_1
    const/4 v2, 0x0

    .line 247
    .local v2, "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :try_start_0
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/zip/ZipEngine;->checkParameters(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 249
    iget-object v7, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v1

    .line 251
    .local v1, "isZipFileAlreadExists":Z
    new-instance v6, Lnet/lingala/zip4j/io/SplitOutputStream;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getSplitLength()J

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;J)V

    .line 252
    .local v6, "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    new-instance v3, Lnet/lingala/zip4j/io/ZipOutputStream;

    iget-object v7, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v3, v6, v7}, Lnet/lingala/zip4j/io/ZipOutputStream;-><init>(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipModel;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v2    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .local v3, "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    if-eqz v1, :cond_4

    .line 255
    :try_start_1
    iget-object v7, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v7

    if-nez v7, :cond_3

    .line 256
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "invalid end of central directory record"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 276
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 277
    .end local v1    # "isZipFileAlreadExists":Z
    .end local v3    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .end local v6    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .local v0, "e":Lnet/lingala/zip4j/exception/ZipException;
    .restart local v2    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :goto_0
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    .end local v0    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :catchall_0
    move-exception v7

    .line 281
    :goto_1
    if-eqz v2, :cond_2

    .line 283
    :try_start_3
    invoke-virtual {v2}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 288
    :cond_2
    :goto_2
    throw v7

    .line 258
    .end local v2    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v1    # "isZipFileAlreadExists":Z
    .restart local v3    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v6    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :cond_3
    :try_start_4
    iget-object v7, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lnet/lingala/zip4j/io/SplitOutputStream;->seek(J)V

    .line 261
    :cond_4
    const/16 v7, 0x1000

    new-array v4, v7, [B

    .line 262
    .local v4, "readBuff":[B
    const/4 v5, -0x1

    .line 264
    .local v5, "readLen":I
    const/4 v7, 0x0

    invoke-virtual {v3, v7, p2}, Lnet/lingala/zip4j/io/ZipOutputStream;->putNextEntry(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 266
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 267
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 268
    :goto_3
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_7

    .line 273
    :cond_5
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/ZipOutputStream;->closeEntry()V

    .line 274
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/ZipOutputStream;->finish()V
    :try_end_4
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 281
    if-eqz v3, :cond_6

    .line 283
    :try_start_5
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 289
    :cond_6
    :goto_4
    return-void

    .line 269
    :cond_7
    const/4 v7, 0x0

    :try_start_6
    invoke-virtual {v3, v4, v7, v5}, Lnet/lingala/zip4j/io/ZipOutputStream;->write([BII)V
    :try_end_6
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 278
    .end local v4    # "readBuff":[B
    .end local v5    # "readLen":I
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 279
    .end local v1    # "isZipFileAlreadExists":Z
    .end local v3    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .end local v6    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :goto_5
    :try_start_7
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v7, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 284
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v8

    goto :goto_2

    .end local v2    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v1    # "isZipFileAlreadExists":Z
    .restart local v3    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v4    # "readBuff":[B
    .restart local v5    # "readLen":I
    .restart local v6    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 280
    .end local v4    # "readBuff":[B
    .end local v5    # "readLen":I
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v2    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    goto :goto_1

    .line 278
    .end local v1    # "isZipFileAlreadExists":Z
    .end local v6    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_4
    move-exception v0

    goto :goto_5

    .line 276
    :catch_5
    move-exception v0

    goto :goto_0
.end method

.class public Lnet/lingala/zip4j/unzip/Unzip;
.super Ljava/lang/Object;
.source "Unzip.java"


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
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "ZipModel is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lnet/lingala/zip4j/unzip/Unzip;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lnet/lingala/zip4j/unzip/Unzip;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/lingala/zip4j/unzip/Unzip;->initExtractAll(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lnet/lingala/zip4j/unzip/Unzip;Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct/range {p0 .. p5}, Lnet/lingala/zip4j/unzip/Unzip;->initExtractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method private calculateTotalWork(Ljava/util/ArrayList;)J
    .locals 8
    .param p1, "fileHeaders"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 258
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    const-string v5, "fileHeaders is null, cannot calculate total work"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 261
    :cond_0
    const-wide/16 v2, 0x0

    .line 263
    .local v2, "totalWork":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 274
    return-wide v2

    .line 264
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/FileHeader;

    .line 265
    .local v0, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 266
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUnCompressedSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 267
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUnCompressedSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 263
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_1
.end method

.method private checkOutputDirectoryStructure(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "outPath"    # Ljava/lang/String;
    .param p3, "newFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 227
    if-eqz p1, :cond_0

    invoke-static {p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 228
    :cond_0
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    const-string v7, "Cannot check output directory structure...one of the parameters was null"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 231
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "fileName":Ljava/lang/String;
    invoke-static {p3}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 234
    move-object v3, p3

    .line 237
    :cond_2
    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 253
    :cond_3
    :goto_0
    return-void

    .line 242
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "compOutPath":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "parentDir":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    .local v5, "parentDirFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 248
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "parentDir":Ljava/lang/String;
    .end local v5    # "parentDirFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v6, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private initExtractAll(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V
    .locals 7
    .param p1, "fileHeaders"    # Ljava/util/ArrayList;
    .param p2, "unzipParameters"    # Lnet/lingala/zip4j/model/UnzipParameters;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p4, "outPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v6, v0, :cond_0

    .line 89
    invoke-virtual {p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V

    .line 90
    :goto_1
    return-void

    .line 81
    :cond_0
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lingala/zip4j/model/FileHeader;

    .line 82
    .local v1, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p4

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lnet/lingala/zip4j/unzip/Unzip;->initExtractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 83
    invoke-virtual {p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V

    goto :goto_1

    .line 80
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private initExtractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 7
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "outPath"    # Ljava/lang/String;
    .param p3, "unzipParameters"    # Lnet/lingala/zip4j/model/UnzipParameters;
    .param p4, "newFileName"    # Ljava/lang/String;
    .param p5, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    const-string v6, "fileHeader is null"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 159
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 161
    sget-object v5, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 167
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->isDirectory()Z
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v5

    if-eqz v5, :cond_4

    .line 169
    :try_start_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "fileName":Ljava/lang/String;
    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 219
    .end local v3    # "fileName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 173
    .restart local v3    # "fileName":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "completePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 176
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 178
    .end local v0    # "completePath":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p5, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 180
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v5, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 203
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 204
    .local v1, "e":Lnet/lingala/zip4j/exception/ZipException;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lnet/lingala/zip4j/exception/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 205
    invoke-virtual {v1}, Lnet/lingala/zip4j/exception/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, " - Wrong Password?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_7

    .line 206
    invoke-virtual {p5, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorWrongPassword(Ljava/lang/Throwable;)V

    .line 214
    :goto_1
    throw v1

    .line 184
    .end local v1    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :cond_4
    :try_start_3
    invoke-direct {p0, p1, p2, p4}, Lnet/lingala/zip4j/unzip/Unzip;->checkOutputDirectoryStructure(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v4, Lnet/lingala/zip4j/unzip/UnzipEngine;

    iget-object v5, p0, Lnet/lingala/zip4j/unzip/Unzip;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v4, v5, p1}, Lnet/lingala/zip4j/unzip/UnzipEngine;-><init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;)V
    :try_end_3
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 188
    .local v4, "unzipEngine":Lnet/lingala/zip4j/unzip/UnzipEngine;
    :try_start_4
    invoke-virtual {v4, p5, p2, p4, p3}, Lnet/lingala/zip4j/unzip/UnzipEngine;->unzipFile(Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 189
    :catch_2
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v1, :cond_6

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 191
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, " - Wrong Password?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_5

    .line 192
    invoke-virtual {p5, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorWrongPassword(Ljava/lang/Throwable;)V

    .line 200
    :goto_2
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v5, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_5
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 215
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "unzipEngine":Lnet/lingala/zip4j/unzip/UnzipEngine;
    :catch_3
    move-exception v1

    .line 216
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p5, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 217
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v5, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 194
    .restart local v4    # "unzipEngine":Lnet/lingala/zip4j/unzip/UnzipEngine;
    :cond_5
    :try_start_6
    invoke-virtual {p5, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 197
    :cond_6
    invoke-virtual {p5, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 208
    .end local v4    # "unzipEngine":Lnet/lingala/zip4j/unzip/UnzipEngine;
    .local v1, "e":Lnet/lingala/zip4j/exception/ZipException;
    :cond_7
    invoke-virtual {p5, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 211
    :cond_8
    invoke-virtual {p5, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public extractAll(Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V
    .locals 8
    .param p1, "unzipParameters"    # Lnet/lingala/zip4j/model/UnzipParameters;
    .param p2, "outPath"    # Ljava/lang/String;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p4, "runInThread"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 48
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/Unzip;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v7

    .line 50
    .local v7, "centralDirectory":Lnet/lingala/zip4j/model/CentralDirectory;
    if-eqz v7, :cond_0

    .line 51
    invoke-virtual {v7}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 52
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "invalid central directory in zipModel"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_1
    invoke-virtual {v7}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v3

    .line 57
    .local v3, "fileHeaders":Ljava/util/ArrayList;
    invoke-virtual {p3, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 58
    invoke-direct {p0, v3}, Lnet/lingala/zip4j/unzip/Unzip;->calculateTotalWork(Ljava/util/ArrayList;)J

    move-result-wide v4

    invoke-virtual {p3, v4, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setTotalWork(J)V

    .line 59
    invoke-virtual {p3, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V

    .line 61
    if-eqz p4, :cond_2

    .line 62
    new-instance v0, Lnet/lingala/zip4j/unzip/Unzip$1;

    const-string v2, "Zip4j"

    move-object v1, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lnet/lingala/zip4j/unzip/Unzip$1;-><init>(Lnet/lingala/zip4j/unzip/Unzip;Ljava/lang/String;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V

    .line 70
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 75
    .end local v0    # "thread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 72
    :cond_2
    invoke-direct {p0, v3, p1, p3, p2}, Lnet/lingala/zip4j/unzip/Unzip;->initExtractAll(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public extractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V
    .locals 8
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "outPath"    # Ljava/lang/String;
    .param p3, "unzipParameters"    # Lnet/lingala/zip4j/model/UnzipParameters;
    .param p4, "newFileName"    # Ljava/lang/String;
    .param p5, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p6, "runInThread"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 95
    if-nez p1, :cond_0

    .line 96
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "fileHeader is null"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_0
    invoke-virtual {p5, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 100
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v2

    invoke-virtual {p5, v2, v3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setTotalWork(J)V

    .line 101
    invoke-virtual {p5, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V

    .line 102
    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setPercentDone(I)V

    .line 103
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 105
    if-eqz p6, :cond_1

    .line 106
    new-instance v0, Lnet/lingala/zip4j/unzip/Unzip$2;

    const-string v2, "Zip4j"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lnet/lingala/zip4j/unzip/Unzip$2;-><init>(Lnet/lingala/zip4j/unzip/Unzip;Ljava/lang/String;Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 115
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 121
    .end local v0    # "thread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-direct/range {p0 .. p5}, Lnet/lingala/zip4j/unzip/Unzip;->initExtractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 118
    invoke-virtual {p5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V

    goto :goto_0
.end method

.method public extractFiles(Ljava/util/ArrayList;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V
    .locals 7
    .param p1, "fileHeaders"    # Ljava/util/ArrayList;
    .param p2, "outPath"    # Ljava/lang/String;
    .param p3, "unzipParameters"    # Lnet/lingala/zip4j/model/UnzipParameters;
    .param p4, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p5, "runInThread"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 126
    if-nez p1, :cond_0

    .line 127
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "fileHeaders is null"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_0
    invoke-virtual {p4, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 131
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/unzip/Unzip;->calculateTotalWork(Ljava/util/ArrayList;)J

    move-result-wide v2

    invoke-virtual {p4, v2, v3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setTotalWork(J)V

    .line 132
    invoke-virtual {p4, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V

    .line 133
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setPercentDone(I)V

    .line 135
    if-eqz p5, :cond_1

    .line 136
    new-instance v0, Lnet/lingala/zip4j/unzip/Unzip$3;

    const-string v2, "Zip4j"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lnet/lingala/zip4j/unzip/Unzip$3;-><init>(Lnet/lingala/zip4j/unzip/Unzip;Ljava/lang/String;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V

    .line 144
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 149
    .end local v0    # "thread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-direct {p0, p1, p3, p4, p2}, Lnet/lingala/zip4j/unzip/Unzip;->initExtractAll(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getInputStream(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/io/ZipInputStream;
    .locals 2
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Lnet/lingala/zip4j/unzip/UnzipEngine;

    iget-object v1, p0, Lnet/lingala/zip4j/unzip/Unzip;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v0, v1, p1}, Lnet/lingala/zip4j/unzip/UnzipEngine;-><init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;)V

    .line 223
    .local v0, "unzipEngine":Lnet/lingala/zip4j/unzip/UnzipEngine;
    invoke-virtual {v0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getInputStream()Lnet/lingala/zip4j/io/ZipInputStream;

    move-result-object v1

    return-object v1
.end method

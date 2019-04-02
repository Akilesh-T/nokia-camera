.class Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;
.super Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;
.source "ProcessAllImagesInFolderUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drew/tools/ProcessAllImagesInFolderUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextFileOutputHandler"
.end annotation


# static fields
.field private static final NEW_LINE:Ljava/lang/String; = "\n"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;-><init>()V

    return-void
.end method

.method private static closeWriter(Ljava/io/Writer;)V
    .locals 1
    .param p0, "writer"    # Ljava/io/Writer;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    if-eqz p0, :cond_0

    .line 452
    const-string v0, "Generated using metadata-extractor\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 453
    const-string v0, "https://drewnoakes.com/code/exif/\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 455
    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    .line 457
    :cond_0
    return-void
.end method

.method private static deleteRecursively(Ljava/io/File;)V
    .locals 8
    .param p0, "directory"    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 265
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    .line 266
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Must be a directory."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 268
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 269
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 270
    .local v5, "list":[Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 271
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .line 272
    .local v3, "item":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 274
    invoke-static {v1}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;->deleteRecursively(Ljava/io/File;)V

    .line 271
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 281
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "item":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "list":[Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 282
    return-void
.end method

.method private static openWriter(Ljava/io/File;)Ljava/io/PrintWriter;
    .locals 11
    .param p0, "file"    # Ljava/io/File;
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
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 422
    new-instance v1, Ljava/io/File;

    const-string v6, "%s/metadata"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 423
    .local v1, "metadataDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 424
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 426
    :cond_0
    const-string v6, "%s/metadata/%s.txt"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "outputPath":Ljava/lang/String;
    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 431
    .local v5, "writer":Ljava/io/Writer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FILE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 434
    const/4 v3, 0x0

    .line 436
    .local v3, "stream":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    .end local v3    # "stream":Ljava/io/BufferedInputStream;
    .local v4, "stream":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v4}, Lcom/drew/imaging/FileTypeDetector;->detectFileType(Ljava/io/BufferedInputStream;)Lcom/drew/imaging/FileType;

    move-result-object v0

    .line 438
    .local v0, "fileType":Lcom/drew/imaging/FileType;
    const-string v6, "TYPE: %s\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/drew/imaging/FileType;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 439
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 441
    if-eqz v4, :cond_1

    .line 442
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 446
    :cond_1
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    return-object v6

    .line 441
    .end local v0    # "fileType":Lcom/drew/imaging/FileType;
    .end local v4    # "stream":Ljava/io/BufferedInputStream;
    .restart local v3    # "stream":Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v6

    :goto_0
    if-eqz v3, :cond_2

    .line 442
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_2
    throw v6

    .line 441
    .end local v3    # "stream":Ljava/io/BufferedInputStream;
    .restart local v4    # "stream":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/BufferedInputStream;
    .restart local v3    # "stream":Ljava/io/BufferedInputStream;
    goto :goto_0
.end method

.method private static writeHierarchyLevel(Lcom/drew/metadata/Metadata;Ljava/io/PrintWriter;Lcom/drew/metadata/Directory;I)V
    .locals 5
    .param p0, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "writer"    # Ljava/io/PrintWriter;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "parent"    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "level"    # I

    .prologue
    .line 379
    const/4 v3, 0x4

    .line 381
    .local v3, "indent":I
    invoke-virtual {p0}, Lcom/drew/metadata/Metadata;->getDirectories()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/drew/metadata/Directory;

    .line 382
    .local v0, "child":Lcom/drew/metadata/Directory;
    if-nez p2, :cond_2

    .line 383
    invoke-virtual {v0}, Lcom/drew/metadata/Directory;->getParent()Lcom/drew/metadata/Directory;

    move-result-object v4

    if-nez v4, :cond_0

    .line 389
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    mul-int/lit8 v4, p3, 0x4

    if-ge v1, v4, :cond_3

    .line 390
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->write(I)V

    .line 389
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 385
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Lcom/drew/metadata/Directory;->getParent()Lcom/drew/metadata/Directory;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 392
    .restart local v1    # "i":I
    :cond_3
    const-string v4, "- "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0}, Lcom/drew/metadata/Directory;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 394
    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 395
    add-int/lit8 v4, p3, 0x1

    invoke-static {p0, p1, v0, v4}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;->writeHierarchyLevel(Lcom/drew/metadata/Metadata;Ljava/io/PrintWriter;Lcom/drew/metadata/Directory;I)V

    goto :goto_0

    .line 397
    .end local v0    # "child":Lcom/drew/metadata/Directory;
    .end local v1    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method public onBeforeExtraction(Ljava/io/File;Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "log"    # Ljava/io/PrintStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "relativePath"    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 287
    invoke-super {p0, p1, p2, p3}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->onBeforeExtraction(Ljava/io/File;Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 289
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public onExtractionError(Ljava/io/File;Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "throwable"    # Ljava/lang/Throwable;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "log"    # Ljava/io/PrintStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 402
    invoke-super {p0, p1, p2, p3}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->onExtractionError(Ljava/io/File;Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    .line 405
    const/4 v1, 0x0

    .line 407
    .local v1, "writer":Ljava/io/PrintWriter;
    :try_start_0
    invoke-static {p1}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;->openWriter(Ljava/io/File;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXCEPTION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 409
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :try_start_1
    invoke-static {v1}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;->closeWriter(Ljava/io/Writer;)V

    .line 416
    :goto_0
    return-void

    .line 411
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;->closeWriter(Ljava/io/Writer;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "IO exception writing metadata file: %s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "\n"

    aput-object v5, v3, v4

    invoke-virtual {p3, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_0
.end method

.method public onExtractionSuccess(Ljava/io/File;Lcom/drew/metadata/Metadata;Ljava/lang/String;Ljava/io/PrintStream;)V
    .locals 28
    .param p1, "file"    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "relativePath"    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "log"    # Ljava/io/PrintStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 295
    invoke-super/range {p0 .. p4}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->onExtractionSuccess(Ljava/io/File;Lcom/drew/metadata/Metadata;Ljava/lang/String;Ljava/io/PrintStream;)V

    .line 298
    const/16 v19, 0x0

    .line 301
    .local v19, "writer":Ljava/io/PrintWriter;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;->openWriter(Ljava/io/File;)Ljava/io/PrintWriter;

    move-result-object v19

    .line 304
    invoke-virtual/range {p2 .. p2}, Lcom/drew/metadata/Metadata;->hasErrors()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 305
    invoke-virtual/range {p2 .. p2}, Lcom/drew/metadata/Metadata;->getDirectories()Ljava/lang/Iterable;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/drew/metadata/Directory;

    .line 306
    .local v6, "directory":Lcom/drew/metadata/Directory;
    invoke-virtual {v6}, Lcom/drew/metadata/Directory;->hasErrors()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 308
    invoke-virtual {v6}, Lcom/drew/metadata/Directory;->getErrors()Ljava/lang/Iterable;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 309
    .local v9, "error":Ljava/lang/String;
    const-string v23, "[ERROR: %s] %s%s"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v6}, Lcom/drew/metadata/Directory;->getName()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object v9, v24, v25

    const/16 v25, 0x2

    const-string v26, "\n"

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 370
    .end local v6    # "directory":Lcom/drew/metadata/Directory;
    .end local v9    # "error":Ljava/lang/String;
    .end local v11    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v23

    :try_start_1
    invoke-static/range {v19 .. v19}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;->closeWriter(Ljava/io/Writer;)V

    throw v23
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 372
    :catch_0
    move-exception v8

    .line 373
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 375
    .end local v8    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 311
    :cond_1
    :try_start_2
    const-string v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 315
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/drew/metadata/Metadata;->getDirectories()Ljava/lang/Iterable;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/drew/metadata/Directory;

    .line 316
    .restart local v6    # "directory":Lcom/drew/metadata/Directory;
    invoke-virtual {v6}, Lcom/drew/metadata/Directory;->getName()Ljava/lang/String;

    move-result-object v7

    .line 318
    .local v7, "directoryName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/drew/metadata/Directory;->getTags()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/drew/metadata/Tag;

    .line 319
    .local v16, "tag":Lcom/drew/metadata/Tag;
    invoke-virtual/range {v16 .. v16}, Lcom/drew/metadata/Tag;->getTagName()Ljava/lang/String;

    move-result-object v17

    .line 320
    .local v17, "tagName":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/drew/metadata/Tag;->getDescription()Ljava/lang/String;

    move-result-object v5

    .line 321
    .local v5, "description":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 322
    const-string v5, ""

    .line 324
    :cond_4
    instance-of v0, v6, Lcom/drew/metadata/file/FileMetadataDirectory;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    invoke-virtual/range {v16 .. v16}, Lcom/drew/metadata/Tag;->getTagType()I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 325
    const-string v5, "<omitted for regression testing as checkout dependent>"

    .line 326
    :cond_5
    const-string v23, "[%s - %s] %s = %s%s"

    const/16 v24, 0x5

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v7, v24, v25

    const/16 v25, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/drew/metadata/Tag;->getTagTypeHex()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    aput-object v17, v24, v25

    const/16 v25, 0x3

    aput-object v5, v24, v25

    const/16 v25, 0x4

    const-string v26, "\n"

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_3

    .line 328
    .end local v5    # "description":Ljava/lang/String;
    .end local v16    # "tag":Lcom/drew/metadata/Tag;
    .end local v17    # "tagName":Ljava/lang/String;
    :cond_6
    invoke-virtual {v6}, Lcom/drew/metadata/Directory;->getTagCount()I

    move-result v23

    if-eqz v23, :cond_7

    .line 329
    const-string v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 331
    :cond_7
    instance-of v0, v6, Lcom/drew/metadata/xmp/XmpDirectory;

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 332
    const/16 v20, 0x0

    .line 333
    .local v20, "wrote":Z
    move-object v0, v6

    check-cast v0, Lcom/drew/metadata/xmp/XmpDirectory;

    move-object/from16 v21, v0

    .line 334
    .local v21, "xmpDirectory":Lcom/drew/metadata/xmp/XmpDirectory;
    invoke-virtual/range {v21 .. v21}, Lcom/drew/metadata/xmp/XmpDirectory;->getXMPMeta()Lcom/adobe/xmp/XMPMeta;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v22

    .line 336
    .local v22, "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    :try_start_3
    invoke-interface/range {v22 .. v22}, Lcom/adobe/xmp/XMPMeta;->iterator()Lcom/adobe/xmp/XMPIterator;

    move-result-object v12

    .line 337
    .local v12, "iterator":Lcom/adobe/xmp/XMPIterator;
    :goto_4
    invoke-interface {v12}, Lcom/adobe/xmp/XMPIterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 338
    invoke-interface {v12}, Lcom/adobe/xmp/XMPIterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 339
    .local v15, "prop":Lcom/adobe/xmp/properties/XMPPropertyInfo;
    invoke-interface {v15}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getNamespace()Ljava/lang/String;

    move-result-object v13

    .line 340
    .local v13, "ns":Ljava/lang/String;
    invoke-interface {v15}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getPath()Ljava/lang/String;

    move-result-object v14

    .line 341
    .local v14, "path":Ljava/lang/String;
    invoke-interface {v15}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getValue()Ljava/lang/String;

    move-result-object v18

    .line 343
    .local v18, "value":Ljava/lang/String;
    if-nez v13, :cond_8

    .line 344
    const-string v13, ""

    .line 345
    :cond_8
    if-nez v14, :cond_9

    .line 346
    const-string v14, ""

    .line 348
    :cond_9
    const/16 v4, 0x200

    .line 349
    .local v4, "MAX_XMP_VALUE_LENGTH":I
    if-nez v18, :cond_b

    .line 350
    const-string v18, ""

    .line 354
    :cond_a
    :goto_5
    const-string v23, "[XMPMeta - %s] %s = %s%s"

    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v13, v24, v25

    const/16 v25, 0x1

    aput-object v14, v24, v25

    const/16 v25, 0x2

    aput-object v18, v24, v25

    const/16 v25, 0x3

    const-string v26, "\n"

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 355
    const/16 v20, 0x1

    .line 356
    goto :goto_4

    .line 351
    :cond_b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x200

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_a

    .line 352
    const-string v23, "%s <truncated from %d characters>"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x200

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Lcom/adobe/xmp/XMPException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v18

    goto :goto_5

    .line 357
    .end local v4    # "MAX_XMP_VALUE_LENGTH":I
    .end local v12    # "iterator":Lcom/adobe/xmp/XMPIterator;
    .end local v13    # "ns":Ljava/lang/String;
    .end local v14    # "path":Ljava/lang/String;
    .end local v15    # "prop":Lcom/adobe/xmp/properties/XMPPropertyInfo;
    .end local v18    # "value":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 358
    .local v8, "e":Lcom/adobe/xmp/XMPException;
    :try_start_4
    invoke-virtual {v8}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    .line 360
    .end local v8    # "e":Lcom/adobe/xmp/XMPException;
    :cond_c
    if-eqz v20, :cond_3

    .line 361
    const-string v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 366
    .end local v6    # "directory":Lcom/drew/metadata/Directory;
    .end local v7    # "directoryName":Ljava/lang/String;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v20    # "wrote":Z
    .end local v21    # "xmpDirectory":Lcom/drew/metadata/xmp/XmpDirectory;
    .end local v22    # "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    :cond_d
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;->writeHierarchyLevel(Lcom/drew/metadata/Metadata;Ljava/io/PrintWriter;Lcom/drew/metadata/Directory;I)V

    .line 368
    const-string v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 370
    :try_start_5
    invoke-static/range {v19 .. v19}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;->closeWriter(Ljava/io/Writer;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1
.end method

.method public onStartingDirectory(Ljava/io/File;)V
    .locals 3
    .param p1, "directoryPath"    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 255
    invoke-super {p0, p1}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->onStartingDirectory(Ljava/io/File;)V

    .line 258
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/metadata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, "metadataDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    invoke-static {v0}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;->deleteRecursively(Ljava/io/File;)V

    .line 261
    :cond_0
    return-void
.end method

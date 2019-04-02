.class public Lcom/drew/tools/ProcessAllImagesInFolderUtility;
.super Ljava/lang/Object;
.source "ProcessAllImagesInFolderUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/drew/tools/ProcessAllImagesInFolderUtility$BasicFileHandler;,
        Lcom/drew/tools/ProcessAllImagesInFolderUtility$UnknownTagHandler;,
        Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler;,
        Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;,
        Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;,
        Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 20
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/drew/imaging/jpeg/JpegProcessingException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v3, "directories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 57
    .local v5, "handler":Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 59
    .local v8, "log":Ljava/io/PrintStream;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    array-length v9, v0

    if-ge v6, v9, :cond_5

    .line 60
    aget-object v2, p0, v6

    .line 61
    .local v2, "arg":Ljava/lang/String;
    const-string v9, "--text"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 63
    new-instance v5, Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;

    .end local v5    # "handler":Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;
    invoke-direct {v5}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;-><init>()V

    .line 59
    .restart local v5    # "handler":Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 64
    :cond_0
    const-string v9, "--markdown"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 66
    new-instance v5, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler;

    .end local v5    # "handler":Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;
    invoke-direct {v5}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler;-><init>()V

    .restart local v5    # "handler":Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;
    goto :goto_1

    .line 67
    :cond_1
    const-string v9, "--unknown"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 69
    new-instance v5, Lcom/drew/tools/ProcessAllImagesInFolderUtility$UnknownTagHandler;

    .end local v5    # "handler":Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;
    invoke-direct {v5}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$UnknownTagHandler;-><init>()V

    .restart local v5    # "handler":Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;
    goto :goto_1

    .line 70
    :cond_2
    const-string v9, "--log-file"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 71
    move-object/from16 v0, p0

    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    if-ne v6, v9, :cond_3

    .line 72
    invoke-static {}, Lcom/drew/tools/ProcessAllImagesInFolderUtility;->printUsage()V

    .line 73
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    .line 75
    :cond_3
    new-instance v8, Ljava/io/PrintStream;

    .end local v8    # "log":Ljava/io/PrintStream;
    new-instance v9, Ljava/io/FileOutputStream;

    add-int/lit8 v6, v6, 0x1

    aget-object v12, p0, v6

    const/4 v13, 0x0

    invoke-direct {v9, v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    const/4 v12, 0x1

    invoke-direct {v8, v9, v12}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    .restart local v8    # "log":Ljava/io/PrintStream;
    goto :goto_1

    .line 78
    :cond_4
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 82
    .end local v2    # "arg":Ljava/lang/String;
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 83
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v12, "Expects one or more directories as arguments."

    invoke-virtual {v9, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/drew/tools/ProcessAllImagesInFolderUtility;->printUsage()V

    .line 85
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    .line 88
    :cond_6
    if-nez v5, :cond_7

    .line 89
    new-instance v5, Lcom/drew/tools/ProcessAllImagesInFolderUtility$BasicFileHandler;

    .end local v5    # "handler":Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;
    invoke-direct {v5}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$BasicFileHandler;-><init>()V

    .line 92
    .restart local v5    # "handler":Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;
    :cond_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 94
    .local v10, "start":J
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 95
    .local v4, "directory":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v12, ""

    invoke-static {v9, v5, v12, v8}, Lcom/drew/tools/ProcessAllImagesInFolderUtility;->processDirectory(Ljava/io/File;Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;Ljava/lang/String;Ljava/io/PrintStream;)V

    goto :goto_2

    .line 98
    .end local v4    # "directory":Ljava/lang/String;
    :cond_8
    invoke-interface {v5, v8}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;->onScanCompleted(Ljava/io/PrintStream;)V

    .line 100
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "Completed in %d ms"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    sub-long v16, v16, v10

    const-wide/32 v18, 0xf4240

    div-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eq v8, v9, :cond_9

    .line 103
    invoke-virtual {v8}, Ljava/io/PrintStream;->close()V

    .line 105
    :cond_9
    return-void
.end method

.method private static printUsage()V
    .locals 2

    .prologue
    .line 109
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 111
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  java com.drew.tools.ProcessAllImagesInFolderUtility [--text|--markdown|--unknown] [--log-file <file-name>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method private static processDirectory(Ljava/io/File;Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;Ljava/lang/String;Ljava/io/PrintStream;)V
    .locals 10
    .param p0, "path"    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "handler"    # Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "relativePath"    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "log"    # Ljava/io/PrintStream;

    .prologue
    .line 116
    invoke-interface {p1, p0}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;->onStartingDirectory(Ljava/io/File;)V

    .line 118
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "pathItems":[Ljava/lang/String;
    if-nez v6, :cond_1

    .line 148
    :cond_0
    return-void

    .line 125
    :cond_1
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 127
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 128
    .local v5, "pathItem":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 131
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    .end local v5    # "pathItem":Ljava/lang/String;
    :goto_1
    invoke-static {v1, p1, v5, p3}, Lcom/drew/tools/ProcessAllImagesInFolderUtility;->processDirectory(Ljava/io/File;Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;Ljava/lang/String;Ljava/io/PrintStream;)V

    .line 127
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .restart local v5    # "pathItem":Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 132
    :cond_4
    invoke-interface {p1, v1}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;->shouldProcess(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 134
    invoke-interface {p1, v1, p3, p2}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;->onBeforeExtraction(Ljava/io/File;Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 139
    :try_start_0
    invoke-static {v1}, Lcom/drew/imaging/ImageMetadataReader;->readMetadata(Ljava/io/File;)Lcom/drew/metadata/Metadata;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 145
    .local v4, "metadata":Lcom/drew/metadata/Metadata;
    invoke-interface {p1, v1, v4, p2, p3}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;->onExtractionSuccess(Ljava/io/File;Lcom/drew/metadata/Metadata;Ljava/lang/String;Ljava/io/PrintStream;)V

    goto :goto_2

    .line 140
    .end local v4    # "metadata":Lcom/drew/metadata/Metadata;
    :catch_0
    move-exception v7

    .line 141
    .local v7, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v1, v7, p3}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;->onExtractionError(Ljava/io/File;Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    goto :goto_2
.end method

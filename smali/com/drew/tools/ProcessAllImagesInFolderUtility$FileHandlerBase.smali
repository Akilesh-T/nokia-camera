.class abstract Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;
.super Ljava/lang/Object;
.source "ProcessAllImagesInFolderUtility.java"

# interfaces
.implements Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drew/tools/ProcessAllImagesInFolderUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "FileHandlerBase"
.end annotation


# instance fields
.field private _errorCount:I

.field private _exceptionCount:I

.field private _processedByteCount:J

.field private _processedFileCount:I

.field private final _supportedExtensions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x18

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "jpg"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "jpeg"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "png"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "gif"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "bmp"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "ico"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "webp"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "pcx"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "ai"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "eps"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "nef"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "crw"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "cr2"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "orf"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "arw"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "raf"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "srw"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "x3f"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "rw2"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "rwl"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "tif"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "tiff"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "psd"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "dng"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->_supportedExtensions:Ljava/util/Set;

    .line 179
    iput v4, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->_processedFileCount:I

    .line 180
    iput v4, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->_exceptionCount:I

    .line 181
    iput v4, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->_errorCount:I

    .line 182
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->_processedByteCount:J

    return-void
.end method


# virtual methods
.method protected getExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p1, "file"    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 234
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "fileName":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 236
    .local v1, "i":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-object v2

    .line 238
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_0

    .line 240
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onBeforeExtraction(Ljava/io/File;Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 4
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
    .line 195
    iget v0, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->_processedFileCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->_processedFileCount:I

    .line 196
    iget-wide v0, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->_processedByteCount:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->_processedByteCount:J

    .line 197
    return-void
.end method

.method public onExtractionError(Ljava/io/File;Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    .locals 4
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
    .line 201
    iget v0, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->_exceptionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->_exceptionCount:I

    .line 202
    const-string v0, "\t[%s] %s\n"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p3, v0, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 203
    return-void
.end method

.method public onExtractionSuccess(Ljava/io/File;Lcom/drew/metadata/Metadata;Ljava/lang/String;Ljava/io/PrintStream;)V
    .locals 8
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
    .line 207
    invoke-virtual {p2}, Lcom/drew/metadata/Metadata;->hasErrors()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 208
    invoke-virtual {p4, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 209
    const/16 v4, 0xa

    invoke-virtual {p4, v4}, Ljava/io/PrintStream;->print(C)V

    .line 210
    invoke-virtual {p2}, Lcom/drew/metadata/Metadata;->getDirectories()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/drew/metadata/Directory;

    .line 211
    .local v0, "directory":Lcom/drew/metadata/Directory;
    invoke-virtual {v0}, Lcom/drew/metadata/Directory;->hasErrors()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/drew/metadata/Directory;->getErrors()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 214
    .local v1, "error":Ljava/lang/String;
    const-string v4, "\t[%s] %s\n"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/drew/metadata/Directory;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {p4, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 215
    iget v4, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->_errorCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->_errorCount:I

    goto :goto_0

    .line 219
    .end local v0    # "directory":Lcom/drew/metadata/Directory;
    .end local v1    # "error":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public onScanCompleted(Ljava/io/PrintStream;)V
    .locals 6
    .param p1, "log"    # Ljava/io/PrintStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 223
    iget v0, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->_processedFileCount:I

    if-lez v0, :cond_0

    .line 224
    const-string v0, "Processed %,d files (%,d bytes) with %,d exceptions and %,d file errors\n"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->_processedFileCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->_processedByteCount:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->_exceptionCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->_errorCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 229
    :cond_0
    return-void
.end method

.method public onStartingDirectory(Ljava/io/File;)V
    .locals 0
    .param p1, "directoryPath"    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 185
    return-void
.end method

.method public shouldProcess(Ljava/io/File;)Z
    .locals 3
    .param p1, "file"    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "extension":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->_supportedExtensions:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

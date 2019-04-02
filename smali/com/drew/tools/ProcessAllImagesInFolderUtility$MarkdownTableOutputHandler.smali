.class Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler;
.super Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;
.source "ProcessAllImagesInFolderUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drew/tools/ProcessAllImagesInFolderUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MarkdownTableOutputHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;
    }
.end annotation


# instance fields
.field private final _extensionEquivalence:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _rowListByExtension:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;-><init>()V

    .line 465
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler;->_extensionEquivalence:Ljava/util/Map;

    .line 466
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler;->_rowListByExtension:Ljava/util/Map;

    .line 518
    iget-object v0, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler;->_extensionEquivalence:Ljava/util/Map;

    const-string v1, "jpeg"

    const-string v2, "jpg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    return-void
.end method

.method private writeOutput(Ljava/io/PrintStream;)V
    .locals 12
    .param p1, "stream"    # Ljava/io/PrintStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xa

    .line 573
    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 574
    .local v6, "writer":Ljava/io/Writer;
    const-string v7, "# Image Database Summary\n\n"

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 576
    iget-object v7, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler;->_rowListByExtension:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 577
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 578
    .local v1, "extension":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "## "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Files\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 580
    const-string v7, "File|Manufacturer|Model|Dir Count|Exif?|Makernote|Thumbnail|All Data\n"

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 581
    const-string v7, "----|------------|-----|---------|-----|---------|---------|--------\n"

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 583
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 586
    .local v5, "rows":Ljava/util/List;, "Ljava/util/List<Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;>;"
    new-instance v7, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$1;

    invoke-direct {v7, p0}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$1;-><init>(Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler;)V

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 594
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;

    .line 595
    .local v4, "row":Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;
    const-string v8, "[%s](https://raw.githubusercontent.com/drewnoakes/metadata-extractor-images/master/%s/%s)|%s|%s|%d|%s|%s|%s|[metadata](https://raw.githubusercontent.com/drewnoakes/metadata-extractor-images/master/%s/metadata/%s.txt)\n"

    const/16 v7, 0xb

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v10, v4, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x1

    iget-object v10, v4, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->relativePath:Ljava/lang/String;

    aput-object v10, v9, v7

    const/4 v7, 0x2

    iget-object v10, v4, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/drew/lang/StringUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v10, 0x3

    invoke-static {v4}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->access$000(Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v7, ""

    :goto_2
    aput-object v7, v9, v10

    const/4 v10, 0x4

    invoke-static {v4}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->access$100(Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v7, ""

    :goto_3
    aput-object v7, v9, v10

    const/4 v7, 0x5

    iget-object v10, v4, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {v10}, Lcom/drew/metadata/Metadata;->getDirectoryCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v10, 0x6

    invoke-static {v4}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->access$200(Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v7, ""

    :goto_4
    aput-object v7, v9, v10

    const/4 v10, 0x7

    invoke-static {v4}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->access$300(Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    const-string v7, ""

    :goto_5
    aput-object v7, v9, v10

    const/16 v10, 0x8

    invoke-static {v4}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->access$400(Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v7, ""

    :goto_6
    aput-object v7, v9, v10

    const/16 v7, 0x9

    iget-object v10, v4, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->relativePath:Ljava/lang/String;

    aput-object v10, v9, v7

    iget-object v7, v4, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/drew/lang/StringUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    invoke-static {v4}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->access$000(Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_1
    invoke-static {v4}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->access$100(Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_2
    invoke-static {v4}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->access$200(Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_3
    invoke-static {v4}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->access$300(Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_4
    invoke-static {v4}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->access$400(Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 610
    .end local v4    # "row":Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;
    :cond_5
    invoke-virtual {v6, v11}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_0

    .line 612
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;>;>;"
    .end local v1    # "extension":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "rows":Ljava/util/List;, "Ljava/util/List<Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;>;"
    :cond_6
    invoke-virtual {v6}, Ljava/io/Writer;->flush()V

    .line 613
    return-void
.end method


# virtual methods
.method public onExtractionSuccess(Ljava/io/File;Lcom/drew/metadata/Metadata;Ljava/lang/String;Ljava/io/PrintStream;)V
    .locals 3
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
    .line 524
    invoke-super {p0, p1, p2, p3, p4}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->onExtractionSuccess(Ljava/io/File;Lcom/drew/metadata/Metadata;Ljava/lang/String;Ljava/io/PrintStream;)V

    .line 526
    invoke-virtual {p0, p1}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "extension":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 543
    :goto_0
    return-void

    .line 533
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 534
    iget-object v2, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler;->_extensionEquivalence:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 535
    iget-object v2, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler;->_extensionEquivalence:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "extension":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 537
    .restart local v0    # "extension":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler;->_rowListByExtension:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 538
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;>;"
    if-nez v1, :cond_2

    .line 539
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;>;"
    iget-object v2, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler;->_rowListByExtension:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    :cond_2
    new-instance v2, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;

    invoke-direct {v2, p1, p2, p3}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;-><init>(Ljava/io/File;Lcom/drew/metadata/Metadata;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onScanCompleted(Ljava/io/PrintStream;)V
    .locals 7
    .param p1, "log"    # Ljava/io/PrintStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 548
    invoke-super {p0, p1}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->onScanCompleted(Ljava/io/PrintStream;)V

    .line 550
    const/4 v1, 0x0

    .line 551
    .local v1, "outputStream":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 553
    .local v3, "stream":Ljava/io/PrintStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v5, "../wiki/ImageDatabaseSummary.md"

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .local v2, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    new-instance v4, Ljava/io/PrintStream;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 555
    .end local v3    # "stream":Ljava/io/PrintStream;
    .local v4, "stream":Ljava/io/PrintStream;
    :try_start_2
    invoke-direct {p0, v4}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler;->writeOutput(Ljava/io/PrintStream;)V

    .line 556
    invoke-virtual {v4}, Ljava/io/PrintStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 560
    if-eqz v4, :cond_0

    .line 561
    invoke-virtual {v4}, Ljava/io/PrintStream;->close()V

    .line 562
    :cond_0
    if-eqz v2, :cond_5

    .line 564
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/PrintStream;
    .restart local v3    # "stream":Ljava/io/PrintStream;
    move-object v1, v2

    .line 569
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    :goto_0
    return-void

    .line 565
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .end local v3    # "stream":Ljava/io/PrintStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "stream":Ljava/io/PrintStream;
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/PrintStream;
    .restart local v3    # "stream":Ljava/io/PrintStream;
    move-object v1, v2

    .line 567
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    goto :goto_0

    .line 557
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 558
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 560
    if-eqz v3, :cond_2

    .line 561
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    .line 562
    :cond_2
    if-eqz v1, :cond_1

    .line 564
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 565
    :catch_2
    move-exception v0

    .line 566
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 560
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_3

    .line 561
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    .line 562
    :cond_3
    if-eqz v1, :cond_4

    .line 564
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 567
    :cond_4
    :goto_3
    throw v5

    .line 565
    :catch_3
    move-exception v0

    .line 566
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 560
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2

    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .end local v3    # "stream":Ljava/io/PrintStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "stream":Ljava/io/PrintStream;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/PrintStream;
    .restart local v3    # "stream":Ljava/io/PrintStream;
    move-object v1, v2

    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2

    .line 557
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    goto :goto_1

    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .end local v3    # "stream":Ljava/io/PrintStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "stream":Ljava/io/PrintStream;
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/PrintStream;
    .restart local v3    # "stream":Ljava/io/PrintStream;
    move-object v1, v2

    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    goto :goto_1

    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .end local v3    # "stream":Ljava/io/PrintStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "stream":Ljava/io/PrintStream;
    :cond_5
    move-object v3, v4

    .end local v4    # "stream":Ljava/io/PrintStream;
    .restart local v3    # "stream":Ljava/io/PrintStream;
    move-object v1, v2

    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    goto :goto_0
.end method

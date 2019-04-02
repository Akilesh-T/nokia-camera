.class Lcom/android/camera/burst/BurstResultsSaver;
.super Ljava/lang/Object;
.source "BurstResultsSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/burst/BurstResultsSaver$SequentialTimestampGenerator;
    }
.end annotation


# static fields
.field private static final MEDIA_ITEM_FILENAME_FORMAT_STRING:Ljava/lang/String; = "Burst_%s_%d_%d_%d"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BurstResultsSaver"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/burst/BurstResultsSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/session/StackSaver;Lcom/android/camera/burst/BurstResult;Ljava/lang/String;Lcom/android/camera/burst/BurstResultsSaver$SequentialTimestampGenerator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/session/StackSaver;
    .param p1, "x1"    # Lcom/android/camera/burst/BurstResult;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/android/camera/burst/BurstResultsSaver$SequentialTimestampGenerator;

    .prologue
    .line 31
    invoke-static {p0, p1, p2, p3}, Lcom/android/camera/burst/BurstResultsSaver;->saveArtifacts(Lcom/android/camera/session/StackSaver;Lcom/android/camera/burst/BurstResult;Ljava/lang/String;Lcom/android/camera/burst/BurstResultsSaver$SequentialTimestampGenerator;)V

    return-void
.end method

.method static synthetic access$100([Ljava/lang/String;Lcom/android/camera/burst/BurstResult;)V
    .locals 0
    .param p0, "x0"    # [Ljava/lang/String;
    .param p1, "x1"    # Lcom/android/camera/burst/BurstResult;

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/android/camera/burst/BurstResultsSaver;->logProgressUpdate([Ljava/lang/String;Lcom/android/camera/burst/BurstResult;)V

    return-void
.end method

.method public static logArtifactCount(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "artifactTypeCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v3, "Finished burst. Creating "

    .line 70
    .local v3, "prefix":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "artifactDescription":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 72
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished burst. Creating "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "message":Ljava/lang/String;
    sget-object v4, Lcom/android/camera/burst/BurstResultsSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v4, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private static logProgressUpdate([Ljava/lang/String;Lcom/android/camera/burst/BurstResult;)V
    .locals 7
    .param p0, "artifactTypes"    # [Ljava/lang/String;
    .param p1, "burstResult"    # Lcom/android/camera/burst/BurstResult;

    .prologue
    .line 165
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p0, v2

    .line 167
    .local v0, "artifactType":Ljava/lang/String;
    invoke-interface {p1, v0}, Lcom/android/camera/burst/BurstResult;->getArtifactsByType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 168
    .local v1, "artifacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/burst/BurstArtifact;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 169
    sget-object v4, Lcom/android/camera/burst/BurstResultsSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "s."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 165
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "artifactType":Ljava/lang/String;
    .end local v1    # "artifacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/burst/BurstArtifact;>;"
    :cond_1
    return-void
.end method

.method private static saveArtifacts(Lcom/android/camera/session/StackSaver;Lcom/android/camera/burst/BurstResult;Ljava/lang/String;Lcom/android/camera/burst/BurstResultsSaver$SequentialTimestampGenerator;)V
    .locals 10
    .param p0, "stackSaver"    # Lcom/android/camera/session/StackSaver;
    .param p1, "burstResult"    # Lcom/android/camera/burst/BurstResult;
    .param p2, "artifactType"    # Ljava/lang/String;
    .param p3, "timestampGenerator"    # Lcom/android/camera/burst/BurstResultsSaver$SequentialTimestampGenerator;

    .prologue
    .line 131
    invoke-interface {p1, p2}, Lcom/android/camera/burst/BurstResult;->getArtifactsByType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 132
    .local v7, "artifactList":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/burst/BurstArtifact;>;"
    const/4 v6, 0x0

    .local v6, "artifactIndex":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 133
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstArtifact;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstArtifact;->getMediaItems()Ljava/util/List;

    move-result-object v9

    .line 134
    .local v9, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/burst/BurstMediaItem;>;"
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 135
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/burst/BurstMediaItem;

    add-int/lit8 v3, v6, 0x1

    add-int/lit8 v4, v8, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/burst/BurstResultsSaver;->saveBurstMediaItem(Lcom/android/camera/session/StackSaver;Lcom/android/camera/burst/BurstMediaItem;Ljava/lang/String;IILcom/android/camera/burst/BurstResultsSaver$SequentialTimestampGenerator;)V

    .line 134
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 132
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 139
    .end local v8    # "index":I
    .end local v9    # "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/burst/BurstMediaItem;>;"
    :cond_1
    return-void
.end method

.method private static saveBurstMediaItem(Lcom/android/camera/session/StackSaver;Lcom/android/camera/burst/BurstMediaItem;Ljava/lang/String;IILcom/android/camera/burst/BurstResultsSaver$SequentialTimestampGenerator;)V
    .locals 9
    .param p0, "stackSaver"    # Lcom/android/camera/session/StackSaver;
    .param p1, "mediaItem"    # Lcom/android/camera/burst/BurstMediaItem;
    .param p2, "artifactType"    # Ljava/lang/String;
    .param p3, "artifactIndex"    # I
    .param p4, "index"    # I
    .param p5, "timestampGenerator"    # Lcom/android/camera/burst/BurstResultsSaver$SequentialTimestampGenerator;

    .prologue
    .line 150
    invoke-virtual {p5}, Lcom/android/camera/burst/BurstResultsSaver$SequentialTimestampGenerator;->getNextTimestampMillis()J

    move-result-wide v6

    .line 151
    .local v6, "timestamp":J
    const-string v0, "Burst_%s_%d_%d_%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    const/4 v3, 0x1

    .line 152
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x3

    invoke-interface {p1}, Lcom/android/camera/burst/BurstMediaItem;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    .line 151
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "title":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/camera/burst/BurstMediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v8

    .line 155
    .local v8, "mimeType":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/camera/burst/BurstMediaItem;->getFilePath()Ljava/io/File;

    move-result-object v1

    .line 157
    invoke-interface {p1}, Lcom/android/camera/burst/BurstMediaItem;->getWidth()I

    move-result v3

    .line 158
    invoke-interface {p1}, Lcom/android/camera/burst/BurstMediaItem;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    .line 155
    invoke-interface/range {v0 .. v8}, Lcom/android/camera/session/StackSaver;->saveStackedImage(Ljava/io/File;Ljava/lang/String;IIIJLjava/lang/String;)Landroid/net/Uri;

    .line 162
    return-void
.end method

.method public static saveBurstResultsInBackground(Lcom/android/camera/burst/BurstResult;Lcom/android/camera/session/StackSaver;Ljava/lang/Runnable;)V
    .locals 4
    .param p0, "burstResult"    # Lcom/android/camera/burst/BurstResult;
    .param p1, "stackSaver"    # Lcom/android/camera/session/StackSaver;
    .param p2, "onCompletetionCallback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x0

    .line 86
    sget-object v1, Lcom/android/camera/burst/BurstResultsSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Saving results of of the burst."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/android/camera/burst/BurstResultsSaver$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/burst/BurstResultsSaver$1;-><init>(Lcom/android/camera/burst/BurstResult;Lcom/android/camera/session/StackSaver;Ljava/lang/Runnable;)V

    .line 123
    .local v0, "saveTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/String;Ljava/lang/Void;>;"
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 124
    return-void
.end method

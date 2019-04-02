.class final Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;
.super Ljava/lang/Object;
.source "ProcessingMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;,
        Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;
    }
.end annotation


# static fields
.field private static final SAVE_DELAY_MILLIS:J

.field private static final TAG:Ljava/lang/String; = "ProcessingManager"

.field private static volatile instance:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;


# instance fields
.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final handler:Landroid/os/Handler;

.field private isNextDeterminate:Z

.field private final processingMedia:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->SAVE_DELAY_MILLIS:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 44
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->processingMedia:Ljava/util/Map;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->context:Landroid/content/Context;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->handler:Landroid/os/Handler;

    .line 64
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$1;

    invoke-direct {v8, p0}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$1;-><init>(Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;)V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;
    .param p1, "x1"    # Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->save(Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;)V

    return-void
.end method

.method static synthetic access$100()J
    .locals 2

    .prologue
    .line 38
    sget-wide v0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->SAVE_DELAY_MILLIS:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget-object v0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->instance:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;

    if-nez v0, :cond_1

    .line 52
    const-class v1, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->instance:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->instance:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    sget-object v0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->instance:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private notifyProcessingUri(J)V
    .locals 5
    .param p1, "mediaStoreId"    # J

    .prologue
    .line 153
    const-string v1, "ProcessingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyProcessingUri : mediaStoreUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    iget-object v1, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->context:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/camera/SpeicalTypeProviders/PhotosOemApi;->getQueryProcessingUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    .line 155
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 156
    return-void
.end method

.method private save(Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;)V
    .locals 6
    .param p1, "media"    # Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;

    .prologue
    .line 138
    const-string v1, "ProcessingManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const-string v1, "ProcessingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->getMediaStoreId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    new-instance v0, Lcom/android/camera/SpeicalTypeProviders/MediaStoreProcessingSaver;

    iget-object v1, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/SpeicalTypeProviders/MediaStoreProcessingSaver;-><init>(Landroid/content/Context;)V

    .line 144
    .local v0, "saver":Lcom/android/camera/SpeicalTypeProviders/MediaStoreProcessingSaver;
    invoke-virtual {p1}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->getMediaStoreId()J

    move-result-wide v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processed_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->getMediaStoreId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->context:Landroid/content/Context;

    .line 145
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->getBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 144
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/camera/SpeicalTypeProviders/MediaStoreProcessingSaver;->updateToVisible(JLjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 147
    iget-object v1, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->processingMedia:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->getMediaStoreId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void
.end method


# virtual methods
.method add()V
    .locals 12

    .prologue
    .line 96
    new-instance v6, Lcom/android/camera/SpeicalTypeProviders/MediaStoreProcessingSaver;

    iget-object v7, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/camera/SpeicalTypeProviders/MediaStoreProcessingSaver;-><init>(Landroid/content/Context;)V

    .line 97
    .local v6, "saver":Lcom/android/camera/SpeicalTypeProviders/MediaStoreProcessingSaver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 98
    .local v0, "dateTaken":J
    invoke-virtual {v6, v0, v1}, Lcom/android/camera/SpeicalTypeProviders/MediaStoreProcessingSaver;->saveAsHidden(J)Landroid/net/Uri;

    move-result-object v3

    .line 99
    .local v3, "mediaStoreUri":Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 100
    const-string v7, "ProcessingManager"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 101
    const-string v7, "ProcessingManager"

    const-string v8, "Failed to save hidden media store row"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 107
    .local v4, "mediaStoreId":J
    new-instance v2, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;

    iget-boolean v7, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->isNextDeterminate:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;->DETERMINATE:Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;

    :goto_1
    invoke-direct {v2, v4, v5, v7}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;-><init>(JLcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;)V

    .line 109
    .local v2, "media":Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;
    iget-object v7, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->processingMedia:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-virtual {v2}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->getMediaStoreId()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->notifyProcessingUri(J)V

    .line 113
    iget-boolean v7, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->isNextDeterminate:Z

    if-eqz v7, :cond_3

    .line 114
    iget-object v7, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->handler:Landroid/os/Handler;

    new-instance v8, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;

    invoke-direct {v8, p0, v2}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;-><init>(Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    :goto_2
    iget-boolean v7, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->isNextDeterminate:Z

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->isNextDeterminate:Z

    goto :goto_0

    .line 107
    .end local v2    # "media":Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;
    :cond_2
    sget-object v7, Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;->INDETERMINATE:Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;

    goto :goto_1

    .line 116
    .restart local v2    # "media":Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;
    :cond_3
    iget-object v7, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->handler:Landroid/os/Handler;

    new-instance v8, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$2;

    invoke-direct {v8, p0, v2}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$2;-><init>(Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;)V

    sget-wide v10, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->SAVE_DELAY_MILLIS:J

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 123
    :cond_4
    const/4 v7, 0x0

    goto :goto_3
.end method

.method get(J)Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;
    .locals 3
    .param p1, "mediaStoreId"    # J
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->processingMedia:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;

    return-object v0
.end method

.method getProcessingMedia()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->processingMedia:Ljava/util/Map;

    monitor-enter v1

    .line 84
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->processingMedia:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

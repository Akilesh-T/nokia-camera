.class public final Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;
.super Ljava/lang/Object;
.source "PostProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;
    }
.end annotation


# static fields
.field private static final SAVE_DELAY_MILLIS:J

.field private static final TAG:Ljava/lang/String; = "PostProcessManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final mHandler:Landroid/os/Handler;

.field private final mMediaStoreProcessingSaver:Lcom/google/android/apps/photos/api/PhotoOemProvider/MediaStoreProcessingSaver;

.field private final mProcessingMedias:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 44
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->SAVE_DELAY_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->mProcessingMedias:Ljava/util/Map;

    .line 53
    new-instance v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/MediaStoreProcessingSaver;

    invoke-direct {v0, p1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/MediaStoreProcessingSaver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->mMediaStoreProcessingSaver:Lcom/google/android/apps/photos/api/PhotoOemProvider/MediaStoreProcessingSaver;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->mHandler:Landroid/os/Handler;

    .line 56
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$1;

    invoke-direct {v8, p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$1;-><init>(Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;)V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 73
    return-void
.end method

.method private printProcessingMedia()V
    .locals 6

    .prologue
    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    const-string v2, "PostProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProcessingMedia size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->mProcessingMedias:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v2, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->mProcessingMedias:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 88
    .local v0, "key":J
    const-string v2, "PostProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ProcessingMedia : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    .end local v0    # "key":J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    return-void
.end method


# virtual methods
.method get(J)Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;
    .locals 3
    .param p1, "mediaStoreId"    # J
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->mProcessingMedias:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;

    monitor-exit p0

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getmProcessingMedias()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->mProcessingMedias:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyMediaInPostProcessing(Landroid/net/Uri;IZLandroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "mediaStoreUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "progress"    # I
    .param p3, "isDeterminate"    # Z
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 109
    .local v2, "mediaStoreId":J
    const-string v0, "PostProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyMediaInPostProcessing : mediaStoreUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v1, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;

    if-eqz p3, :cond_0

    sget-object v5, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;->DETERMINATE:Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;

    :goto_0
    move v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;-><init>(JILcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;Landroid/graphics/Bitmap;)V

    .line 111
    .local v1, "media":Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->mProcessingMedias:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {v1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->getMediaStoreId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->notifyProcessingUri(J)V

    .line 113
    invoke-direct {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->printProcessingMedia()V

    .line 114
    monitor-exit p0

    .line 115
    return-void

    .line 110
    .end local v1    # "media":Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;
    :cond_0
    sget-object v5, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;->INDETERMINATE:Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;

    goto :goto_0

    .line 114
    .end local v2    # "mediaStoreId":J
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyMediaPostProcessDone(Landroid/net/Uri;)V
    .locals 6
    .param p1, "mediaStoreUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    const-string v1, "PostProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMediaInPostProcessDone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->get(J)Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;

    move-result-object v0

    .line 124
    .local v0, "media":Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->recycle()V

    .line 126
    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->mProcessingMedias:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->getMediaStoreId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {v0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->getMediaStoreId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->notifyProcessingUri(J)V

    .line 128
    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->mMediaStoreProcessingSaver:Lcom/google/android/apps/photos/api/PhotoOemProvider/MediaStoreProcessingSaver;

    invoke-virtual {v0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->getMediaStoreId()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/apps/photos/api/PhotoOemProvider/MediaStoreProcessingSaver;->updateToVisible(JLjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 130
    const-string v1, "PostProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save and remove form ProcessingMedia : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->getMediaStoreId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->printProcessingMedia()V

    .line 135
    :goto_0
    monitor-exit p0

    .line 136
    return-void

    .line 133
    :cond_0
    const-string v1, "PostProcessManager"

    const-string v2, "notifyMediaInPostProcessDone: media is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    .end local v0    # "media":Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyMediaPostProcessFail(Landroid/net/Uri;)V
    .locals 6
    .param p1, "mediaStoreUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    const-string v1, "PostProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMediaPostProcessFail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->get(J)Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;

    move-result-object v0

    .line 142
    .local v0, "media":Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->recycle()V

    .line 144
    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->mProcessingMedias:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->getMediaStoreId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v1, "PostProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove fail item form ProcessingMedia : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->getMediaStoreId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->printProcessingMedia()V

    .line 152
    :goto_0
    monitor-exit p0

    .line 153
    return-void

    .line 150
    :cond_0
    const-string v1, "PostProcessManager"

    const-string v2, "notifyMediaPostProcessFail: media is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    .end local v0    # "media":Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyMediaPostProcessProgress(Landroid/net/Uri;I)V
    .locals 4
    .param p1, "mediaStoreUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "progressPercentage"    # I

    .prologue
    .line 156
    const-string v1, "PostProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMediaPostProcessProgress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", progressPercentage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->get(J)Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;

    move-result-object v0

    .line 158
    .local v0, "media":Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->getProgressStatus()I

    move-result v1

    sget-object v2, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;->DETERMINATE:Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;

    invoke-virtual {v2}, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;->getIdentifier()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 159
    invoke-virtual {v0, p2}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->updateProgressPercentage(I)V

    .line 161
    :cond_0
    return-void
.end method

.method public notifyProcessingUri(J)V
    .locals 5
    .param p1, "mediaStoreId"    # J

    .prologue
    .line 164
    const-string v1, "PostProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Photos] notifyProcessingUri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getQueryProcessingUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    .line 166
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 167
    const-string v1, "PostProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyProcessingUri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

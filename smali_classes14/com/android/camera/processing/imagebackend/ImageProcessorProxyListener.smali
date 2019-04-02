.class public Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;
.super Ljava/lang/Object;
.source "ImageProcessorProxyListener.java"

# interfaces
.implements Lcom/android/camera/processing/imagebackend/ImageProcessorListener;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mImageFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageProcessorListener;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegisteredListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageProcessorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "IProxyListener"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mRegisteredListeners:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mImageFilter:Ljava/util/HashMap;

    .line 64
    return-void
.end method

.method private filteredListeners(J)Ljava/util/List;
    .locals 7
    .param p1, "imageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageProcessorListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v0, "filteredList":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 129
    .local v1, "l":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mImageFilter:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mImageFilter:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, p1

    if-nez v2, :cond_0

    .line 130
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    .end local v1    # "l":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    :cond_2
    return-object v0
.end method


# virtual methods
.method public getMapSize()I
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 75
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mRegisteredListeners:Ljava/util/List;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mImageFilter:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNumRegisteredListeners()I
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mRegisteredListeners:Ljava/util/List;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected logWrapper(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 58
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v0, p1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public onPostProcessImageCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V
    .locals 6
    .param p1, "job"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;

    .prologue
    .line 177
    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mRegisteredListeners:Ljava/util/List;

    monitor-enter v3

    .line 178
    :try_start_0
    iget-wide v4, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->contentId:J

    invoke-direct {p0, v4, v5}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->filteredListeners(J)Ljava/util/List;

    move-result-object v1

    .line 179
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 182
    .local v0, "l":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    invoke-interface {v0, p1}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onPostProcessImageCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V

    goto :goto_0

    .line 179
    .end local v0    # "l":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    .end local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 184
    .restart local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    :cond_0
    return-void
.end method

.method public onPostProcessUriResolved(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V
    .locals 6
    .param p1, "job"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 236
    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mRegisteredListeners:Ljava/util/List;

    monitor-enter v3

    .line 237
    :try_start_0
    iget-wide v4, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->contentId:J

    invoke-direct {p0, v4, v5}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->filteredListeners(J)Ljava/util/List;

    move-result-object v1

    .line 238
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 241
    .local v0, "l":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    invoke-interface {v0, p1, p2}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onPostProcessUriResolved(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V

    goto :goto_0

    .line 238
    .end local v0    # "l":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    .end local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 243
    .restart local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    :cond_0
    return-void
.end method

.method public onRawDataReady(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V
    .locals 6
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "payload"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;

    .prologue
    .line 189
    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mRegisteredListeners:Ljava/util/List;

    monitor-enter v3

    .line 190
    :try_start_0
    iget-wide v4, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->contentId:J

    invoke-direct {p0, v4, v5}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->filteredListeners(J)Ljava/util/List;

    move-result-object v1

    .line 191
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 194
    .local v0, "l":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    invoke-interface {v0, p1, p2}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onRawDataReady(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V

    goto :goto_0

    .line 191
    .end local v0    # "l":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    .end local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 196
    .restart local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    :cond_0
    return-void
.end method

.method public onResultCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V
    .locals 6
    .param p1, "job"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "payload"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;

    .prologue
    .line 165
    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mRegisteredListeners:Ljava/util/List;

    monitor-enter v3

    .line 166
    :try_start_0
    iget-wide v4, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->contentId:J

    invoke-direct {p0, v4, v5}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->filteredListeners(J)Ljava/util/List;

    move-result-object v1

    .line 167
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 170
    .local v0, "l":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    invoke-interface {v0, p1, p2}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onResultCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V

    goto :goto_0

    .line 167
    .end local v0    # "l":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    .end local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 172
    .restart local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    :cond_0
    return-void
.end method

.method public onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "job"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 213
    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mRegisteredListeners:Ljava/util/List;

    monitor-enter v3

    .line 214
    :try_start_0
    iget-wide v4, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->contentId:J

    invoke-direct {p0, v4, v5}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->filteredListeners(J)Ljava/util/List;

    move-result-object v1

    .line 215
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 218
    .local v0, "l":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    invoke-interface {v0, p1, p2}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 215
    .end local v0    # "l":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    .end local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 220
    .restart local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    :cond_0
    return-void
.end method

.method public onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;)V
    .locals 6
    .param p1, "job"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "payload"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;

    .prologue
    .line 201
    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mRegisteredListeners:Ljava/util/List;

    monitor-enter v3

    .line 202
    :try_start_0
    iget-wide v4, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->contentId:J

    invoke-direct {p0, v4, v5}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->filteredListeners(J)Ljava/util/List;

    move-result-object v1

    .line 203
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 206
    .local v0, "l":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    invoke-interface {v0, p1, p2}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;)V

    goto :goto_0

    .line 203
    .end local v0    # "l":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    .end local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 208
    .restart local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    :cond_0
    return-void
.end method

.method public onResultUri(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V
    .locals 6
    .param p1, "job"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 224
    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mRegisteredListeners:Ljava/util/List;

    monitor-enter v3

    .line 225
    :try_start_0
    iget-wide v4, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->contentId:J

    invoke-direct {p0, v4, v5}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->filteredListeners(J)Ljava/util/List;

    move-result-object v1

    .line 226
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 229
    .local v0, "l":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    invoke-interface {v0, p1, p2}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onResultUri(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V

    goto :goto_0

    .line 226
    .end local v0    # "l":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    .end local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 231
    .restart local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    :cond_0
    return-void
.end method

.method public onStart(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V
    .locals 6
    .param p1, "job"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;

    .prologue
    .line 153
    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mRegisteredListeners:Ljava/util/List;

    monitor-enter v3

    .line 154
    :try_start_0
    iget-wide v4, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->contentId:J

    invoke-direct {p0, v4, v5}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->filteredListeners(J)Ljava/util/List;

    move-result-object v1

    .line 155
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 158
    .local v0, "l":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    invoke-interface {v0, p1}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onStart(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V

    goto :goto_0

    .line 155
    .end local v0    # "l":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    .end local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 160
    .restart local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    :cond_0
    return-void
.end method

.method public registerListener(Lcom/android/camera/processing/imagebackend/ImageProcessorListener;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    .param p2, "image"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mRegisteredListeners:Ljava/util/List;

    monitor-enter v1

    .line 106
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There are "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " listeners before addition"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->logWrapper(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v0, "Listener will be overwritten."

    invoke-virtual {p0, v0}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->logWrapper(Ljava/lang/String;)V

    .line 113
    :cond_0
    if-nez p2, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mImageFilter:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There are "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " listeners after addition"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->logWrapper(Ljava/lang/String;)V

    .line 120
    monitor-exit v1

    .line 122
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mImageFilter:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterListener(Lcom/android/camera/processing/imagebackend/ImageProcessorListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mRegisteredListeners:Ljava/util/List;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mImageFilter:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There are "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " listeners after removal"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->logWrapper(Ljava/lang/String;)V

    .line 148
    :goto_0
    monitor-exit v1

    .line 149
    return-void

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find listener.  There are "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " listeners after removal"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->logWrapper(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

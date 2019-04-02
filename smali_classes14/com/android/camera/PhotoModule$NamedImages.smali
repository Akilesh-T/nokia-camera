.class public Lcom/android/camera/PhotoModule$NamedImages;
.super Ljava/lang/Object;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamedImages"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    }
.end annotation


# instance fields
.field private final mQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2266
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/Vector;

    .line 2267
    return-void
.end method


# virtual methods
.method public getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .locals 3

    .prologue
    .line 2284
    iget-object v1, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/Vector;

    monitor-enter v1

    .line 2285
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2286
    iget-object v0, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    monitor-exit v1

    .line 2289
    :goto_0
    return-object v0

    .line 2288
    :cond_0
    monitor-exit v1

    .line 2289
    const/4 v0, 0x0

    goto :goto_0

    .line 2288
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public nameNewBurstImage(J)V
    .locals 3
    .param p1, "date"    # J

    .prologue
    .line 2277
    new-instance v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    invoke-direct {v0}, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;-><init>()V

    .line 2278
    .local v0, "r":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/util/CameraUtil;->createBurstJpegName(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    .line 2279
    iput-wide p1, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    .line 2280
    iget-object v1, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2281
    return-void
.end method

.method public nameNewImage(J)V
    .locals 3
    .param p1, "date"    # J

    .prologue
    .line 2270
    new-instance v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    invoke-direct {v0}, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;-><init>()V

    .line 2271
    .local v0, "r":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    .line 2272
    iput-wide p1, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    .line 2273
    iget-object v1, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2274
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 2293
    iget-object v1, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/Vector;

    monitor-enter v1

    .line 2294
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 2295
    monitor-exit v1

    .line 2296
    return-void

    .line 2295
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

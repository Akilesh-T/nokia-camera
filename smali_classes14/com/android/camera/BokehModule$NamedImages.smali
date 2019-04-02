.class public Lcom/android/camera/BokehModule$NamedImages;
.super Ljava/lang/Object;
.source "BokehModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BokehModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamedImages"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/BokehModule$NamedImages$NamedEntity;
    }
.end annotation


# instance fields
.field private final mQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/camera/BokehModule$NamedImages$NamedEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1424
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/camera/BokehModule$NamedImages;->mQueue:Ljava/util/Vector;

    .line 1425
    return-void
.end method


# virtual methods
.method public getNextNameEntity()Lcom/android/camera/BokehModule$NamedImages$NamedEntity;
    .locals 3

    .prologue
    .line 1435
    iget-object v1, p0, Lcom/android/camera/BokehModule$NamedImages;->mQueue:Ljava/util/Vector;

    monitor-enter v1

    .line 1436
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/BokehModule$NamedImages;->mQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1437
    iget-object v0, p0, Lcom/android/camera/BokehModule$NamedImages;->mQueue:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/BokehModule$NamedImages$NamedEntity;

    monitor-exit v1

    .line 1440
    :goto_0
    return-object v0

    .line 1439
    :cond_0
    monitor-exit v1

    .line 1440
    const/4 v0, 0x0

    goto :goto_0

    .line 1439
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public nameNewImage(J)V
    .locals 3
    .param p1, "date"    # J

    .prologue
    .line 1428
    new-instance v0, Lcom/android/camera/BokehModule$NamedImages$NamedEntity;

    invoke-direct {v0}, Lcom/android/camera/BokehModule$NamedImages$NamedEntity;-><init>()V

    .line 1429
    .local v0, "r":Lcom/android/camera/BokehModule$NamedImages$NamedEntity;
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/BokehModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    .line 1430
    iput-wide p1, v0, Lcom/android/camera/BokehModule$NamedImages$NamedEntity;->date:J

    .line 1431
    iget-object v1, p0, Lcom/android/camera/BokehModule$NamedImages;->mQueue:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1432
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 1444
    iget-object v1, p0, Lcom/android/camera/BokehModule$NamedImages;->mQueue:Ljava/util/Vector;

    monitor-enter v1

    .line 1445
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/BokehModule$NamedImages;->mQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1446
    monitor-exit v1

    .line 1447
    return-void

    .line 1446
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

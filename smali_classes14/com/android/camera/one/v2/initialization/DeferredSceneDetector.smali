.class Lcom/android/camera/one/v2/initialization/DeferredSceneDetector;
.super Ljava/lang/Object;
.source "DeferredSceneDetector.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/SceneDetector;


# instance fields
.field private final mSceneDetectorFuture:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/photo/SceneDetector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/async/ConcurrentState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/photo/SceneDetector;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "sceneDetectorFuture":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/v2/photo/SceneDetector;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/DeferredSceneDetector;->mSceneDetectorFuture:Lcom/android/camera/async/ConcurrentState;

    .line 38
    return-void
.end method


# virtual methods
.method public get()Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    .locals 3

    .prologue
    .line 42
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/DeferredSceneDetector;->mSceneDetectorFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v2}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/DeferredSceneDetector;->mSceneDetectorFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v2}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/photo/SceneDetector;

    .line 45
    .local v1, "sceneDetector":Lcom/android/camera/one/v2/photo/SceneDetector;
    invoke-interface {v1}, Lcom/android/camera/one/v2/photo/SceneDetector;->get()Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 50
    .end local v1    # "sceneDetector":Lcom/android/camera/one/v2/photo/SceneDetector;
    :goto_0
    return-object v2

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    sget-object v2, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    goto :goto_0

    .line 50
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :cond_0
    sget-object v2, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    goto :goto_0
.end method

.method public getCurrentIsoValue()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 75
    iget-object v3, p0, Lcom/android/camera/one/v2/initialization/DeferredSceneDetector;->mSceneDetectorFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v3}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 77
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/one/v2/initialization/DeferredSceneDetector;->mSceneDetectorFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v3}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/photo/SceneDetector;

    .line 78
    .local v1, "sceneDetector":Lcom/android/camera/one/v2/photo/SceneDetector;
    invoke-interface {v1}, Lcom/android/camera/one/v2/photo/SceneDetector;->getCurrentIsoValue()I
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 83
    .end local v1    # "sceneDetector":Lcom/android/camera/one/v2/photo/SceneDetector;
    :cond_0
    :goto_0
    return v2

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    goto :goto_0
.end method

.method public getCurrentSensorExposureTime()J
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    .line 88
    iget-object v4, p0, Lcom/android/camera/one/v2/initialization/DeferredSceneDetector;->mSceneDetectorFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v4}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 90
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/one/v2/initialization/DeferredSceneDetector;->mSceneDetectorFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v4}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/photo/SceneDetector;

    .line 91
    .local v1, "sceneDetector":Lcom/android/camera/one/v2/photo/SceneDetector;
    invoke-interface {v1}, Lcom/android/camera/one/v2/photo/SceneDetector;->getCurrentSensorExposureTime()J
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 96
    .end local v1    # "sceneDetector":Lcom/android/camera/one/v2/photo/SceneDetector;
    :cond_0
    :goto_0
    return-wide v2

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    goto :goto_0
.end method

.method public getMetaData()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 107
    iget-object v3, p0, Lcom/android/camera/one/v2/initialization/DeferredSceneDetector;->mSceneDetectorFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v3}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 109
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/one/v2/initialization/DeferredSceneDetector;->mSceneDetectorFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v3}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/photo/SceneDetector;

    .line 110
    .local v1, "sceneDetector":Lcom/android/camera/one/v2/photo/SceneDetector;
    invoke-interface {v1}, Lcom/android/camera/one/v2/photo/SceneDetector;->getMetaData()Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 115
    .end local v1    # "sceneDetector":Lcom/android/camera/one/v2/photo/SceneDetector;
    :cond_0
    :goto_0
    return-object v2

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    goto :goto_0
.end method

.method public onHDRModeChange(Lcom/android/camera/one/v2/photo/SceneDetector$HDR;)V
    .locals 0
    .param p1, "hdrMode"    # Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    .prologue
    .line 66
    return-void
.end method

.method public onSRModeChange(Lcom/android/camera/one/v2/photo/SceneDetector$SR;)V
    .locals 0
    .param p1, "srMode"    # Lcom/android/camera/one/v2/photo/SceneDetector$SR;

    .prologue
    .line 71
    return-void
.end method

.method public setSceneModeChangeListener(Lcom/android/camera/one/OneCamera$SceneModeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/one/OneCamera$SceneModeChangeListener;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/DeferredSceneDetector;->mSceneDetectorFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/DeferredSceneDetector;->mSceneDetectorFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/photo/SceneDetector;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/photo/SceneDetector;->setSceneModeChangeListener(Lcom/android/camera/one/OneCamera$SceneModeChangeListener;)V

    .line 104
    :cond_0
    return-void
.end method

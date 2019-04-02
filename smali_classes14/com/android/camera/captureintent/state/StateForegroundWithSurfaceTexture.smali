.class public final Lcom/android/camera/captureintent/state/StateForegroundWithSurfaceTexture;
.super Lcom/android/camera/captureintent/stateful/StateImpl;
.source "StateForegroundWithSurfaceTexture.java"


# instance fields
.field private final mResourceConstructed:Lcom/android/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;"
        }
    .end annotation
.end field

.field private final mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;)V
    .locals 1
    .param p1, "previousState"    # Lcom/android/camera/captureintent/stateful/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/stateful/State;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    .local p3, "resourceSurfaceTexture":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;>;"
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/stateful/StateImpl;-><init>(Lcom/android/camera/captureintent/stateful/State;)V

    .line 54
    iput-object p2, p0, Lcom/android/camera/captureintent/state/StateForegroundWithSurfaceTexture;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    .line 55
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateForegroundWithSurfaceTexture;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->addRef()V

    .line 56
    iput-object p3, p0, Lcom/android/camera/captureintent/state/StateForegroundWithSurfaceTexture;->mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;

    .line 57
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateForegroundWithSurfaceTexture;->mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->addRef()V

    .line 58
    return-void
.end method

.method public static from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateForegroundWithSurfaceTexture;
    .locals 1
    .param p0, "previousState"    # Lcom/android/camera/captureintent/stateful/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/stateful/State;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;",
            ">;)",
            "Lcom/android/camera/captureintent/state/StateForegroundWithSurfaceTexture;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    .local p2, "resourceSurfaceTexture":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;>;"
    new-instance v0, Lcom/android/camera/captureintent/state/StateForegroundWithSurfaceTexture;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/captureintent/state/StateForegroundWithSurfaceTexture;-><init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;)V

    return-object v0
.end method


# virtual methods
.method public getResourceSurfaceTexture()Lcom/android/camera/async/RefCountBase;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateForegroundWithSurfaceTexture;->mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;

    return-object v0
.end method

.method public onEnter()Lcom/google/common/base/Optional;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateForegroundWithSurfaceTexture;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    .line 65
    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getCameraFacingSetting()Lcom/android/camera/settings/CameraFacingSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/settings/CameraFacingSetting;->getCameraFacing()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    .line 67
    .local v3, "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateForegroundWithSurfaceTexture;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v0

    .line 68
    invoke-interface {v0, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v4

    .line 70
    .local v4, "key":Lcom/android/camera/device/CameraId;
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateForegroundWithSurfaceTexture;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    .line 71
    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v5

    .line 73
    .local v5, "characteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateForegroundWithSurfaceTexture;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateForegroundWithSurfaceTexture;->mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/captureintent/state/StateOpeningCamera;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 76
    .end local v3    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    .end local v4    # "key":Lcom/android/camera/device/CameraId;
    .end local v5    # "characteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v6

    .line 76
    .local v6, "ex":Lcom/android/camera/one/OneCameraAccessException;
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateForegroundWithSurfaceTexture;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-static {p0, v0}, Lcom/android/camera/captureintent/state/StateFatal;->from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateFatal;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0
.end method

.method public onLeave()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateForegroundWithSurfaceTexture;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 83
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateForegroundWithSurfaceTexture;->mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 84
    return-void
.end method

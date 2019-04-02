.class Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;
.super Ljava/lang/Object;
.source "ManualAutoFocusImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mAFHoldSeconds:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAFScanRunnable:Ljava/lang/Runnable;

.field private final mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field private final mMeteringParameters:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final mResettingDelayedExecutor:Lcom/android/camera/async/ResettingDelayedExecutor;

.field private final mSettings3A:Lcom/android/camera/one/Settings3A;

.field private final mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mSlaveMeteringParameters:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final mTouchExposre:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "MAFocusImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Ljava/lang/Runnable;Lcom/android/camera/async/ResettingDelayedExecutor;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/Settings3A;Lcom/android/camera/one/OneCameraCaptureSetting;)V
    .locals 0
    .param p3, "afScanRunnable"    # Ljava/lang/Runnable;
    .param p4, "afHoldDelayedExecutor"    # Lcom/android/camera/async/ResettingDelayedExecutor;
    .param p7, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p8, "slaveCameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p9, "settings3A"    # Lcom/android/camera/one/Settings3A;
    .param p10, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;",
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;",
            "Ljava/lang/Runnable;",
            "Lcom/android/camera/async/ResettingDelayedExecutor;",
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/Settings3A;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "meteringParameters":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/v2/autofocus/MeteringParameters;>;"
    .local p2, "slaveMeteringParameters":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/v2/autofocus/MeteringParameters;>;"
    .local p5, "afHoldSeconds":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Integer;>;"
    .local p6, "touchExposre":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mMeteringParameters:Lcom/android/camera/async/ConcurrentState;

    .line 59
    iput-object p2, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mSlaveMeteringParameters:Lcom/android/camera/async/ConcurrentState;

    .line 60
    iput-object p3, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mAFScanRunnable:Ljava/lang/Runnable;

    .line 61
    iput-object p4, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mResettingDelayedExecutor:Lcom/android/camera/async/ResettingDelayedExecutor;

    .line 62
    iput-object p5, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mAFHoldSeconds:Lcom/android/camera/async/ConcurrentState;

    .line 63
    iput-object p6, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mTouchExposre:Lcom/android/camera/async/ConcurrentState;

    .line 64
    iput-object p7, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 65
    iput-object p8, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 66
    iput-object p9, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mSettings3A:Lcom/android/camera/one/Settings3A;

    .line 67
    iput-object p10, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    .line 68
    return-void
.end method


# virtual methods
.method public getFocusAreaPoint()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mMeteringParameters:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/autofocus/MeteringParameters;

    invoke-interface {v0}, Lcom/android/camera/one/v2/autofocus/MeteringParameters;->getAFPoint()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public onShutter()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mResettingDelayedExecutor:Lcom/android/camera/async/ResettingDelayedExecutor;

    invoke-virtual {v0}, Lcom/android/camera/async/ResettingDelayedExecutor;->reset()Z

    move-result v0

    return v0
.end method

.method public onTouchExposureChange(F)V
    .locals 4
    .param p1, "offsetRatio"    # F

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isControlByCameraIdRequired(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCurrentCameraId()Lcom/android/camera/async/Observable;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 119
    .local v0, "currentCameraId":I
    sget-object v1, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchExposureChange currentCameraId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mTouchExposre:Lcom/android/camera/async/ConcurrentState;

    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->getMaxExposureCompensation()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 131
    .end local v0    # "currentCameraId":I
    :goto_0
    return-void

    .line 122
    .restart local v0    # "currentCameraId":I
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mTouchExposre:Lcom/android/camera/async/ConcurrentState;

    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->getMaxExposureCompensation()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    :cond_1
    sget-object v1, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "run onTouchExposureChange fail : no match condition."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    .end local v0    # "currentCameraId":I
    :cond_2
    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mTouchExposre:Lcom/android/camera/async/ConcurrentState;

    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->getMaxExposureCompensation()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onTouchExposureEnd()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mAFHoldSeconds:Lcom/android/camera/async/ConcurrentState;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public onTouchExposureStart()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mAFHoldSeconds:Lcom/android/camera/async/ConcurrentState;

    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public resetFocusAndMeterArea()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mTouchExposre:Lcom/android/camera/async/ConcurrentState;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;Z)V

    .line 102
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mMeteringParameters:Lcom/android/camera/async/ConcurrentState;

    invoke-static {}, Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;->create()Lcom/android/camera/one/v2/autofocus/MeteringParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public triggerFocusAndMeterAtPoint(FF)V
    .locals 5
    .param p1, "nx"    # F
    .param p2, "ny"    # F

    .prologue
    const/4 v4, 0x0

    .line 72
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mTouchExposre:Lcom/android/camera/async/ConcurrentState;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;Z)V

    .line 73
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 74
    .local v1, "point":Landroid/graphics/PointF;
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-virtual {v2}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isControlByCameraIdRequired(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-virtual {v2}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCurrentCameraId()Lcom/android/camera/async/Observable;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 76
    .local v0, "currentCameraId":I
    sget-object v2, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "triggerFocusAndMeterAtPoint currentCameraId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mMeteringParameters:Lcom/android/camera/async/ConcurrentState;

    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 79
    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mSettings3A:Lcom/android/camera/one/Settings3A;

    .line 78
    invoke-static {v1, v1, v3, v4}, Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;->createForNormalizedCoordinates(Landroid/graphics/PointF;Landroid/graphics/PointF;ILcom/android/camera/one/Settings3A;)Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 91
    .end local v0    # "currentCameraId":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mAFScanRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 92
    :goto_1
    return-void

    .line 80
    .restart local v0    # "currentCameraId":I
    :cond_0
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mMeteringParameters:Lcom/android/camera/async/ConcurrentState;

    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 82
    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mSettings3A:Lcom/android/camera/one/Settings3A;

    .line 81
    invoke-static {v1, v1, v3, v4}, Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;->createForNormalizedCoordinates(Landroid/graphics/PointF;Landroid/graphics/PointF;ILcom/android/camera/one/Settings3A;)Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 84
    :cond_1
    sget-object v2, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "run triggerFocusAndMeterAtPoint fail : no match condition."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 88
    .end local v0    # "currentCameraId":I
    :cond_2
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mMeteringParameters:Lcom/android/camera/async/ConcurrentState;

    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 89
    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;->mSettings3A:Lcom/android/camera/one/Settings3A;

    .line 88
    invoke-static {v1, v1, v3, v4}, Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;->createForNormalizedCoordinates(Landroid/graphics/PointF;Landroid/graphics/PointF;ILcom/android/camera/one/Settings3A;)Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    goto :goto_0
.end method

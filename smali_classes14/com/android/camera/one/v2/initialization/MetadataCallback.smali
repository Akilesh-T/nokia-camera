.class public Lcom/android/camera/one/v2/initialization/MetadataCallback;
.super Ljava/lang/Object;
.source "MetadataCallback.java"

# interfaces
.implements Lcom/android/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/Updatable",
        "<",
        "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCameraId:Lcom/android/camera/device/CameraId;

.field private final mFaceData:Lcom/android/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Updatable",
            "<[",
            "Landroid/hardware/camera2/params/Face;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusMode:Lcom/android/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusState:Lcom/android/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Updatable",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastFrameNumber:J

.field private mNeedFocusPointInfo:Z

.field private final mOneCameraFocusState:Lcom/android/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/OneCamera$LengsState;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorInfoActiveArraySize:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;)V
    .locals 2
    .param p1, "cameraId"    # Lcom/android/camera/device/CameraId;
    .param p2, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/device/CameraId;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/PointF;",
            ">;>;",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/OneCamera$LengsState;",
            ">;",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/async/Updatable",
            "<[",
            "Landroid/hardware/camera2/params/Face;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p3, "focusState":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/PointF;>;>;"
    .local p4, "oneCameraFocusState":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Lcom/android/camera/one/OneCamera$LengsState;>;"
    .local p5, "focusMode":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Integer;>;"
    .local p6, "faceData":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<[Landroid/hardware/camera2/params/Face;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/initialization/MetadataCallback;->mNeedFocusPointInfo:Z

    .line 58
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/MetadataCallback;->mCameraId:Lcom/android/camera/device/CameraId;

    .line 59
    iput-object p3, p0, Lcom/android/camera/one/v2/initialization/MetadataCallback;->mFocusState:Lcom/android/camera/async/Updatable;

    .line 60
    iput-object p4, p0, Lcom/android/camera/one/v2/initialization/MetadataCallback;->mOneCameraFocusState:Lcom/android/camera/async/Updatable;

    .line 61
    iput-object p5, p0, Lcom/android/camera/one/v2/initialization/MetadataCallback;->mFocusMode:Lcom/android/camera/async/Updatable;

    .line 62
    iput-object p6, p0, Lcom/android/camera/one/v2/initialization/MetadataCallback;->mFaceData:Lcom/android/camera/async/Updatable;

    .line 63
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/one/v2/initialization/MetadataCallback;->mLastFrameNumber:J

    .line 64
    invoke-interface {p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/initialization/MetadataCallback;->mSensorInfoActiveArraySize:Landroid/graphics/Rect;

    .line 65
    return-void
.end method

.method private updateFaceData(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V
    .locals 2
    .param p1, "totalCaptureResult"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/MetadataCallback;->mFaceData:Lcom/android/camera/async/Updatable;

    if-nez v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/Face;

    .line 125
    .local v0, "face":[Landroid/hardware/camera2/params/Face;
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/MetadataCallback;->mFaceData:Lcom/android/camera/async/Updatable;

    invoke-interface {v1, v0}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateFocusMode(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V
    .locals 2
    .param p1, "totalCaptureResult"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    .prologue
    .line 84
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 85
    .local v0, "focusMode":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/MetadataCallback;->mFocusMode:Lcom/android/camera/async/Updatable;

    invoke-interface {v1, v0}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 88
    :cond_0
    return-void
.end method

.method private updateFocusState(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V
    .locals 7
    .param p1, "totalCaptureResult"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 91
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v4}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 92
    .local v3, "focusState":Ljava/lang/Integer;
    if-eqz v3, :cond_1

    .line 93
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 94
    .local v2, "focusPoint":Landroid/graphics/PointF;
    iget-boolean v4, p0, Lcom/android/camera/one/v2/initialization/MetadataCallback;->mNeedFocusPointInfo:Z

    if-eqz v4, :cond_0

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 96
    .local v0, "activeStates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v4}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 100
    .local v1, "afMeteringRegion":[Landroid/hardware/camera2/params/MeteringRectangle;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 101
    aget-object v4, v1, v6

    invoke-virtual {v4}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/one/v2/initialization/MetadataCallback;->mSensorInfoActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 102
    aget-object v4, v1, v6

    invoke-virtual {v4}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/one/v2/initialization/MetadataCallback;->mSensorInfoActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 106
    .end local v0    # "activeStates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v1    # "afMeteringRegion":[Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_0
    iget-object v4, p0, Lcom/android/camera/one/v2/initialization/MetadataCallback;->mFocusState:Lcom/android/camera/async/Updatable;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 108
    .end local v2    # "focusPoint":Landroid/graphics/PointF;
    :cond_1
    return-void
.end method

.method private updateOneCameraFocusState(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V
    .locals 7
    .param p1, "totalCaptureResult"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    .prologue
    .line 111
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v4}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 112
    .local v2, "focusDistance":Ljava/lang/Float;
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v4}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 113
    .local v3, "focusState":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 114
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 115
    .local v1, "activeStates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 118
    .local v0, "active":Z
    iget-object v4, p0, Lcom/android/camera/one/v2/initialization/MetadataCallback;->mOneCameraFocusState:Lcom/android/camera/async/Updatable;

    new-instance v5, Lcom/android/camera/one/OneCamera$LengsState;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-direct {v5, v6, v0}, Lcom/android/camera/one/OneCamera$LengsState;-><init>(FZ)V

    invoke-interface {v4, v5}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 120
    .end local v0    # "active":Z
    .end local v1    # "activeStates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public setNeedFocusPointInfo(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/camera/one/v2/initialization/MetadataCallback;->mNeedFocusPointInfo:Z

    .line 69
    return-void
.end method

.method public update(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V
    .locals 4
    .param p1, "totalCaptureResult"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/one/v2/initialization/MetadataCallback;->mLastFrameNumber:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/initialization/MetadataCallback;->updateFaceData(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V

    .line 76
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/initialization/MetadataCallback;->updateFocusState(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V

    .line 79
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/one/v2/initialization/MetadataCallback;->mLastFrameNumber:J

    .line 81
    :cond_0
    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 41
    check-cast p1, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/initialization/MetadataCallback;->update(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V

    return-void
.end method

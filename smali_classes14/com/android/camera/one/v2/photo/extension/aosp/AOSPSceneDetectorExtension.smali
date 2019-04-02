.class public Lcom/android/camera/one/v2/photo/extension/aosp/AOSPSceneDetectorExtension;
.super Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;
.source "AOSPSceneDetectorExtension.java"


# instance fields
.field private final mDetectedSceneMode:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFrameNumber:J


# direct methods
.method public constructor <init>(Lcom/android/camera/one/OneCamera$Facing;)V
    .locals 2
    .param p1, "facing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;-><init>()V

    .line 22
    new-instance v0, Lcom/android/camera/async/ConcurrentState;

    sget-object v1, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    invoke-direct {v0, v1}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/aosp/AOSPSceneDetectorExtension;->mDetectedSceneMode:Lcom/android/camera/async/ConcurrentState;

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/one/v2/photo/extension/aosp/AOSPSceneDetectorExtension;->mLastFrameNumber:J

    .line 24
    return-void
.end method


# virtual methods
.method public getCurrentScene()Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/aosp/AOSPSceneDetectorExtension;->mDetectedSceneMode:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    return-object v0
.end method

.method public update(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;Lcom/android/camera/one/v2/photo/SceneDetector$HDR;Z)V
    .locals 4
    .param p1, "captureResult"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "hdrMode"    # Lcom/android/camera/one/v2/photo/SceneDetector$HDR;
    .param p3, "isFlashRequired"    # Z

    .prologue
    .line 28
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/one/v2/photo/extension/aosp/AOSPSceneDetectorExtension;->mLastFrameNumber:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 30
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/one/v2/photo/extension/aosp/AOSPSceneDetectorExtension;->mLastFrameNumber:J

    .line 32
    :cond_0
    return-void
.end method

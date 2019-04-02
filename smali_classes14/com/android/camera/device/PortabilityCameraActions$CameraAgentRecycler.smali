.class Lcom/android/camera/device/PortabilityCameraActions$CameraAgentRecycler;
.super Ljava/lang/Object;
.source "PortabilityCameraActions.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/device/PortabilityCameraActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraAgentRecycler"
.end annotation


# instance fields
.field private final mCameraApi:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

.field private final mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mLogger:Lcom/android/camera/debug/Logger;


# direct methods
.method public constructor <init>(Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;Lcom/android/camera/debug/Logger;)V
    .locals 2
    .param p1, "cameraApi"    # Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;
    .param p2, "logger"    # Lcom/android/camera/debug/Logger;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/android/camera/device/PortabilityCameraActions$CameraAgentRecycler;->mCameraApi:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .line 104
    iput-object p2, p0, Lcom/android/camera/device/PortabilityCameraActions$CameraAgentRecycler;->mLogger:Lcom/android/camera/debug/Logger;

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/device/PortabilityCameraActions$CameraAgentRecycler;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 106
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/device/PortabilityCameraActions$CameraAgentRecycler;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/camera/device/PortabilityCameraActions$CameraAgentRecycler;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recycling CameraAgentFactory for CameraApi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/device/PortabilityCameraActions$CameraAgentRecycler;->mCameraApi:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/camera/device/PortabilityCameraActions$CameraAgentRecycler;->mCameraApi:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->recycle(Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)V

    .line 114
    :cond_0
    return-void
.end method

.class Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;
.super Ljava/lang/Object;
.source "PortabilityCameraActions.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/device/PortabilityCameraActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenCameraStateCallback"
.end annotation


# instance fields
.field private mHasBeenCalled:Z

.field private final mLogger:Lcom/android/camera/debug/Logger;

.field private final mOpenListener:Lcom/android/camera/device/SingleDeviceOpenListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/device/SingleDeviceOpenListener",
            "<",
            "Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/device/SingleDeviceOpenListener;Lcom/android/camera/debug/Logger;)V
    .locals 1
    .param p2, "logger"    # Lcom/android/camera/debug/Logger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/device/SingleDeviceOpenListener",
            "<",
            "Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;",
            ">;",
            "Lcom/android/camera/debug/Logger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "openListener":Lcom/android/camera/device/SingleDeviceOpenListener;, "Lcom/android/camera/device/SingleDeviceOpenListener<Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;->mHasBeenCalled:Z

    .line 188
    iput-object p1, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;->mOpenListener:Lcom/android/camera/device/SingleDeviceOpenListener;

    .line 189
    iput-object p2, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;->mLogger:Lcom/android/camera/debug/Logger;

    .line 190
    return-void
.end method

.method private called()Z
    .locals 3

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;->mHasBeenCalled:Z

    .line 236
    .local v0, "result":Z
    iget-boolean v1, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;->mHasBeenCalled:Z

    if-nez v1, :cond_0

    .line 237
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;->mHasBeenCalled:Z

    .line 242
    :goto_0
    return v0

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;->mLogger:Lcom/android/camera/debug/Logger;

    const-string v2, "Callback was re-executed."

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCameraDisabled(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;->called()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraDisabled(id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;->mOpenListener:Lcom/android/camera/device/SingleDeviceOpenListener;

    new-instance v1, Lcom/android/camera/device/CameraOpenException;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/android/camera/device/CameraOpenException;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/android/camera/device/SingleDeviceOpenListener;->onDeviceOpenException(Ljava/lang/Throwable;)V

    .line 206
    :cond_0
    return-void
.end method

.method public onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 3
    .param p1, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;->called()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraOpened(id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;->mOpenListener:Lcom/android/camera/device/SingleDeviceOpenListener;

    invoke-interface {v0, p1}, Lcom/android/camera/device/SingleDeviceOpenListener;->onDeviceOpened(Ljava/lang/Object;)V

    .line 198
    :cond_0
    return-void
.end method

.method public onDeviceOpenFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;->called()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceOpenFailure(id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;->mOpenListener:Lcom/android/camera/device/SingleDeviceOpenListener;

    new-instance v1, Lcom/android/camera/device/CameraOpenException;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/android/camera/device/CameraOpenException;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/android/camera/device/SingleDeviceOpenListener;->onDeviceOpenException(Ljava/lang/Throwable;)V

    .line 215
    :cond_0
    return-void
.end method

.method public onDeviceOpenedAlready(ILjava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;->called()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceOpenedAlready(id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;->mOpenListener:Lcom/android/camera/device/SingleDeviceOpenListener;

    new-instance v1, Lcom/android/camera/device/CameraOpenException;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/android/camera/device/CameraOpenException;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/android/camera/device/SingleDeviceOpenListener;->onDeviceOpenException(Ljava/lang/Throwable;)V

    .line 224
    :cond_0
    return-void
.end method

.method public onReconnectionFailure(Lcom/android/ex/camera2/portability/CameraAgent;Ljava/lang/String;)V
    .locals 3
    .param p1, "mgr"    # Lcom/android/ex/camera2/portability/CameraAgent;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;->called()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReconnectionFailure(info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;->mOpenListener:Lcom/android/camera/device/SingleDeviceOpenListener;

    new-instance v1, Lcom/android/camera/device/CameraOpenException;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/android/camera/device/CameraOpenException;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/android/camera/device/SingleDeviceOpenListener;->onDeviceOpenException(Ljava/lang/Throwable;)V

    .line 232
    :cond_0
    return-void
.end method

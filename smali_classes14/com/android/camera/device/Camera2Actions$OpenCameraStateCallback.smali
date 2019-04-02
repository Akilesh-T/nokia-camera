.class Lcom/android/camera/device/Camera2Actions$OpenCameraStateCallback;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "Camera2Actions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/device/Camera2Actions;
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
            "Landroid/hardware/camera2/CameraDevice;",
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
            "Landroid/hardware/camera2/CameraDevice;",
            ">;",
            "Lcom/android/camera/debug/Logger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "openListener":Lcom/android/camera/device/SingleDeviceOpenListener;, "Lcom/android/camera/device/SingleDeviceOpenListener<Landroid/hardware/camera2/CameraDevice;>;"
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraStateCallback;->mHasBeenCalled:Z

    .line 155
    iput-object p1, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraStateCallback;->mOpenListener:Lcom/android/camera/device/SingleDeviceOpenListener;

    .line 156
    iput-object p2, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraStateCallback;->mLogger:Lcom/android/camera/debug/Logger;

    .line 157
    return-void
.end method

.method private called()Z
    .locals 3

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraStateCallback;->mHasBeenCalled:Z

    .line 194
    .local v0, "result":Z
    iget-boolean v1, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraStateCallback;->mHasBeenCalled:Z

    if-nez v1, :cond_0

    .line 195
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraStateCallback;->mHasBeenCalled:Z

    .line 200
    :goto_0
    return v0

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraStateCallback;->mLogger:Lcom/android/camera/debug/Logger;

    const-string v2, "Callback was re-executed."

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/camera/device/Camera2Actions$OpenCameraStateCallback;->called()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraStateCallback;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClosed(id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraStateCallback;->mOpenListener:Lcom/android/camera/device/SingleDeviceOpenListener;

    invoke-interface {v0, p1}, Lcom/android/camera/device/SingleDeviceOpenListener;->onDeviceOpenException(Ljava/lang/Object;)V

    .line 173
    :cond_0
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/android/camera/device/Camera2Actions$OpenCameraStateCallback;->called()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraStateCallback;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnected(id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraStateCallback;->mOpenListener:Lcom/android/camera/device/SingleDeviceOpenListener;

    invoke-interface {v0, p1}, Lcom/android/camera/device/SingleDeviceOpenListener;->onDeviceOpenException(Ljava/lang/Object;)V

    .line 181
    :cond_0
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "errorId"    # I

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/camera/device/Camera2Actions$OpenCameraStateCallback;->called()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraStateCallback;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError(id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraStateCallback;->mOpenListener:Lcom/android/camera/device/SingleDeviceOpenListener;

    new-instance v1, Lcom/android/camera/device/CameraOpenException;

    invoke-direct {v1, p2}, Lcom/android/camera/device/CameraOpenException;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/android/camera/device/SingleDeviceOpenListener;->onDeviceOpenException(Ljava/lang/Throwable;)V

    .line 190
    :cond_0
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/android/camera/device/Camera2Actions$OpenCameraStateCallback;->called()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraStateCallback;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOpened(id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraStateCallback;->mOpenListener:Lcom/android/camera/device/SingleDeviceOpenListener;

    invoke-interface {v0, p1}, Lcom/android/camera/device/SingleDeviceOpenListener;->onDeviceOpened(Ljava/lang/Object;)V

    .line 165
    :cond_0
    return-void
.end method

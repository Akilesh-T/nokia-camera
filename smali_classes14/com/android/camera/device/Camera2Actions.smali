.class public Lcom/android/camera/device/Camera2Actions;
.super Ljava/lang/Object;
.source "Camera2Actions.java"

# interfaces
.implements Lcom/android/camera/device/SingleDeviceActions;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/device/Camera2Actions$OpenCameraStateCallback;,
        Lcom/android/camera/device/Camera2Actions$CloseCameraRunnable;,
        Lcom/android/camera/device/Camera2Actions$OpenCameraRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/device/SingleDeviceActions",
        "<",
        "Landroid/hardware/camera2/CameraDevice;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mHandlerFactory:Lcom/android/camera/async/HandlerFactory;

.field private final mId:Lcom/android/camera/device/CameraDeviceKey;

.field private final mLogger:Lcom/android/camera/debug/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Camera2Act"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/device/Camera2Actions;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/device/CameraDeviceKey;Landroid/hardware/camera2/CameraManager;Ljava/util/concurrent/Executor;Lcom/android/camera/async/HandlerFactory;Lcom/android/camera/debug/Logger$Factory;)V
    .locals 2
    .param p1, "id"    # Lcom/android/camera/device/CameraDeviceKey;
    .param p2, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p3, "backgroundExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "handlerFactory"    # Lcom/android/camera/async/HandlerFactory;
    .param p5, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/camera/device/Camera2Actions;->mId:Lcom/android/camera/device/CameraDeviceKey;

    .line 55
    iput-object p2, p0, Lcom/android/camera/device/Camera2Actions;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 56
    iput-object p3, p0, Lcom/android/camera/device/Camera2Actions;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 57
    iput-object p4, p0, Lcom/android/camera/device/Camera2Actions;->mHandlerFactory:Lcom/android/camera/async/HandlerFactory;

    .line 58
    sget-object v0, Lcom/android/camera/device/Camera2Actions;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-interface {p5, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/device/Camera2Actions;->mLogger:Lcom/android/camera/debug/Logger;

    .line 59
    iget-object v0, p0, Lcom/android/camera/device/Camera2Actions;->mLogger:Lcom/android/camera/debug/Logger;

    const-string v1, "Created Camera2Request"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public executeClose(Lcom/android/camera/device/SingleDeviceCloseListener;Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "closeListener"    # Lcom/android/camera/device/SingleDeviceCloseListener;
    .param p2, "device"    # Landroid/hardware/camera2/CameraDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/device/Camera2Actions;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeClose("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/android/camera/device/Camera2Actions;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/device/Camera2Actions$CloseCameraRunnable;

    iget-object v2, p0, Lcom/android/camera/device/Camera2Actions;->mLogger:Lcom/android/camera/debug/Logger;

    invoke-direct {v1, p2, p1, v2}, Lcom/android/camera/device/Camera2Actions$CloseCameraRunnable;-><init>(Landroid/hardware/camera2/CameraDevice;Lcom/android/camera/device/SingleDeviceCloseListener;Lcom/android/camera/debug/Logger;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public bridge synthetic executeClose(Lcom/android/camera/device/SingleDeviceCloseListener;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 38
    check-cast p2, Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/device/Camera2Actions;->executeClose(Lcom/android/camera/device/SingleDeviceCloseListener;Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public executeOpen(Lcom/android/camera/device/SingleDeviceOpenListener;Lcom/android/camera/async/Lifetime;)V
    .locals 7
    .param p2, "deviceLifetime"    # Lcom/android/camera/async/Lifetime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/device/SingleDeviceOpenListener",
            "<",
            "Landroid/hardware/camera2/CameraDevice;",
            ">;",
            "Lcom/android/camera/async/Lifetime;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "openListener":Lcom/android/camera/device/SingleDeviceOpenListener;, "Lcom/android/camera/device/SingleDeviceOpenListener<Landroid/hardware/camera2/CameraDevice;>;"
    iget-object v0, p0, Lcom/android/camera/device/Camera2Actions;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeOpen(id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/device/Camera2Actions;->mId:Lcom/android/camera/device/CameraDeviceKey;

    invoke-virtual {v2}, Lcom/android/camera/device/CameraDeviceKey;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 66
    iget-object v6, p0, Lcom/android/camera/device/Camera2Actions;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/camera/device/Camera2Actions$OpenCameraRunnable;

    iget-object v1, p0, Lcom/android/camera/device/Camera2Actions;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/android/camera/device/Camera2Actions;->mId:Lcom/android/camera/device/CameraDeviceKey;

    .line 67
    invoke-virtual {v2}, Lcom/android/camera/device/CameraDeviceKey;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/device/Camera2Actions;->mHandlerFactory:Lcom/android/camera/async/HandlerFactory;

    const-string v4, "Camera2 Lifetime"

    .line 72
    invoke-virtual {v3, p2, v4}, Lcom/android/camera/async/HandlerFactory;->create(Lcom/android/camera/async/Lifetime;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/device/Camera2Actions;->mLogger:Lcom/android/camera/debug/Logger;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/device/Camera2Actions$OpenCameraRunnable;-><init>(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Landroid/os/Handler;Lcom/android/camera/device/SingleDeviceOpenListener;Lcom/android/camera/debug/Logger;)V

    .line 66
    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.class public Lcom/android/camera/device/LegacyCameraActions;
.super Ljava/lang/Object;
.source "LegacyCameraActions.java"

# interfaces
.implements Lcom/android/camera/device/SingleDeviceActions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/device/LegacyCameraActions$CloseCameraRunnable;,
        Lcom/android/camera/device/LegacyCameraActions$OpenCameraRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/device/SingleDeviceActions",
        "<",
        "Landroid/hardware/Camera;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mCameraHandler:Landroid/os/Handler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mHandlerFactory:Lcom/android/camera/async/HandlerFactory;

.field private final mId:Lcom/android/camera/device/CameraDeviceKey;

.field private final mLogger:Lcom/android/camera/debug/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Camera1Act"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/device/LegacyCameraActions;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/device/CameraDeviceKey;Lcom/android/camera/async/HandlerFactory;Lcom/android/camera/debug/Logger$Factory;)V
    .locals 1
    .param p1, "id"    # Lcom/android/camera/device/CameraDeviceKey;
    .param p2, "handlerFactory"    # Lcom/android/camera/async/HandlerFactory;
    .param p3, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/camera/device/LegacyCameraActions;->mId:Lcom/android/camera/device/CameraDeviceKey;

    .line 49
    iput-object p2, p0, Lcom/android/camera/device/LegacyCameraActions;->mHandlerFactory:Lcom/android/camera/async/HandlerFactory;

    .line 50
    sget-object v0, Lcom/android/camera/device/LegacyCameraActions;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-interface {p3, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/device/LegacyCameraActions;->mLogger:Lcom/android/camera/debug/Logger;

    .line 51
    return-void
.end method


# virtual methods
.method public executeClose(Lcom/android/camera/device/SingleDeviceCloseListener;Landroid/hardware/Camera;)V
    .locals 4
    .param p1, "closeListener"    # Lcom/android/camera/device/SingleDeviceCloseListener;
    .param p2, "device"    # Landroid/hardware/Camera;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/camera/device/LegacyCameraActions;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeClose("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/device/LegacyCameraActions;->mId:Lcom/android/camera/device/CameraDeviceKey;

    invoke-virtual {v3}, Lcom/android/camera/device/CameraDeviceKey;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/android/camera/device/LegacyCameraActions$CloseCameraRunnable;

    iget-object v1, p0, Lcom/android/camera/device/LegacyCameraActions;->mId:Lcom/android/camera/device/CameraDeviceKey;

    .line 70
    invoke-virtual {v1}, Lcom/android/camera/device/CameraDeviceKey;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/device/LegacyCameraActions;->mLogger:Lcom/android/camera/debug/Logger;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/camera/device/LegacyCameraActions$CloseCameraRunnable;-><init>(Lcom/android/camera/device/SingleDeviceCloseListener;Landroid/hardware/Camera;ILcom/android/camera/debug/Logger;)V

    .line 73
    .local v0, "closeCamera":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/camera/device/LegacyCameraActions;->mCameraHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/camera/device/LegacyCameraActions;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/android/camera/device/LegacyCameraActions;->mLogger:Lcom/android/camera/debug/Logger;

    const-string v2, "executeClose() was executed before the handler was created!"

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    .line 77
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public bridge synthetic executeClose(Lcom/android/camera/device/SingleDeviceCloseListener;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 35
    check-cast p2, Landroid/hardware/Camera;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/device/LegacyCameraActions;->executeClose(Lcom/android/camera/device/SingleDeviceCloseListener;Landroid/hardware/Camera;)V

    return-void
.end method

.method public executeOpen(Lcom/android/camera/device/SingleDeviceOpenListener;Lcom/android/camera/async/Lifetime;)V
    .locals 4
    .param p2, "deviceLifetime"    # Lcom/android/camera/async/Lifetime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/device/SingleDeviceOpenListener",
            "<",
            "Landroid/hardware/Camera;",
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
    .line 56
    .local p1, "openListener":Lcom/android/camera/device/SingleDeviceOpenListener;, "Lcom/android/camera/device/SingleDeviceOpenListener<Landroid/hardware/Camera;>;"
    iget-object v0, p0, Lcom/android/camera/device/LegacyCameraActions;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeOpen(id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/device/LegacyCameraActions;->mId:Lcom/android/camera/device/CameraDeviceKey;

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

    .line 58
    iget-object v0, p0, Lcom/android/camera/device/LegacyCameraActions;->mHandlerFactory:Lcom/android/camera/async/HandlerFactory;

    const-string v1, "LegacyCamera Handler"

    invoke-virtual {v0, p2, v1}, Lcom/android/camera/async/HandlerFactory;->create(Lcom/android/camera/async/Lifetime;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/device/LegacyCameraActions;->mCameraHandler:Landroid/os/Handler;

    .line 59
    iget-object v0, p0, Lcom/android/camera/device/LegacyCameraActions;->mCameraHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/device/LegacyCameraActions$OpenCameraRunnable;

    iget-object v2, p0, Lcom/android/camera/device/LegacyCameraActions;->mId:Lcom/android/camera/device/CameraDeviceKey;

    .line 60
    invoke-virtual {v2}, Lcom/android/camera/device/CameraDeviceKey;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/device/LegacyCameraActions;->mLogger:Lcom/android/camera/debug/Logger;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/camera/device/LegacyCameraActions$OpenCameraRunnable;-><init>(Lcom/android/camera/device/SingleDeviceOpenListener;ILcom/android/camera/debug/Logger;)V

    .line 59
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    return-void
.end method

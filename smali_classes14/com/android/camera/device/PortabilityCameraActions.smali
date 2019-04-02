.class public Lcom/android/camera/device/PortabilityCameraActions;
.super Ljava/lang/Object;
.source "PortabilityCameraActions.java"

# interfaces
.implements Lcom/android/camera/device/SingleDeviceActions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;,
        Lcom/android/camera/device/PortabilityCameraActions$CloseCameraRunnable;,
        Lcom/android/camera/device/PortabilityCameraActions$OpenCameraRunnable;,
        Lcom/android/camera/device/PortabilityCameraActions$CameraAgentRecycler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/device/SingleDeviceActions",
        "<",
        "Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mApiVersion:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

.field private final mBackgroundRunner:Ljava/util/concurrent/ExecutorService;

.field private final mContext:Landroid/content/Context;

.field private final mHandlerFactory:Lcom/android/camera/async/HandlerFactory;

.field private final mId:Lcom/android/camera/device/CameraDeviceKey;

.field private final mLogger:Lcom/android/camera/debug/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PortCamAct"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/device/PortabilityCameraActions;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/device/CameraDeviceKey;Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;Ljava/util/concurrent/ExecutorService;Lcom/android/camera/async/HandlerFactory;Lcom/android/camera/debug/Logger$Factory;)V
    .locals 2
    .param p1, "id"    # Lcom/android/camera/device/CameraDeviceKey;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "apiVersion"    # Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;
    .param p4, "backgroundRunner"    # Ljava/util/concurrent/ExecutorService;
    .param p5, "handlerFactory"    # Lcom/android/camera/async/HandlerFactory;
    .param p6, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/camera/device/PortabilityCameraActions;->mId:Lcom/android/camera/device/CameraDeviceKey;

    .line 61
    iput-object p2, p0, Lcom/android/camera/device/PortabilityCameraActions;->mContext:Landroid/content/Context;

    .line 62
    iput-object p3, p0, Lcom/android/camera/device/PortabilityCameraActions;->mApiVersion:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .line 63
    iput-object p4, p0, Lcom/android/camera/device/PortabilityCameraActions;->mBackgroundRunner:Ljava/util/concurrent/ExecutorService;

    .line 64
    iput-object p5, p0, Lcom/android/camera/device/PortabilityCameraActions;->mHandlerFactory:Lcom/android/camera/async/HandlerFactory;

    .line 65
    sget-object v0, Lcom/android/camera/device/PortabilityCameraActions;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-interface {p6, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/device/PortabilityCameraActions;->mLogger:Lcom/android/camera/debug/Logger;

    .line 67
    iget-object v0, p0, Lcom/android/camera/device/PortabilityCameraActions;->mLogger:Lcom/android/camera/debug/Logger;

    const-string v1, "Created Camera2Request"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method public executeClose(Lcom/android/camera/device/SingleDeviceCloseListener;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 4
    .param p1, "closeListener"    # Lcom/android/camera/device/SingleDeviceCloseListener;
    .param p2, "device"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/device/PortabilityCameraActions;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeClose("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/camera/device/PortabilityCameraActions;->mBackgroundRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/device/PortabilityCameraActions$CloseCameraRunnable;

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/device/PortabilityCameraActions;->mLogger:Lcom/android/camera/debug/Logger;

    invoke-direct {v1, p2, v2, p1, v3}, Lcom/android/camera/device/PortabilityCameraActions$CloseCameraRunnable;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent;Lcom/android/camera/device/SingleDeviceCloseListener;Lcom/android/camera/debug/Logger;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 91
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
    .line 42
    check-cast p2, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/device/PortabilityCameraActions;->executeClose(Lcom/android/camera/device/SingleDeviceCloseListener;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    return-void
.end method

.method public executeOpen(Lcom/android/camera/device/SingleDeviceOpenListener;Lcom/android/camera/async/Lifetime;)V
    .locals 8
    .param p2, "deviceLifetime"    # Lcom/android/camera/async/Lifetime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/device/SingleDeviceOpenListener",
            "<",
            "Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;",
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
    .line 73
    .local p1, "openListener":Lcom/android/camera/device/SingleDeviceOpenListener;, "Lcom/android/camera/device/SingleDeviceOpenListener<Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;>;"
    iget-object v0, p0, Lcom/android/camera/device/PortabilityCameraActions;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeOpen(id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/device/PortabilityCameraActions;->mId:Lcom/android/camera/device/CameraDeviceKey;

    invoke-virtual {v3}, Lcom/android/camera/device/CameraDeviceKey;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/device/PortabilityCameraActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/device/PortabilityCameraActions;->mApiVersion:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    invoke-static {v0, v2}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->getAndroidCameraAgent(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    .line 76
    .local v1, "agent":Lcom/android/ex/camera2/portability/CameraAgent;
    new-instance v0, Lcom/android/camera/device/PortabilityCameraActions$CameraAgentRecycler;

    iget-object v2, p0, Lcom/android/camera/device/PortabilityCameraActions;->mApiVersion:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    iget-object v3, p0, Lcom/android/camera/device/PortabilityCameraActions;->mLogger:Lcom/android/camera/debug/Logger;

    invoke-direct {v0, v2, v3}, Lcom/android/camera/device/PortabilityCameraActions$CameraAgentRecycler;-><init>(Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;Lcom/android/camera/debug/Logger;)V

    invoke-virtual {p2, v0}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 78
    iget-object v7, p0, Lcom/android/camera/device/PortabilityCameraActions;->mBackgroundRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraRunnable;

    iget-object v2, p0, Lcom/android/camera/device/PortabilityCameraActions;->mId:Lcom/android/camera/device/CameraDeviceKey;

    invoke-virtual {v2}, Lcom/android/camera/device/CameraDeviceKey;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/device/PortabilityCameraActions;->mHandlerFactory:Lcom/android/camera/async/HandlerFactory;

    const-string v4, "Camera2 Lifetime"

    .line 79
    invoke-virtual {v3, p2, v4}, Lcom/android/camera/async/HandlerFactory;->create(Lcom/android/camera/async/Lifetime;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/device/PortabilityCameraActions;->mLogger:Lcom/android/camera/debug/Logger;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraRunnable;-><init>(Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/os/Handler;Lcom/android/camera/device/SingleDeviceOpenListener;Lcom/android/camera/debug/Logger;)V

    .line 78
    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v1    # "agent":Lcom/android/ex/camera2/portability/CameraAgent;
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v6

    .line 82
    .local v6, "e":Ljava/lang/AssertionError;
    invoke-interface {p1, v6}, Lcom/android/camera/device/SingleDeviceOpenListener;->onDeviceOpenException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

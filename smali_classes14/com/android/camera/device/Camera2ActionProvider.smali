.class public Lcom/android/camera/device/Camera2ActionProvider;
.super Ljava/lang/Object;
.source "Camera2ActionProvider.java"

# interfaces
.implements Lcom/android/camera/device/CameraDeviceActionProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/device/CameraDeviceActionProvider",
        "<",
        "Landroid/hardware/camera2/CameraDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBackgroundRunner:Ljava/util/concurrent/ExecutorService;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mHandlerFactory:Lcom/android/camera/async/HandlerFactory;

.field private final mLogFactory:Lcom/android/camera/debug/Logger$Factory;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraManager;Lcom/android/camera/async/HandlerFactory;Ljava/util/concurrent/ExecutorService;Lcom/android/camera/debug/Logger$Factory;)V
    .locals 0
    .param p1, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p2, "handlerFactory"    # Lcom/android/camera/async/HandlerFactory;
    .param p3, "backgroundRunner"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/camera/device/Camera2ActionProvider;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 40
    iput-object p2, p0, Lcom/android/camera/device/Camera2ActionProvider;->mHandlerFactory:Lcom/android/camera/async/HandlerFactory;

    .line 41
    iput-object p3, p0, Lcom/android/camera/device/Camera2ActionProvider;->mBackgroundRunner:Ljava/util/concurrent/ExecutorService;

    .line 42
    iput-object p4, p0, Lcom/android/camera/device/Camera2ActionProvider;->mLogFactory:Lcom/android/camera/debug/Logger$Factory;

    .line 43
    return-void
.end method


# virtual methods
.method public get(Lcom/android/camera/device/CameraDeviceKey;)Lcom/android/camera/device/SingleDeviceActions;
    .locals 6
    .param p1, "key"    # Lcom/android/camera/device/CameraDeviceKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/device/CameraDeviceKey;",
            ")",
            "Lcom/android/camera/device/SingleDeviceActions",
            "<",
            "Landroid/hardware/camera2/CameraDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/android/camera/device/Camera2Actions;

    iget-object v2, p0, Lcom/android/camera/device/Camera2ActionProvider;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Lcom/android/camera/device/Camera2ActionProvider;->mBackgroundRunner:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/android/camera/device/Camera2ActionProvider;->mHandlerFactory:Lcom/android/camera/async/HandlerFactory;

    iget-object v5, p0, Lcom/android/camera/device/Camera2ActionProvider;->mLogFactory:Lcom/android/camera/debug/Logger$Factory;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/device/Camera2Actions;-><init>(Lcom/android/camera/device/CameraDeviceKey;Landroid/hardware/camera2/CameraManager;Ljava/util/concurrent/Executor;Lcom/android/camera/async/HandlerFactory;Lcom/android/camera/debug/Logger$Factory;)V

    return-object v0
.end method

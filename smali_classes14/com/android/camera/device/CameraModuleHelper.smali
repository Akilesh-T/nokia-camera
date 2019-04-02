.class public Lcom/android/camera/device/CameraModuleHelper;
.super Ljava/lang/Object;
.source "CameraModuleHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideCamera2ActionProvider()Lcom/android/camera/device/Camera2ActionProvider;
    .locals 5

    .prologue
    .line 46
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/util/AndroidServices;->provideCameraManager()Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    .line 48
    .local v1, "cameraManager":Landroid/hardware/camera2/CameraManager;
    new-instance v2, Lcom/android/camera/async/HandlerFactory;

    invoke-direct {v2}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    .line 49
    .local v2, "handlerFactory":Lcom/android/camera/async/HandlerFactory;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 51
    .local v0, "backgroundRunner":Ljava/util/concurrent/ExecutorService;
    new-instance v3, Lcom/android/camera/device/Camera2ActionProvider;

    .line 52
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v4

    invoke-direct {v3, v1, v2, v0, v4}, Lcom/android/camera/device/Camera2ActionProvider;-><init>(Landroid/hardware/camera2/CameraManager;Lcom/android/camera/async/HandlerFactory;Ljava/util/concurrent/ExecutorService;Lcom/android/camera/debug/Logger$Factory;)V

    .line 51
    return-object v3
.end method

.method public static provideLegacyCameraActionProvider()Lcom/android/camera/device/LegacyCameraActionProvider;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/android/camera/async/HandlerFactory;

    invoke-direct {v0}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    .line 35
    .local v0, "handlerFactory":Lcom/android/camera/async/HandlerFactory;
    new-instance v1, Lcom/android/camera/device/LegacyCameraActionProvider;

    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/camera/device/LegacyCameraActionProvider;-><init>(Lcom/android/camera/async/HandlerFactory;Lcom/android/camera/debug/Logger$Factory;)V

    return-object v1
.end method

.method public static providePortabilityActionProvider()Lcom/android/camera/device/PortabilityCameraActionProvider;
    .locals 5

    .prologue
    .line 39
    new-instance v1, Lcom/android/camera/async/HandlerFactory;

    invoke-direct {v1}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    .line 40
    .local v1, "handlerFactory":Lcom/android/camera/async/HandlerFactory;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 41
    .local v0, "backgroundRunner":Ljava/util/concurrent/ExecutorService;
    new-instance v2, Lcom/android/camera/device/PortabilityCameraActionProvider;

    .line 42
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v4

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/android/camera/device/PortabilityCameraActionProvider;-><init>(Lcom/android/camera/async/HandlerFactory;Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Lcom/android/camera/debug/Logger$Factory;)V

    .line 41
    return-object v2
.end method

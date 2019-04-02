.class public Lcom/android/camera/device/PortabilityCameraActionProvider;
.super Ljava/lang/Object;
.source "PortabilityCameraActionProvider.java"

# interfaces
.implements Lcom/android/camera/device/CameraDeviceActionProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/device/CameraDeviceActionProvider",
        "<",
        "Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mBackgroundRunner:Ljava/util/concurrent/ExecutorService;

.field private final mHandlerFactory:Lcom/android/camera/async/HandlerFactory;

.field private final mLogFactory:Lcom/android/camera/debug/Logger$Factory;


# direct methods
.method public constructor <init>(Lcom/android/camera/async/HandlerFactory;Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Lcom/android/camera/debug/Logger$Factory;)V
    .locals 0
    .param p1, "handlerFactory"    # Lcom/android/camera/async/HandlerFactory;
    .param p2, "backgroundRunner"    # Ljava/util/concurrent/ExecutorService;
    .param p3, "appContext"    # Landroid/content/Context;
    .param p4, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/camera/device/PortabilityCameraActionProvider;->mHandlerFactory:Lcom/android/camera/async/HandlerFactory;

    .line 45
    iput-object p2, p0, Lcom/android/camera/device/PortabilityCameraActionProvider;->mBackgroundRunner:Ljava/util/concurrent/ExecutorService;

    .line 46
    iput-object p3, p0, Lcom/android/camera/device/PortabilityCameraActionProvider;->mAppContext:Landroid/content/Context;

    .line 47
    iput-object p4, p0, Lcom/android/camera/device/PortabilityCameraActionProvider;->mLogFactory:Lcom/android/camera/debug/Logger$Factory;

    .line 48
    return-void
.end method

.method private getApiFromKey(Lcom/android/camera/device/CameraDeviceKey;)Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;
    .locals 2
    .param p1, "key"    # Lcom/android/camera/device/CameraDeviceKey;

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/android/camera/device/CameraDeviceKey;->getApiType()Lcom/android/camera/device/CameraDeviceKey$ApiType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/device/CameraDeviceKey$ApiType;->CAMERA_API_PORTABILITY_API2:Lcom/android/camera/device/CameraDeviceKey$ApiType;

    if-ne v0, v1, :cond_0

    .line 58
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_2:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .line 63
    :goto_0
    return-object v0

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/device/CameraDeviceKey;->getApiType()Lcom/android/camera/device/CameraDeviceKey$ApiType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/device/CameraDeviceKey$ApiType;->CAMERA_API_PORTABILITY_API1:Lcom/android/camera/device/CameraDeviceKey$ApiType;

    if-ne v0, v1, :cond_1

    .line 60
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    goto :goto_0

    .line 63
    :cond_1
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->AUTO:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    goto :goto_0
.end method


# virtual methods
.method public get(Lcom/android/camera/device/CameraDeviceKey;)Lcom/android/camera/device/SingleDeviceActions;
    .locals 7
    .param p1, "key"    # Lcom/android/camera/device/CameraDeviceKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/device/CameraDeviceKey;",
            ")",
            "Lcom/android/camera/device/SingleDeviceActions",
            "<",
            "Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/android/camera/device/PortabilityCameraActions;

    iget-object v2, p0, Lcom/android/camera/device/PortabilityCameraActionProvider;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/camera/device/PortabilityCameraActionProvider;->getApiFromKey(Lcom/android/camera/device/CameraDeviceKey;)Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/device/PortabilityCameraActionProvider;->mBackgroundRunner:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lcom/android/camera/device/PortabilityCameraActionProvider;->mHandlerFactory:Lcom/android/camera/async/HandlerFactory;

    iget-object v6, p0, Lcom/android/camera/device/PortabilityCameraActionProvider;->mLogFactory:Lcom/android/camera/debug/Logger$Factory;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/device/PortabilityCameraActions;-><init>(Lcom/android/camera/device/CameraDeviceKey;Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;Ljava/util/concurrent/ExecutorService;Lcom/android/camera/async/HandlerFactory;Lcom/android/camera/debug/Logger$Factory;)V

    return-object v0
.end method

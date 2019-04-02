.class public Lcom/android/camera/device/LegacyCameraActionProvider;
.super Ljava/lang/Object;
.source "LegacyCameraActionProvider.java"

# interfaces
.implements Lcom/android/camera/device/CameraDeviceActionProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/device/CameraDeviceActionProvider",
        "<",
        "Landroid/hardware/Camera;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHandlerFactory:Lcom/android/camera/async/HandlerFactory;

.field private final mLogFactory:Lcom/android/camera/debug/Logger$Factory;


# direct methods
.method public constructor <init>(Lcom/android/camera/async/HandlerFactory;Lcom/android/camera/debug/Logger$Factory;)V
    .locals 0
    .param p1, "handlerFactory"    # Lcom/android/camera/async/HandlerFactory;
    .param p2, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/device/LegacyCameraActionProvider;->mHandlerFactory:Lcom/android/camera/async/HandlerFactory;

    .line 34
    iput-object p2, p0, Lcom/android/camera/device/LegacyCameraActionProvider;->mLogFactory:Lcom/android/camera/debug/Logger$Factory;

    .line 35
    return-void
.end method


# virtual methods
.method public get(Lcom/android/camera/device/CameraDeviceKey;)Lcom/android/camera/device/SingleDeviceActions;
    .locals 3
    .param p1, "key"    # Lcom/android/camera/device/CameraDeviceKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/device/CameraDeviceKey;",
            ")",
            "Lcom/android/camera/device/SingleDeviceActions",
            "<",
            "Landroid/hardware/Camera;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/android/camera/device/LegacyCameraActions;

    iget-object v1, p0, Lcom/android/camera/device/LegacyCameraActionProvider;->mHandlerFactory:Lcom/android/camera/async/HandlerFactory;

    iget-object v2, p0, Lcom/android/camera/device/LegacyCameraActionProvider;->mLogFactory:Lcom/android/camera/debug/Logger$Factory;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/camera/device/LegacyCameraActions;-><init>(Lcom/android/camera/device/CameraDeviceKey;Lcom/android/camera/async/HandlerFactory;Lcom/android/camera/debug/Logger$Factory;)V

    return-object v0
.end method

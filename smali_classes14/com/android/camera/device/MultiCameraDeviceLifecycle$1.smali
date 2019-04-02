.class Lcom/android/camera/device/MultiCameraDeviceLifecycle$1;
.super Ljava/lang/Object;
.source "MultiCameraDeviceLifecycle.java"

# interfaces
.implements Lcom/android/camera/device/SingleDeviceShutdownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/device/MultiCameraDeviceLifecycle;->createLifecycle(Lcom/android/camera/device/CameraDeviceKey;Lcom/android/camera/device/CameraDeviceActionProvider;)Lcom/android/camera/device/SingleDeviceLifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/device/SingleDeviceShutdownListener",
        "<",
        "Lcom/android/camera/device/CameraDeviceKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/device/MultiCameraDeviceLifecycle;


# direct methods
.method constructor <init>(Lcom/android/camera/device/MultiCameraDeviceLifecycle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/device/MultiCameraDeviceLifecycle;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle$1;->this$0:Lcom/android/camera/device/MultiCameraDeviceLifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutdown(Lcom/android/camera/device/CameraDeviceKey;)V
    .locals 1
    .param p1, "key"    # Lcom/android/camera/device/CameraDeviceKey;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle$1;->this$0:Lcom/android/camera/device/MultiCameraDeviceLifecycle;

    invoke-static {v0, p1}, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->access$100(Lcom/android/camera/device/MultiCameraDeviceLifecycle;Lcom/android/camera/device/CameraDeviceKey;)V

    .line 327
    return-void
.end method

.method public bridge synthetic onShutdown(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 323
    check-cast p1, Lcom/android/camera/device/CameraDeviceKey;

    invoke-virtual {p0, p1}, Lcom/android/camera/device/MultiCameraDeviceLifecycle$1;->onShutdown(Lcom/android/camera/device/CameraDeviceKey;)V

    return-void
.end method

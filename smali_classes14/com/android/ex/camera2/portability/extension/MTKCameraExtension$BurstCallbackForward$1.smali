.class Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward$1;
.super Ljava/lang/Object;
.source "MTKCameraExtension.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;-><init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

.field final synthetic val$this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward$1;->this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward$1;->val$this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "BurstCallbackForward - onShutter"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    return-void
.end method

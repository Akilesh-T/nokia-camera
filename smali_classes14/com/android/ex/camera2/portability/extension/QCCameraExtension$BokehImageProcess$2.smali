.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$2;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 1138
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "BokehImageProcess - onRawCallback"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->access$2700(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    move-result-object v0

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mRaw:Landroid/hardware/Camera$PictureCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1140
    return-void
.end method

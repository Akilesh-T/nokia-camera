.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$4;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->onProcessDone()V
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
    .line 1210
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$4;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$4;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$502(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    .line 1214
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$4;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->access$2700(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    move-result-object v0

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mBokeh:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$4;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->access$3100(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;)Lcom/android/camera/mpo/Bokeh_Info;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;->onBokehInfo(Lcom/android/camera/mpo/Bokeh_Info;)V

    .line 1215
    return-void
.end method

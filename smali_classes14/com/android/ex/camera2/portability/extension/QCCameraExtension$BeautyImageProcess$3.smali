.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess$3;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->onProcessAbort()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess$3;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1329
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess$3;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->access$3500(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess$3;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->access$3500(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->release()V

    .line 1331
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess$3;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->access$3502(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;Lcom/thirdparty/arcsoft/engine/ImageEngineBase;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess$3;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$502(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    .line 1334
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess$3;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->access$3300(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    move-result-object v0

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    const/16 v1, 0x2c4

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;->onActionAbort(I)V

    .line 1335
    return-void
.end method

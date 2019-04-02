.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$4;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->onProcessError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    .prologue
    .line 647
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$4;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$4;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->abort()V

    .line 651
    return-void
.end method

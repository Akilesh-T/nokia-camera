.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$3;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->onProcessError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$3;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$3;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->abort()V

    .line 484
    return-void
.end method

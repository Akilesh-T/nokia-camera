.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$4;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->onProcessError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$4;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$4;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->abort()V

    .line 1051
    return-void
.end method

.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess$4;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->onProcessError(I)V
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
    .line 1343
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess$4;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess$4;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->abort()V

    .line 1347
    return-void
.end method

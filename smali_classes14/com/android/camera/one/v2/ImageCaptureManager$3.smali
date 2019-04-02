.class Lcom/android/camera/one/v2/ImageCaptureManager$3;
.super Ljava/lang/Object;
.source "ImageCaptureManager.java"

# interfaces
.implements Lcom/android/camera/util/ConcurrentSharedRingBuffer$SwapTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/ImageCaptureManager;->doMetaDataSwap(Landroid/hardware/camera2/TotalCaptureResult;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/util/ConcurrentSharedRingBuffer$SwapTask",
        "<",
        "Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/ImageCaptureManager;

.field final synthetic val$newMetadata:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/ImageCaptureManager;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/ImageCaptureManager;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/camera/one/v2/ImageCaptureManager$3;->this$0:Lcom/android/camera/one/v2/ImageCaptureManager;

    iput-object p2, p0, Lcom/android/camera/one/v2/ImageCaptureManager$3;->val$newMetadata:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;
    .locals 3

    .prologue
    .line 467
    new-instance v0, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;

    iget-object v1, p0, Lcom/android/camera/one/v2/ImageCaptureManager$3;->this$0:Lcom/android/camera/one/v2/ImageCaptureManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;-><init>(Lcom/android/camera/one/v2/ImageCaptureManager;Lcom/android/camera/one/v2/ImageCaptureManager$1;)V

    .line 468
    .local v0, "image":Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;
    iget-object v1, p0, Lcom/android/camera/one/v2/ImageCaptureManager$3;->val$newMetadata:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->addMetadata(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 469
    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/android/camera/one/v2/ImageCaptureManager$3;->create()Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;

    move-result-object v0

    return-object v0
.end method

.method public getSwapKey()J
    .locals 2

    .prologue
    .line 486
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public swap(Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;)Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;
    .locals 1
    .param p1, "oldElement"    # Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;

    .prologue
    .line 474
    invoke-virtual {p1}, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->reset()V

    .line 475
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager$3;->val$newMetadata:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {p1, v0}, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->addMetadata(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 476
    return-object p1
.end method

.method public bridge synthetic swap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 464
    check-cast p1, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/ImageCaptureManager$3;->swap(Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;)Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;)V
    .locals 1
    .param p1, "existingElement"    # Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager$3;->val$newMetadata:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {p1, v0}, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->addMetadata(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 482
    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 464
    check-cast p1, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/ImageCaptureManager$3;->update(Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;)V

    return-void
.end method

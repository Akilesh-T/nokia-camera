.class Lcom/android/camera/one/v2/ImageCaptureManager$6;
.super Ljava/lang/Object;
.source "ImageCaptureManager.java"

# interfaces
.implements Lcom/android/camera/util/ConcurrentSharedRingBuffer$Selector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/ImageCaptureManager;->tryCaptureExistingImage(Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Selector",
        "<",
        "Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/ImageCaptureManager;

.field final synthetic val$constraints:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/ImageCaptureManager;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/ImageCaptureManager;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/android/camera/one/v2/ImageCaptureManager$6;->this$0:Lcom/android/camera/one/v2/ImageCaptureManager;

    iput-object p2, p0, Lcom/android/camera/one/v2/ImageCaptureManager$6;->val$constraints:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;)Z
    .locals 5
    .param p1, "e"    # Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;

    .prologue
    const/4 v2, 0x0

    .line 659
    invoke-virtual {p1}, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->tryGetMetadata()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    .line 661
    .local v0, "captureResult":Landroid/hardware/camera2/TotalCaptureResult;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->tryGetImage()Landroid/media/Image;

    move-result-object v3

    if-nez v3, :cond_1

    .line 670
    :cond_0
    :goto_0
    return v2

    .line 665
    :cond_1
    iget-object v3, p0, Lcom/android/camera/one/v2/ImageCaptureManager$6;->val$constraints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImageConstraint;

    .line 666
    .local v1, "constraint":Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImageConstraint;
    invoke-interface {v1, v0}, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImageConstraint;->satisfiesConstraint(Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 670
    .end local v1    # "constraint":Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImageConstraint;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic select(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 651
    check-cast p1, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/ImageCaptureManager$6;->select(Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;)Z

    move-result v0

    return v0
.end method

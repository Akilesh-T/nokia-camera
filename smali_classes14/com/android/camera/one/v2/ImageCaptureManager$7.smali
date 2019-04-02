.class Lcom/android/camera/one/v2/ImageCaptureManager$7;
.super Ljava/lang/Object;
.source "ImageCaptureManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/ImageCaptureManager;->tryExecuteCaptureOrRelease(Landroid/util/Pair;Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/ImageCaptureManager;

.field final synthetic val$callback:Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;

.field final synthetic val$toCapture:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/ImageCaptureManager;Landroid/util/Pair;Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/ImageCaptureManager;

    .prologue
    .line 700
    iput-object p1, p0, Lcom/android/camera/one/v2/ImageCaptureManager$7;->this$0:Lcom/android/camera/one/v2/ImageCaptureManager;

    iput-object p2, p0, Lcom/android/camera/one/v2/ImageCaptureManager$7;->val$toCapture:Landroid/util/Pair;

    iput-object p3, p0, Lcom/android/camera/one/v2/ImageCaptureManager$7;->val$callback:Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 704
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/ImageCaptureManager$7;->val$toCapture:Landroid/util/Pair;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;

    .line 705
    .local v0, "img":Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;
    iget-object v1, p0, Lcom/android/camera/one/v2/ImageCaptureManager$7;->val$callback:Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->tryGetImage()Landroid/media/Image;

    move-result-object v2

    .line 706
    invoke-virtual {v0}, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->tryGetMetadata()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v3

    .line 705
    invoke-interface {v1, v2, v3}, Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;->onImageCaptured(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    iget-object v1, p0, Lcom/android/camera/one/v2/ImageCaptureManager$7;->this$0:Lcom/android/camera/one/v2/ImageCaptureManager;

    invoke-static {v1}, Lcom/android/camera/one/v2/ImageCaptureManager;->access$200(Lcom/android/camera/one/v2/ImageCaptureManager;)Lcom/android/camera/util/ConcurrentSharedRingBuffer;

    move-result-object v2

    iget-object v1, p0, Lcom/android/camera/one/v2/ImageCaptureManager$7;->val$toCapture:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->release(J)V

    .line 710
    return-void

    .line 708
    .end local v0    # "img":Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;
    :catchall_0
    move-exception v1

    move-object v2, v1

    iget-object v1, p0, Lcom/android/camera/one/v2/ImageCaptureManager$7;->this$0:Lcom/android/camera/one/v2/ImageCaptureManager;

    invoke-static {v1}, Lcom/android/camera/one/v2/ImageCaptureManager;->access$200(Lcom/android/camera/one/v2/ImageCaptureManager;)Lcom/android/camera/util/ConcurrentSharedRingBuffer;

    move-result-object v3

    iget-object v1, p0, Lcom/android/camera/one/v2/ImageCaptureManager$7;->val$toCapture:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->release(J)V

    throw v2
.end method

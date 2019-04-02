.class Lcom/android/camera/one/v2/OneCameraImpl$3;
.super Ljava/lang/Object;
.source "OneCameraImpl.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/OneCameraImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/OneCameraImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/OneCameraImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/OneCameraImpl;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraImpl$3;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 5
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 307
    const/4 v1, 0x0

    .line 308
    .local v1, "capture":Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;
    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraImpl$3;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    invoke-static {v2}, Lcom/android/camera/one/v2/OneCameraImpl;->access$1100(Lcom/android/camera/one/v2/OneCameraImpl;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    .line 309
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraImpl$3;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    invoke-static {v2}, Lcom/android/camera/one/v2/OneCameraImpl;->access$1100(Lcom/android/camera/one/v2/OneCameraImpl;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;->setImage(Landroid/media/Image;)Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;

    move-result-object v2

    .line 310
    invoke-virtual {v2}, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;->isCaptureComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraImpl$3;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    invoke-static {v2}, Lcom/android/camera/one/v2/OneCameraImpl;->access$1100(Lcom/android/camera/one/v2/OneCameraImpl;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;

    move-object v1, v0

    .line 313
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    if-eqz v1, :cond_1

    .line 315
    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraImpl$3;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    invoke-static {v2, v1}, Lcom/android/camera/one/v2/OneCameraImpl;->access$1200(Lcom/android/camera/one/v2/OneCameraImpl;Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;)V

    .line 317
    :cond_1
    return-void

    .line 313
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

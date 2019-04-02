.class Lcom/android/camera/one/v2/OneCameraImpl$2;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "OneCameraImpl.java"


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
    .line 212
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraImpl$2;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 6
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 235
    iget-object v3, p0, Lcom/android/camera/one/v2/OneCameraImpl$2;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    invoke-static {v3, p3}, Lcom/android/camera/one/v2/OneCameraImpl;->access$600(Lcom/android/camera/one/v2/OneCameraImpl;Landroid/hardware/camera2/CaptureResult;)V

    .line 239
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 240
    invoke-static {p3}, Lcom/android/camera/one/v2/AutoFocusHelper;->checkControlAfState(Landroid/hardware/camera2/CaptureResult;)Z

    .line 242
    :cond_0
    invoke-static {}, Lcom/android/camera/one/v2/OneCameraImpl;->access$700()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    invoke-static {p3}, Lcom/android/camera/one/v2/AutoFocusHelper;->logExtraFocusInfo(Landroid/hardware/camera2/CaptureResult;)V

    .line 246
    :cond_1
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 247
    .local v2, "diopter":Ljava/lang/Float;
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/camera/one/v2/OneCameraImpl$2;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    invoke-static {v3}, Lcom/android/camera/one/v2/OneCameraImpl;->access$800(Lcom/android/camera/one/v2/OneCameraImpl;)Lcom/android/camera/one/OneCamera$LensStateListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 248
    iget-object v3, p0, Lcom/android/camera/one/v2/OneCameraImpl$2;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    invoke-static {v3}, Lcom/android/camera/one/v2/OneCameraImpl;->access$1000(Lcom/android/camera/one/v2/OneCameraImpl;)Lcom/android/camera/one/OneCamera$LensStateListener;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraImpl$2;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    invoke-static {v5}, Lcom/android/camera/one/v2/OneCameraImpl;->access$900(Lcom/android/camera/one/v2/OneCameraImpl;)Lcom/android/camera/ui/motion/LinearScale;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/camera/one/OneCamera$LensStateListener;->onFocusDistance(FLcom/android/camera/ui/motion/LinearScale;)V

    .line 251
    :cond_2
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;->CAPTURE:Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;

    if-ne v3, v4, :cond_4

    .line 255
    const/4 v1, 0x0

    .line 256
    .local v1, "capture":Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;
    iget-object v3, p0, Lcom/android/camera/one/v2/OneCameraImpl$2;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    invoke-static {v3}, Lcom/android/camera/one/v2/OneCameraImpl;->access$1100(Lcom/android/camera/one/v2/OneCameraImpl;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4

    .line 257
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/one/v2/OneCameraImpl$2;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    invoke-static {v3}, Lcom/android/camera/one/v2/OneCameraImpl;->access$1100(Lcom/android/camera/one/v2/OneCameraImpl;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;

    invoke-virtual {v3, p3}, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;->setCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;

    move-result-object v3

    .line 258
    invoke-virtual {v3}, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;->isCaptureComplete()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 259
    iget-object v3, p0, Lcom/android/camera/one/v2/OneCameraImpl$2;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    invoke-static {v3}, Lcom/android/camera/one/v2/OneCameraImpl;->access$1100(Lcom/android/camera/one/v2/OneCameraImpl;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;

    move-object v1, v0

    .line 261
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    if-eqz v1, :cond_4

    .line 263
    iget-object v3, p0, Lcom/android/camera/one/v2/OneCameraImpl$2;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    invoke-static {v3, v1}, Lcom/android/camera/one/v2/OneCameraImpl;->access$1200(Lcom/android/camera/one/v2/OneCameraImpl;Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;)V

    .line 266
    .end local v1    # "capture":Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 267
    return-void

    .line 261
    .restart local v1    # "capture":Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl$2;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    invoke-static {v0, p3}, Lcom/android/camera/one/v2/OneCameraImpl;->access$600(Lcom/android/camera/one/v2/OneCameraImpl;Landroid/hardware/camera2/CaptureResult;)V

    .line 229
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 230
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .prologue
    .line 217
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;->CAPTURE:Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl$2;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    .line 218
    invoke-static {v0}, Lcom/android/camera/one/v2/OneCameraImpl;->access$500(Lcom/android/camera/one/v2/OneCameraImpl;)Lcom/android/camera/one/OneCamera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl$2;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/OneCameraImpl;->access$500(Lcom/android/camera/one/v2/OneCameraImpl;)Lcom/android/camera/one/OneCamera$PictureCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$PictureCallback;->onQuickExpose()V

    .line 221
    :cond_0
    return-void
.end method

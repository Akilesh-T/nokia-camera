.class Lcom/android/camera/one/v2/OneCameraZslImpl$3;
.super Ljava/lang/Object;
.source "OneCameraZslImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/OneCameraZslImpl;-><init>(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera/util/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/OneCameraZslImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$3;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageMetadataChange(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;Ljava/lang/Object;Landroid/hardware/camera2/CaptureResult;)V
    .locals 6
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "result"    # Landroid/hardware/camera2/CaptureResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroid/hardware/camera2/CaptureResult;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<*>;"
    const/4 v3, 0x0

    .line 346
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$3;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-static {v1}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$500(Lcom/android/camera/one/v2/OneCameraZslImpl;)Lcom/android/camera/one/OneCamera$FocusStateListener;

    move-result-object v0

    .line 347
    .local v0, "listener":Lcom/android/camera/one/OneCamera$FocusStateListener;
    if-eqz v0, :cond_0

    .line 348
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 350
    invoke-virtual {p4, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 349
    invoke-static {v1}, Lcom/android/camera/one/v2/AutoFocusHelper;->stateFromCamera2State(I)Lcom/android/camera/one/OneCamera$AutoFocusState;

    move-result-object v1

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 351
    invoke-virtual {p4}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v4

    .line 348
    invoke-interface {v0, v1, v2, v4, v5}, Lcom/android/camera/one/OneCamera$FocusStateListener;->onFocusStatusUpdate(Lcom/android/camera/one/OneCamera$AutoFocusState;Landroid/graphics/PointF;J)V

    .line 353
    :cond_0
    return-void
.end method

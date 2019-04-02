.class Lcom/android/camera/captureintent/state/StateReadyForCapture$12;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateReadyForCapture;->registerEventHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/captureintent/stateful/EventHandler",
        "<",
        "Lcom/android/camera/captureintent/event/EventTapOnPreview;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$12;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventTapOnPreview;)Lcom/google/common/base/Optional;
    .locals 12
    .param p1, "event"    # Lcom/android/camera/captureintent/event/EventTapOnPreview;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/event/EventTapOnPreview;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    .line 380
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$12;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v6}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    .line 381
    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceOpenedCamera()Lcom/android/camera/async/RefCountBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;->getCameraCharacteristics()Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    .line 382
    .local v0, "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoExposureSupported()Z

    move-result v6

    if-nez v6, :cond_0

    .line 383
    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 384
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/captureintent/event/EventTapOnPreview;->getTapPoint()Landroid/graphics/Point;

    move-result-object v5

    .line 386
    .local v5, "tapPoint":Landroid/graphics/Point;
    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 387
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$12;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    sget-object v7, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-static {v6, v7}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$802(Lcom/android/camera/captureintent/state/StateReadyForCapture;Lcom/android/camera/one/OneCamera$AutoFocusState;)Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 388
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$12;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v6}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getFocusController()Lcom/android/camera/ui/focus/FocusController;

    move-result-object v6

    iget v7, v5, Landroid/graphics/Point;->x:I

    iget v8, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ui/focus/FocusController;->showActiveFocusAt(II)V

    .line 394
    :goto_0
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$12;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v6}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 395
    .local v2, "previewRect":Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$12;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v6}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    .line 396
    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/app/OrientationManager;->getDisplayRotation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v3

    .line 399
    .local v3, "rotationDegree":I
    const/4 v6, 0x2

    new-array v1, v6, [F

    .line 400
    .local v1, "points":[F
    iget v6, v5, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v6, v7

    aput v6, v1, v9

    .line 401
    iget v6, v5, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget v7, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v6, v7

    aput v6, v1, v11

    .line 404
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 405
    .local v4, "rotationMatrix":Landroid/graphics/Matrix;
    int-to-float v6, v3

    invoke-virtual {v4, v6, v10, v10}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 406
    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 409
    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v6, v7, :cond_1

    .line 410
    const/high16 v6, 0x3f800000    # 1.0f

    aget v7, v1, v9

    sub-float/2addr v6, v7

    aput v6, v1, v9

    .line 413
    :cond_1
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$12;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v6}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceOpenedCamera()Lcom/android/camera/async/RefCountBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;

    new-instance v7, Landroid/graphics/PointF;

    aget v8, v1, v9

    aget v9, v1, v11

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 414
    invoke-interface {v6, v7}, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;->triggerFocusAndMeterAtPoint(Landroid/graphics/PointF;)V

    .line 418
    .end local v1    # "points":[F
    .end local v2    # "previewRect":Landroid/graphics/RectF;
    .end local v3    # "rotationDegree":I
    .end local v4    # "rotationMatrix":Landroid/graphics/Matrix;
    .end local v5    # "tapPoint":Landroid/graphics/Point;
    :cond_2
    sget-object v6, Lcom/android/camera/captureintent/stateful/State;->NO_CHANGE:Lcom/google/common/base/Optional;

    return-object v6

    .line 390
    .restart local v5    # "tapPoint":Landroid/graphics/Point;
    :cond_3
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$12;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    sget-object v7, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-static {v6, v7}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$802(Lcom/android/camera/captureintent/state/StateReadyForCapture;Lcom/android/camera/one/OneCamera$AutoFocusState;)Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 391
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$12;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v6}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getFocusController()Lcom/android/camera/ui/focus/FocusController;

    move-result-object v6

    iget v7, v5, Landroid/graphics/Point;->x:I

    iget v8, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAt(II)V

    goto/16 :goto_0
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 377
    check-cast p1, Lcom/android/camera/captureintent/event/EventTapOnPreview;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateReadyForCapture$12;->processEvent(Lcom/android/camera/captureintent/event/EventTapOnPreview;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

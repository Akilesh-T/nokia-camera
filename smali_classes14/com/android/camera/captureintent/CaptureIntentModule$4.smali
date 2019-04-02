.class Lcom/android/camera/captureintent/CaptureIntentModule$4;
.super Ljava/lang/Object;
.source "CaptureIntentModule.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/captureintent/CaptureIntentModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/CaptureIntentModule;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/CaptureIntentModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/CaptureIntentModule;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/camera/captureintent/CaptureIntentModule$4;->this$0:Lcom/android/camera/captureintent/CaptureIntentModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 404
    new-instance v0, Lcom/android/camera/captureintent/CaptureIntentModule$4$1;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/CaptureIntentModule$4$1;-><init>(Lcom/android/camera/captureintent/CaptureIntentModule$4;)V

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPreviewFlipped()V
    .locals 0

    .prologue
    .line 400
    return-void
.end method

.method public onPreviewLayoutChanged(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 381
    new-instance v0, Lcom/android/camera/util/Size;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 382
    .local v0, "previewLayoutSize":Lcom/android/camera/util/Size;
    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModule$4;->this$0:Lcom/android/camera/captureintent/CaptureIntentModule;

    invoke-static {v1}, Lcom/android/camera/captureintent/CaptureIntentModule;->access$300(Lcom/android/camera/captureintent/CaptureIntentModule;)Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v1

    new-instance v2, Lcom/android/camera/captureintent/event/EventOnTextureViewLayoutChanged;

    invoke-direct {v2, v0}, Lcom/android/camera/captureintent/event/EventOnTextureViewLayoutChanged;-><init>(Lcom/android/camera/util/Size;)V

    invoke-interface {v1, v2}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 383
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule$4;->this$0:Lcom/android/camera/captureintent/CaptureIntentModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/captureintent/CaptureIntentModule;->access$602(Lcom/android/camera/captureintent/CaptureIntentModule;Z)Z

    .line 428
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule$4;->this$0:Lcom/android/camera/captureintent/CaptureIntentModule;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModule;->access$300(Lcom/android/camera/captureintent/CaptureIntentModule;)Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventOnSurfaceTextureAvailable;

    invoke-direct {v1, p1}, Lcom/android/camera/captureintent/event/EventOnSurfaceTextureAvailable;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 429
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule$4;->this$0:Lcom/android/camera/captureintent/CaptureIntentModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/captureintent/CaptureIntentModule;->access$602(Lcom/android/camera/captureintent/CaptureIntentModule;Z)Z

    .line 434
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule$4;->this$0:Lcom/android/camera/captureintent/CaptureIntentModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/captureintent/CaptureIntentModule;->access$702(Lcom/android/camera/captureintent/CaptureIntentModule;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 435
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule$4;->this$0:Lcom/android/camera/captureintent/CaptureIntentModule;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModule;->access$300(Lcom/android/camera/captureintent/CaptureIntentModule;)Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventOnSurfaceTextureDestroyed;

    invoke-direct {v1}, Lcom/android/camera/captureintent/event/EventOnSurfaceTextureDestroyed;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 442
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule$4;->this$0:Lcom/android/camera/captureintent/CaptureIntentModule;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModule;->access$300(Lcom/android/camera/captureintent/CaptureIntentModule;)Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventOnSurfaceTextureUpdated;

    invoke-direct {v1}, Lcom/android/camera/captureintent/event/EventOnSurfaceTextureUpdated;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 447
    return-void
.end method

.method public shouldAutoAdjustTransformMatrixOnLayout()Z
    .locals 1

    .prologue
    .line 387
    sget-boolean v0, Lcom/android/camera/captureintent/CaptureIntentConfig;->WORKAROUND_PREVIEW_STRETCH_BUG_NEXUS4:Z

    return v0
.end method

.method public useModuleListenerFirst()Z
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

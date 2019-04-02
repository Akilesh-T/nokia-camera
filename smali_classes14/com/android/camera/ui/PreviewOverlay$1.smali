.class Lcom/android/camera/ui/PreviewOverlay$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PreviewOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PreviewOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PreviewOverlay;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PreviewOverlay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/PreviewOverlay;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 374
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v2

    if-nez v2, :cond_1

    .line 387
    :cond_0
    :goto_0
    return v0

    .line 375
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$1100(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 378
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$1200(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 379
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;->onZoomIconClick()V

    .line 381
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 382
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2, v0}, Lcom/android/camera/ui/PreviewOverlay;->access$302(Lcom/android/camera/ui/PreviewOverlay;Z)Z

    .line 383
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    :cond_3
    move v0, v1

    .line 385
    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 314
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v1

    if-nez v1, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v0

    .line 315
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/PreviewOverlay;->access$200(Lcom/android/camera/ui/PreviewOverlay;)Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$200(Lcom/android/camera/ui/PreviewOverlay;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/PreviewOverlay;->access$302(Lcom/android/camera/ui/PreviewOverlay;Z)Z

    .line 318
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$400(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 321
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v1}, Lcom/android/camera/ui/PreviewOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/PreviewOverlay;->access$402(Lcom/android/camera/ui/PreviewOverlay;I)I

    .line 323
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/PreviewOverlay;->access$502(Lcom/android/camera/ui/PreviewOverlay;Z)Z

    .line 343
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/PreviewOverlay;->access$302(Lcom/android/camera/ui/PreviewOverlay;Z)Z

    .line 344
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$700(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$700(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->access$800(Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;)F

    move-result v0

    :goto_1
    invoke-static {v1, v0}, Lcom/android/camera/ui/PreviewOverlay;->access$602(Lcom/android/camera/ui/PreviewOverlay;F)F

    .line 345
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/PreviewOverlay;->access$600(Lcom/android/camera/ui/PreviewOverlay;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/PreviewOverlay;->access$902(Lcom/android/camera/ui/PreviewOverlay;F)F

    .line 346
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;->onZoomStart()V

    .line 347
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$700(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$700(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->showZoomUI()V

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/PreviewOverlay;->access$1000(Lcom/android/camera/ui/PreviewOverlay;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PreviewOverlay;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 344
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v0, 0x0

    .line 328
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/PreviewOverlay;->access$200(Lcom/android/camera/ui/PreviewOverlay;)Landroid/graphics/RectF;

    move-result-object v1

    if-nez v1, :cond_0

    .line 335
    :goto_0
    return v0

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/PreviewOverlay;->access$300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/PreviewOverlay;->access$200(Lcom/android/camera/ui/PreviewOverlay;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 331
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v1, v0}, Lcom/android/camera/ui/PreviewOverlay;->access$302(Lcom/android/camera/ui/PreviewOverlay;Z)Z

    .line 332
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 356
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v2

    if-nez v2, :cond_1

    .line 369
    :cond_0
    :goto_0
    return v0

    .line 357
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$1100(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 360
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$1200(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 361
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;->onZoomIconClick()V

    .line 363
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 364
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2, v0}, Lcom/android/camera/ui/PreviewOverlay;->access$302(Lcom/android/camera/ui/PreviewOverlay;Z)Z

    .line 365
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    :cond_3
    move v0, v1

    .line 367
    goto :goto_0
.end method

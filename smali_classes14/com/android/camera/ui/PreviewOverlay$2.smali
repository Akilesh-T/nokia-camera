.class Lcom/android/camera/ui/PreviewOverlay$2;
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
    .line 393
    iput-object p1, p0, Lcom/android/camera/ui/PreviewOverlay$2;->this$0:Lcom/android/camera/ui/PreviewOverlay;

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

    .line 423
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$2;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v2

    if-nez v2, :cond_1

    .line 435
    :cond_0
    :goto_0
    return v0

    .line 424
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$2;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$2;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$1100(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 427
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$2;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 428
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$2;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;->onZoomIconClick()V

    .line 429
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$2;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$1400(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$WideModeControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->ToggleWideMode()Z

    .line 430
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$2;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2, v0}, Lcom/android/camera/ui/PreviewOverlay;->access$302(Lcom/android/camera/ui/PreviewOverlay;Z)Z

    .line 431
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$2;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    :cond_2
    move v0, v1

    .line 433
    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$2;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 401
    :goto_0
    return v0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$2;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$1300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$2;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$1400(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$WideModeControl;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->isInRect(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$2;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/PreviewOverlay;->access$302(Lcom/android/camera/ui/PreviewOverlay;Z)Z

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$2;->this$0:Lcom/android/camera/ui/PreviewOverlay;

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

    .line 406
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$2;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v2

    if-nez v2, :cond_1

    .line 418
    :cond_0
    :goto_0
    return v0

    .line 407
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$2;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$2;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$1100(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 410
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$2;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 411
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$2;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;->onZoomIconClick()V

    .line 412
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$2;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$1400(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$WideModeControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->ToggleWideMode()Z

    .line 413
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$2;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2, v0}, Lcom/android/camera/ui/PreviewOverlay;->access$302(Lcom/android/camera/ui/PreviewOverlay;Z)Z

    .line 414
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$2;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    :cond_2
    move v0, v1

    .line 416
    goto :goto_0
.end method

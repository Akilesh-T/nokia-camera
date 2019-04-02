.class Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;
.super Landroid/view/ScaleGestureDetector;
.source "PreviewOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PreviewOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomGestureDetector"
.end annotation


# instance fields
.field private mDeltaX:F

.field private mDeltaY:F

.field private mIsCpuBoost:Z

.field private mPinchDistance:F

.field private mPostZoomRatio:F

.field final synthetic this$0:Lcom/android/camera/ui/PreviewOverlay;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/PreviewOverlay;)V
    .locals 2

    .prologue
    .line 799
    iput-object p1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    .line 800
    invoke-virtual {p1}, Lcom/android/camera/ui/PreviewOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/android/camera/ui/PreviewOverlay;->access$700(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 795
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->mIsCpuBoost:Z

    .line 801
    return-void
.end method

.method static synthetic access$2102(Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 792
    iput-boolean p1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->mIsCpuBoost:Z

    return p1
.end method


# virtual methods
.method public getAngle()F
    .locals 4

    .prologue
    .line 868
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->mDeltaY:F

    neg-float v0, v0

    float-to-double v0, v0

    iget v2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->mDeltaX:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 805
    iget-object v6, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v6}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v6

    if-nez v6, :cond_1

    move v2, v5

    .line 860
    :cond_0
    :goto_0
    return v2

    .line 808
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 809
    .local v2, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-le v6, v10, :cond_5

    .line 812
    iget-boolean v6, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->mIsCpuBoost:Z

    if-nez v6, :cond_2

    .line 813
    invoke-static {}, Lcom/android/camera/ui/PreviewOverlay;->access$2000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    const-string v7, "[Zoom] start CPU Boost - when multi-touch on the previewOverlay"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 815
    iput-boolean v10, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->mIsCpuBoost:Z

    .line 816
    const/16 v0, 0x7d0

    .line 817
    .local v0, "boostTime":I
    invoke-static {}, Lcom/android/camera/cpuboost/CpuBooster;->instance()Lcom/android/camera/cpuboost/BoostEngine;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/camera/cpuboost/BoostEngine;->boostInTime(I)Z

    .line 818
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 819
    .local v3, "handler":Landroid/os/Handler;
    new-instance v6, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector$1;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector$1;-><init>(Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;)V

    int-to-long v8, v0

    invoke-virtual {v3, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 829
    .end local v0    # "boostTime":I
    .end local v3    # "handler":Landroid/os/Handler;
    :cond_2
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->mDeltaX:F

    .line 830
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float v5, v6, v5

    iput v5, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->mDeltaY:F

    .line 833
    iget-object v5, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v5}, Lcom/android/camera/ui/PreviewOverlay;->access$700(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->access$2200(Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 834
    invoke-static {}, Lcom/android/camera/ui/PreviewOverlay;->access$2000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    const-string v6, "[Zoom] ZOOM by TOUCH"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 836
    iget-object v5, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v5}, Lcom/android/camera/ui/PreviewOverlay;->access$1300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 837
    iget-object v5, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v5, v10}, Lcom/android/camera/ui/PreviewOverlay;->access$2302(Lcom/android/camera/ui/PreviewOverlay;Z)Z

    .line 840
    :cond_3
    iget v5, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->mDeltaX:F

    iget v6, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->mDeltaX:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->mDeltaY:F

    iget v7, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->mDeltaY:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    .line 842
    .local v1, "distance":F
    iget v5, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->mPinchDistance:F

    cmpl-float v5, v5, v11

    if-nez v5, :cond_4

    .line 843
    invoke-static {}, Lcom/android/camera/ui/PreviewOverlay;->access$2000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    const-string v6, "[Zoom] ASSIGN value to mPinchDistance"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 844
    iput v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->mPinchDistance:F

    .line 845
    iget-object v5, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v5}, Lcom/android/camera/ui/PreviewOverlay;->access$700(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->access$800(Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;)F

    move-result v5

    iput v5, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->mPostZoomRatio:F

    goto/16 :goto_0

    .line 847
    :cond_4
    iget v5, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->mPinchDistance:F

    div-float v4, v1, v5

    .line 849
    .local v4, "sf":F
    invoke-static {}, Lcom/android/camera/ui/PreviewOverlay;->access$2000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Zoom] distance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mPinchDistance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->mPinchDistance:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sf:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 851
    iget-object v5, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v5}, Lcom/android/camera/ui/PreviewOverlay;->access$700(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->mPostZoomRatio:F

    mul-float/2addr v6, v4

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->setZoomByScaleRatio(F)V

    goto/16 :goto_0

    .line 857
    .end local v1    # "distance":F
    .end local v4    # "sf":F
    :cond_5
    iput v11, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->mPinchDistance:F

    .line 858
    iget-object v6, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v6}, Lcom/android/camera/ui/PreviewOverlay;->access$700(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->access$2202(Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;Z)Z

    goto/16 :goto_0
.end method

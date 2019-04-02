.class Lcom/android/camera/widget/FilmstripView$FilmstripGestures;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/FilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripGestures"
.end annotation


# static fields
.field private static final SCROLL_DIR_HORIZONTAL:I = 0x2

.field private static final SCROLL_DIR_NONE:I = 0x0

.field private static final SCROLL_DIR_VERTICAL:I = 0x1


# instance fields
.field private mCurrentlyScalingItem:Lcom/android/camera/widget/FilmstripView$ViewItem;

.field private mLastDownTime:J

.field private mLastDownY:F

.field private mMaxScale:F

.field private mScaleTrend:F

.field private mScrollingDirection:I

.field final synthetic this$0:Lcom/android/camera/widget/FilmstripView;


# direct methods
.method private constructor <init>(Lcom/android/camera/widget/FilmstripView;)V
    .locals 1

    .prologue
    .line 2616
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2624
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->mScrollingDirection:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/widget/FilmstripView;Lcom/android/camera/widget/FilmstripView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/widget/FilmstripView;
    .param p2, "x1"    # Lcom/android/camera/widget/FilmstripView$1;

    .prologue
    .line 2616
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;-><init>(Lcom/android/camera/widget/FilmstripView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2653
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 2680
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->mLastDownTime:J

    .line 2681
    iput p2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->mLastDownY:F

    .line 2682
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->access$1000(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;)V

    .line 2683
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->stopScrolling(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2687
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFling(FF)Z
    .locals 9
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    const/16 v8, 0x190

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2871
    iget-object v6, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v6}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v0, v6, v7

    .line 2872
    .local v0, "currItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-nez v0, :cond_1

    .line 2928
    :cond_0
    :goto_0
    return v4

    .line 2876
    :cond_1
    iget-object v6, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v6}, Lcom/android/camera/widget/FilmstripView;->access$5000(Lcom/android/camera/widget/FilmstripView;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2878
    iget-object v4, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v4}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->flingInsideZoomView(FF)V

    move v4, v5

    .line 2879
    goto :goto_0

    .line 2881
    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    move v4, v5

    .line 2883
    goto :goto_0

    .line 2888
    :cond_3
    iget-object v6, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v6}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_5

    .line 2889
    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v1

    .line 2891
    .local v1, "currItemCenterX":I
    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-lez v6, :cond_7

    .line 2892
    iget-object v6, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v6}, Lcom/android/camera/widget/FilmstripView;->access$2100(Lcom/android/camera/widget/FilmstripView;)I

    move-result v6

    if-le v6, v1, :cond_4

    .line 2895
    iget-object v4, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v4}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v4

    invoke-virtual {v4, v1, v8, v5}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->scrollToPosition(IIZ)V

    move v4, v5

    .line 2897
    goto :goto_0

    .line 2899
    :cond_4
    iget-object v6, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v6}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v6

    aget-object v3, v6, v5

    .line 2900
    .local v3, "prevItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-eqz v3, :cond_0

    .line 2903
    iget-object v4, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v4}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v4

    .line 2904
    invoke-virtual {v3}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v6

    .line 2903
    invoke-virtual {v4, v6, v8, v5}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->scrollToPosition(IIZ)V

    .line 2925
    .end local v1    # "currItemCenterX":I
    .end local v3    # "prevItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v4}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v4

    const v6, 0x3f333333    # 0.7f

    cmpl-float v4, v4, v6

    if-nez v4, :cond_6

    .line 2926
    iget-object v4, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v4}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->fling(F)V

    :cond_6
    move v4, v5

    .line 2928
    goto :goto_0

    .line 2906
    .restart local v1    # "currItemCenterX":I
    :cond_7
    iget-object v6, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v6}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->stopScrolling(Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2907
    iget-object v6, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v6}, Lcom/android/camera/widget/FilmstripView;->access$2100(Lcom/android/camera/widget/FilmstripView;)I

    move-result v6

    if-ge v6, v1, :cond_8

    .line 2910
    iget-object v4, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v4}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v4

    invoke-virtual {v4, v1, v8, v5}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->scrollToPosition(IIZ)V

    move v4, v5

    .line 2912
    goto/16 :goto_0

    .line 2914
    :cond_8
    iget-object v6, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v6}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v6

    const/4 v7, 0x3

    aget-object v2, v6, v7

    .line 2915
    .local v2, "nextItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-eqz v2, :cond_0

    .line 2918
    iget-object v4, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v4}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v4

    .line 2919
    invoke-virtual {v2}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v6

    .line 2918
    invoke-virtual {v4, v6, v8, v5}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->scrollToPosition(IIZ)V

    goto :goto_1
.end method

.method public onLongPress(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2754
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$1700(Lcom/android/camera/widget/FilmstripView;)I

    move-result v0

    .line 2755
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2759
    :goto_0
    return-void

    .line 2758
    :cond_0
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$1600(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;->onFocusedDataLongPressed(I)V

    goto :goto_0
.end method

.method public onMouseScroll(FF)Z
    .locals 3
    .param p1, "hscroll"    # F
    .param p2, "vscroll"    # F

    .prologue
    const/high16 v1, 0x43000000    # 128.0f

    const/4 v2, 0x0

    .line 2849
    mul-float/2addr p1, v1

    .line 2850
    mul-float/2addr p2, v1

    .line 2852
    cmpl-float v1, p2, v2

    if-eqz v1, :cond_0

    .line 2853
    move v0, p2

    .line 2858
    .local v0, "scroll":F
    :goto_0
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$3400(Lcom/android/camera/widget/FilmstripView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2859
    neg-float v1, v0

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->onFling(FF)Z

    .line 2866
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 2855
    .end local v0    # "scroll":F
    :cond_0
    move v0, p1

    .restart local v0    # "scroll":F
    goto :goto_0

    .line 2860
    :cond_1
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$5000(Lcom/android/camera/widget/FilmstripView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2861
    invoke-virtual {p0, v2, v2, p1, p2}, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->onScroll(FFFF)Z

    goto :goto_1

    .line 2863
    :cond_2
    invoke-virtual {p0, v2, v2, v0, v2}, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->onScroll(FFFF)Z

    goto :goto_1
.end method

.method public onScale(FFF)Z
    .locals 1
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F
    .param p3, "scale"    # F

    .prologue
    .line 2951
    const/4 v0, 0x0

    return v0
.end method

.method public onScaleBegin(FF)Z
    .locals 4
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2933
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$6200(Lcom/android/camera/widget/FilmstripView;)V

    .line 2937
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->mCurrentlyScalingItem:Lcom/android/camera/widget/FilmstripView$ViewItem;

    .line 2938
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->mCurrentlyScalingItem:Lcom/android/camera/widget/FilmstripView$ViewItem;

    if-eqz v0, :cond_0

    .line 2939
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->mCurrentlyScalingItem:Lcom/android/camera/widget/FilmstripView$ViewItem;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->lockAtFullOpacity()V

    .line 2942
    :cond_0
    iput v2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->mScaleTrend:F

    .line 2945
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->access$6300(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;Z)F

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->mMaxScale:F

    .line 2946
    return v3
.end method

.method public onScaleEnd()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 3025
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->mCurrentlyScalingItem:Lcom/android/camera/widget/FilmstripView$ViewItem;

    if-eqz v0, :cond_0

    .line 3026
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->mCurrentlyScalingItem:Lcom/android/camera/widget/FilmstripView$ViewItem;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->unlockOpacity()V

    .line 3029
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView;->zoomAtIndexChanged()V

    .line 3030
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v0

    const v1, 0x3f8ccccd    # 1.1f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 3046
    :goto_0
    return-void

    .line 3033
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->access$1200(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;Z)V

    .line 3034
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 3035
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->goToFilmstrip()V

    .line 3045
    :goto_1
    iput v2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->mScaleTrend:F

    goto :goto_0

    .line 3036
    :cond_2
    iget v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->mScaleTrend:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 3037
    :cond_3
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$5000(Lcom/android/camera/widget/FilmstripView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3038
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0, v2}, Lcom/android/camera/widget/FilmstripView;->access$102(Lcom/android/camera/widget/FilmstripView;F)F

    .line 3039
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$4900(Lcom/android/camera/widget/FilmstripView;)V

    .line 3041
    :cond_4
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->goToFullScreen()V

    goto :goto_1

    .line 3043
    :cond_5
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->goToFilmstrip()V

    goto :goto_1
.end method

.method public onScroll(FFFF)Z
    .locals 16
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "dx"    # F
    .param p4, "dy"    # F

    .prologue
    .line 2763
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v9, v5, v6

    .line 2764
    .local v9, "currItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-nez v9, :cond_0

    .line 2765
    const/4 v5, 0x0

    .line 2842
    :goto_0
    return v5

    .line 2768
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$6200(Lcom/android/camera/widget/FilmstripView;)V

    .line 2770
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$5000(Lcom/android/camera/widget/FilmstripView;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2771
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v2, v5, v6

    .line 2772
    .local v2, "curr":Lcom/android/camera/widget/FilmstripView$ViewItem;
    invoke-virtual {v2}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getTranslationX()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v6}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v6

    mul-float/2addr v5, v6

    sub-float v3, v5, p3

    .line 2773
    .local v3, "transX":F
    invoke-virtual {v2}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getTranslationY()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v6}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v6

    mul-float/2addr v5, v6

    sub-float v4, v5, p4

    .line 2774
    .local v4, "transY":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v6}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v7}, Lcom/android/camera/widget/FilmstripView;->access$4100(Lcom/android/camera/widget/FilmstripView;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    .line 2775
    invoke-static {v8}, Lcom/android/camera/widget/FilmstripView;->access$4100(Lcom/android/camera/widget/FilmstripView;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 2774
    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/widget/FilmstripView$ViewItem;->updateTransform(FFFFII)V

    .line 2776
    const/4 v5, 0x1

    goto :goto_0

    .line 2778
    .end local v2    # "curr":Lcom/android/camera/widget/FilmstripView$ViewItem;
    .end local v3    # "transX":F
    .end local v4    # "transY":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v5

    div-float v5, p3, v5

    float-to-int v11, v5

    .line 2780
    .local v11, "deltaX":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->stopScrolling(Z)Z

    .line 2781
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$5700(Lcom/android/camera/widget/FilmstripView;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2782
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/widget/FilmstripView;->access$5702(Lcom/android/camera/widget/FilmstripView;Z)Z

    .line 2783
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    .line 2784
    invoke-static {v6}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v6

    .line 2783
    invoke-static {v5, v6}, Lcom/android/camera/widget/FilmstripView;->access$6102(Lcom/android/camera/widget/FilmstripView;I)I

    .line 2786
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$3300(Lcom/android/camera/widget/FilmstripView;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2788
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->mScrollingDirection:I

    if-nez v5, :cond_3

    .line 2789
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    const/4 v5, 0x2

    :goto_1
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->mScrollingDirection:I

    .line 2792
    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->mScrollingDirection:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 2793
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$2100(Lcom/android/camera/widget/FilmstripView;)I

    move-result v5

    invoke-virtual {v9}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v6

    if-ne v5, v6, :cond_5

    invoke-virtual {v9}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x0

    cmpg-float v5, p3, v5

    if-gez v5, :cond_5

    .line 2796
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/widget/FilmstripView;->access$5702(Lcom/android/camera/widget/FilmstripView;Z)Z

    .line 2797
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->mScrollingDirection:I

    .line 2798
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2789
    :cond_4
    const/4 v5, 0x1

    goto :goto_1

    .line 2800
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v5

    int-to-float v6, v11

    invoke-virtual {v5, v6}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->scroll(F)V

    .line 2840
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-virtual {v5}, Lcom/android/camera/widget/FilmstripView;->invalidate()V

    .line 2842
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2803
    :cond_7
    const/4 v12, 0x0

    .line 2804
    .local v12, "hit":I
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 2805
    .local v13, "hitRect":Landroid/graphics/Rect;
    :goto_3
    const/4 v5, 0x5

    if-ge v12, v5, :cond_a

    .line 2806
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v5

    aget-object v5, v5, v12

    if-nez v5, :cond_9

    .line 2805
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 2809
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v5

    aget-object v5, v5, v12

    invoke-virtual {v5, v13}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getHitRect(Landroid/graphics/Rect;)V

    .line 2810
    move/from16 v0, p1

    float-to-int v5, v0

    move/from16 v0, p2

    float-to-int v6, v0

    invoke-virtual {v13, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2814
    :cond_a
    const/4 v5, 0x5

    if-ne v12, v5, :cond_b

    .line 2816
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2819
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$3700(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    .line 2820
    invoke-static {v6}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v6

    aget-object v6, v6, v12

    invoke-virtual {v6}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v6

    .line 2819
    invoke-interface {v5, v6}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v10

    .line 2821
    .local v10, "data":Lcom/android/camera/data/FilmstripItem;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v5

    aget-object v5, v5, v12

    invoke-virtual {v5}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getTranslationY()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v6}, Lcom/android/camera/widget/FilmstripView;->access$100(Lcom/android/camera/widget/FilmstripView;)F

    move-result v6

    div-float v6, p4, v6

    sub-float v4, v5, v6

    .line 2822
    .restart local v4    # "transY":F
    invoke-interface {v10}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/FilmstripItemAttributes;->canSwipeAway()Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_c

    .line 2824
    const/4 v4, 0x0

    .line 2826
    :cond_c
    invoke-interface {v10}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/FilmstripItemAttributes;->canSwipeAway()Z

    move-result v5

    if-nez v5, :cond_d

    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_d

    .line 2828
    const/4 v4, 0x0

    .line 2830
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v5

    aget-object v5, v5, v12

    invoke-virtual {v5, v4}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setTranslationY(F)V

    goto/16 :goto_2

    .line 2832
    .end local v4    # "transY":F
    .end local v10    # "data":Lcom/android/camera/data/FilmstripItem;
    .end local v12    # "hit":I
    .end local v13    # "hitRect":Landroid/graphics/Rect;
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$3400(Lcom/android/camera/widget/FilmstripView;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2833
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    if-eqz v5, :cond_f

    if-gez v11, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$2100(Lcom/android/camera/widget/FilmstripView;)I

    move-result v5

    .line 2834
    invoke-virtual {v9}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v6

    if-gt v5, v6, :cond_10

    invoke-virtual {v9}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v5

    if-nez v5, :cond_10

    .line 2835
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2838
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v5}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v5

    int-to-double v6, v11

    const-wide v14, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v6, v14

    double-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->scroll(F)V

    goto/16 :goto_2
.end method

.method public onSingleTapUp(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x1

    .line 2632
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v0, v2, v3

    .line 2633
    .local v0, "centerItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripView;->access$3300(Lcom/android/camera/widget/FilmstripView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2634
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/widget/FilmstripView$ViewItem;->areaContains(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2635
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->goToFullScreen()V

    .line 2648
    :goto_0
    return v1

    .line 2638
    :cond_0
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripView;->access$3400(Lcom/android/camera/widget/FilmstripView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2639
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripView;->access$3800(Lcom/android/camera/widget/FilmstripView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2640
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripView;->access$3900(Lcom/android/camera/widget/FilmstripView;)V

    .line 2641
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripView;->access$2900(Lcom/android/camera/widget/FilmstripView;)V

    goto :goto_0

    .line 2643
    :cond_1
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripView;->access$2700(Lcom/android/camera/widget/FilmstripView;)V

    .line 2644
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripView;->access$4300(Lcom/android/camera/widget/FilmstripView;)V

    goto :goto_0

    .line 2648
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onUp(FF)Z
    .locals 14
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2692
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v8}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v1, v8, v9

    .line 2693
    .local v1, "currItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-nez v1, :cond_0

    .line 2694
    const/4 v8, 0x0

    .line 2749
    :goto_0
    return v8

    .line 2696
    :cond_0
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v8}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->isZoomAnimationRunning()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v8}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->isFlingAnimationRunning()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2697
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 2699
    :cond_2
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v8}, Lcom/android/camera/widget/FilmstripView;->access$5000(Lcom/android/camera/widget/FilmstripView;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2700
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v8}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->access$4400(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;)V

    .line 2701
    const/4 v8, 0x1

    goto :goto_0

    .line 2703
    :cond_3
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-virtual {v8}, Lcom/android/camera/widget/FilmstripView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float v4, v8, v9

    .line 2704
    .local v4, "promoteHeight":F
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-virtual {v8}, Lcom/android/camera/widget/FilmstripView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3dcccccd    # 0.1f

    mul-float v7, v8, v9

    .line 2705
    .local v7, "velocityPromoteHeight":F
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/camera/widget/FilmstripView;->access$5702(Lcom/android/camera/widget/FilmstripView;Z)Z

    .line 2706
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->mScrollingDirection:I

    .line 2708
    iget v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->mLastDownY:F

    sub-float v8, p2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 2709
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->mLastDownTime:J

    sub-long/2addr v10, v12

    long-to-float v9, v10

    div-float v5, v8, v9

    .line 2710
    .local v5, "speedY":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v8, 0x5

    if-ge v2, v8, :cond_a

    .line 2711
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v8}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v8

    aget-object v8, v8, v2

    if-nez v8, :cond_5

    .line 2710
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2714
    :cond_5
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v8}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getTranslationY()F

    move-result v6

    .line 2715
    .local v6, "transY":F
    const/4 v8, 0x0

    cmpl-float v8, v6, v8

    if-eqz v8, :cond_4

    .line 2718
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v8}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v3

    .line 2720
    .local v3, "index":I
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v8}, Lcom/android/camera/widget/FilmstripView;->access$3700(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v8

    invoke-interface {v8, v3}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/data/FilmstripItemAttributes;->canSwipeAway()Z

    move-result v8

    if-eqz v8, :cond_7

    cmpl-float v8, v6, v4

    if-gtz v8, :cond_6

    cmpl-float v8, v6, v7

    if-lez v8, :cond_7

    const/high16 v8, 0x40600000    # 3.5f

    cmpl-float v8, v5, v8

    if-lez v8, :cond_7

    .line 2723
    :cond_6
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v8, v3}, Lcom/android/camera/widget/FilmstripView;->access$5800(Lcom/android/camera/widget/FilmstripView;I)V

    goto :goto_2

    .line 2724
    :cond_7
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v8}, Lcom/android/camera/widget/FilmstripView;->access$3700(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v8

    invoke-interface {v8, v3}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/data/FilmstripItemAttributes;->canSwipeAway()Z

    move-result v8

    if-eqz v8, :cond_9

    neg-float v8, v4

    cmpg-float v8, v6, v8

    if-ltz v8, :cond_8

    neg-float v8, v7

    cmpg-float v8, v6, v8

    if-gez v8, :cond_9

    const/high16 v8, 0x40600000    # 3.5f

    cmpl-float v8, v5, v8

    if-lez v8, :cond_9

    .line 2727
    :cond_8
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v8, v3}, Lcom/android/camera/widget/FilmstripView;->access$5900(Lcom/android/camera/widget/FilmstripView;I)V

    goto :goto_2

    .line 2730
    :cond_9
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    iget-object v9, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v9}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v9

    aget-object v9, v9, v2

    invoke-static {v8, v9}, Lcom/android/camera/widget/FilmstripView;->access$6000(Lcom/android/camera/widget/FilmstripView;Lcom/android/camera/widget/FilmstripView$ViewItem;)V

    goto :goto_2

    .line 2735
    .end local v3    # "index":I
    .end local v6    # "transY":F
    :cond_a
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v8}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v1, v8, v9

    .line 2736
    if-nez v1, :cond_b

    .line 2737
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 2740
    :cond_b
    invoke-virtual {v1}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v0

    .line 2741
    .local v0, "currId":I
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v8}, Lcom/android/camera/widget/FilmstripView;->access$6100(Lcom/android/camera/widget/FilmstripView;)I

    move-result v8

    if-nez v8, :cond_c

    if-eqz v0, :cond_c

    .line 2745
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v8}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->goToFilmstrip()V

    .line 2746
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v8, v0}, Lcom/android/camera/widget/FilmstripView;->access$6102(Lcom/android/camera/widget/FilmstripView;I)I

    .line 2748
    :cond_c
    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v8}, Lcom/android/camera/widget/FilmstripView;->access$2400(Lcom/android/camera/widget/FilmstripView;)V

    .line 2749
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

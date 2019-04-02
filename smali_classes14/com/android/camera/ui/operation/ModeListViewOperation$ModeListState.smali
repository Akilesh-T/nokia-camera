.class public abstract Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;
.super Ljava/lang/Object;
.source "ModeListViewOperation.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/operation/ModeListViewOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ModeListState"
.end annotation


# instance fields
.field protected mCurrentAnimationEffects:Lcom/android/camera/widget/AnimationEffects;

.field final synthetic this$0:Lcom/android/camera/ui/operation/ModeListViewOperation;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/operation/ModeListViewOperation;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/ui/operation/ModeListViewOperation;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->this$0:Lcom/android/camera/ui/operation/ModeListViewOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->mCurrentAnimationEffects:Lcom/android/camera/widget/AnimationEffects;

    return-void
.end method

.method private isInBottomBar(I)Z
    .locals 5
    .param p1, "y"    # I

    .prologue
    .line 111
    iget-object v3, p0, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->this$0:Lcom/android/camera/ui/operation/ModeListViewOperation;

    invoke-virtual {v3}, Lcom/android/camera/ui/operation/ModeListViewOperation;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->is18x9Layout()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f090034

    :goto_0
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 112
    .local v0, "barH":I
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 113
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->this$0:Lcom/android/camera/ui/operation/ModeListViewOperation;

    invoke-static {v3}, Lcom/android/camera/ui/operation/ModeListViewOperation;->access$000(Lcom/android/camera/ui/operation/ModeListViewOperation;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 114
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 116
    .local v1, "displayH":I
    sub-int v3, v1, v0

    if-le p1, v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 111
    .end local v0    # "barH":I
    .end local v1    # "displayH":I
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    :cond_0
    const v3, 0x7f090033

    goto :goto_0

    .line 116
    .restart local v0    # "barH":I
    .restart local v1    # "displayH":I
    .restart local v2    # "metrics":Landroid/util/DisplayMetrics;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getCurrentAnimationEffects()Lcom/android/camera/widget/AnimationEffects;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->mCurrentAnimationEffects:Lcom/android/camera/widget/AnimationEffects;

    return-object v0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public hideAnimated()V
    .locals 0

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->hide()V

    .line 205
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public onCurrentState()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->this$0:Lcom/android/camera/ui/operation/ModeListViewOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation;->showSettingsClingIfEnabled(Z)V

    .line 80
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public onItemSelected(Lcom/android/camera/ui/operation/ModeSelectorItemOperation;)V
    .locals 0
    .param p1, "selectedItem"    # Lcom/android/camera/ui/operation/ModeSelectorItemOperation;

    .prologue
    .line 181
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 231
    return-void
.end method

.method public onMenuPressed()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 216
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 138
    return-void
.end method

.method public shouldHandleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->isInBottomBar(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldHandleVisibilityChange(I)Z
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public showSwitcherHint()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public startModeSelectionAnimation()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.class Lcom/android/camera/ui/ModeListView$SelectedState;
.super Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;
.source "ModeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ModeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ModeListView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ModeListView;Lcom/android/camera/ui/operation/ModeSelectorItemOperation;)V
    .locals 10
    .param p2, "selectedItem"    # Lcom/android/camera/ui/operation/ModeSelectorItemOperation;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 668
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$SelectedState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;-><init>(Lcom/android/camera/ui/operation/ModeListViewOperation;)V

    .line 669
    invoke-virtual {p2}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->getModeId()I

    move-result v5

    .line 671
    .local v5, "modeId":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-static {p1}, Lcom/android/camera/ui/ModeListView;->access$1100(Lcom/android/camera/ui/ModeListView;)[Lcom/android/camera/ui/ModeSelectorItem;

    move-result-object v1

    array-length v1, v1

    if-ge v6, v1, :cond_0

    .line 672
    invoke-static {p1}, Lcom/android/camera/ui/ModeListView;->access$1100(Lcom/android/camera/ui/ModeListView;)[Lcom/android/camera/ui/ModeSelectorItem;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1, v8}, Lcom/android/camera/ui/ModeSelectorItem;->setSelected(Z)V

    .line 671
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 675
    :cond_0
    new-instance v0, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;-><init>(Lcom/android/camera/ui/ModeListView;)V

    .line 676
    .local v0, "effect":Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;
    invoke-static {p1}, Lcom/android/camera/ui/ModeListView;->access$3100(Lcom/android/camera/ui/ModeListView;)I

    move-result v1

    invoke-static {p1}, Lcom/android/camera/ui/ModeListView;->access$3200(Lcom/android/camera/ui/ModeListView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->setSize(II)V

    .line 680
    const/4 v1, 0x2

    new-array v7, v1, [I

    .line 682
    .local v7, "location":[I
    invoke-virtual {p2, v7}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->getIconCenterLocationInWindow([I)V

    .line 683
    aget v3, v7, v8

    .line 684
    .local v3, "iconX":I
    aget v4, v7, v9

    .line 686
    .local v4, "iconY":I
    invoke-virtual {p1, v7}, Lcom/android/camera/ui/ModeListView;->getLocationInWindow([I)V

    .line 688
    aget v1, v7, v8

    sub-int/2addr v3, v1

    .line 689
    aget v1, v7, v9

    sub-int/2addr v4, v1

    .line 691
    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->setAnimationStartingPosition(II)V

    .line 692
    invoke-virtual {p2}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->getHighlightColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->setModeSpecificColor(I)V

    .line 693
    iget-object v1, p1, Lcom/android/camera/ui/ModeListView;->mScreenShotProvider:Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;

    if-eqz v1, :cond_1

    .line 694
    iget-object v1, p1, Lcom/android/camera/ui/ModeListView;->mScreenShotProvider:Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;

    const/4 v2, 0x4

    .line 695
    invoke-interface {v1, v2}, Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;->getPreviewFrame(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/ui/ModeListView;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    .line 696
    invoke-virtual {v2}, Lcom/android/camera/CaptureLayoutHelper;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 694
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->setBackground(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    .line 697
    iget-object v1, p1, Lcom/android/camera/ui/ModeListView;->mScreenShotProvider:Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;

    invoke-interface {v1}, Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;->getPreviewOverlayAndControls()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->setBackgroundOverlay(Landroid/graphics/Bitmap;)V

    .line 699
    :cond_1
    iput-object v0, p0, Lcom/android/camera/ui/ModeListView$SelectedState;->mCurrentAnimationEffects:Lcom/android/camera/widget/AnimationEffects;

    .line 700
    const/4 v1, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;->startFadeoutAnimation(Landroid/animation/Animator$AnimatorListener;Lcom/android/camera/ui/operation/ModeSelectorItemOperation;III)V

    .line 701
    invoke-virtual {p1}, Lcom/android/camera/ui/ModeListView;->invalidate()V

    .line 702
    return-void
.end method

.method static synthetic access$3302(Lcom/android/camera/ui/ModeListView$SelectedState;Lcom/android/camera/widget/AnimationEffects;)Lcom/android/camera/widget/AnimationEffects;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView$SelectedState;
    .param p1, "x1"    # Lcom/android/camera/widget/AnimationEffects;

    .prologue
    .line 667
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$SelectedState;->mCurrentAnimationEffects:Lcom/android/camera/widget/AnimationEffects;

    return-object p1
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$SelectedState;->mCurrentAnimationEffects:Lcom/android/camera/widget/AnimationEffects;

    invoke-virtual {v0}, Lcom/android/camera/widget/AnimationEffects;->cancelAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 723
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ModeListView$SelectedState;->mCurrentAnimationEffects:Lcom/android/camera/widget/AnimationEffects;

    .line 724
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$SelectedState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/ModeListView$FullyHiddenState;

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView$SelectedState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-direct {v1, v2}, Lcom/android/camera/ui/ModeListView$FullyHiddenState;-><init>(Lcom/android/camera/ui/ModeListView;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    .line 726
    :cond_0
    return-void
.end method

.method public shouldHandleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 706
    const/4 v0, 0x0

    return v0
.end method

.method public startModeSelectionAnimation()V
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$SelectedState;->mCurrentAnimationEffects:Lcom/android/camera/widget/AnimationEffects;

    new-instance v1, Lcom/android/camera/ui/ModeListView$SelectedState$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ModeListView$SelectedState$1;-><init>(Lcom/android/camera/ui/ModeListView$SelectedState;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/AnimationEffects;->startAnimation(Landroid/animation/Animator$AnimatorListener;)V

    .line 718
    return-void
.end method

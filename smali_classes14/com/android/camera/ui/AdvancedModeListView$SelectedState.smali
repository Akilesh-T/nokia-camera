.class Lcom/android/camera/ui/AdvancedModeListView$SelectedState;
.super Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;
.source "AdvancedModeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/AdvancedModeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/AdvancedModeListView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/AdvancedModeListView;Lcom/android/camera/ui/operation/ModeSelectorItemOperation;)V
    .locals 10
    .param p2, "selectedItem"    # Lcom/android/camera/ui/operation/ModeSelectorItemOperation;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 334
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedModeListView$SelectedState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;-><init>(Lcom/android/camera/ui/operation/ModeListViewOperation;)V

    .line 335
    invoke-virtual {p2}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->getModeId()I

    move-result v5

    .line 337
    .local v5, "modeId":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-static {p1}, Lcom/android/camera/ui/AdvancedModeListView;->access$800(Lcom/android/camera/ui/AdvancedModeListView;)[Lcom/android/camera/ui/AdvancedModeItem;

    move-result-object v1

    array-length v1, v1

    if-ge v6, v1, :cond_1

    .line 338
    invoke-static {p1}, Lcom/android/camera/ui/AdvancedModeListView;->access$800(Lcom/android/camera/ui/AdvancedModeListView;)[Lcom/android/camera/ui/AdvancedModeItem;

    move-result-object v1

    aget-object v1, v1, v6

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/camera/ui/AdvancedModeListView;->access$800(Lcom/android/camera/ui/AdvancedModeListView;)[Lcom/android/camera/ui/AdvancedModeItem;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1, v8}, Lcom/android/camera/ui/AdvancedModeItem;->setSelected(Z)V

    .line 337
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 341
    :cond_1
    new-instance v0, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;-><init>(Lcom/android/camera/ui/AdvancedModeListView;)V

    .line 342
    .local v0, "effect":Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;
    invoke-static {p1}, Lcom/android/camera/ui/AdvancedModeListView;->access$900(Lcom/android/camera/ui/AdvancedModeListView;)I

    move-result v1

    invoke-static {p1}, Lcom/android/camera/ui/AdvancedModeListView;->access$1000(Lcom/android/camera/ui/AdvancedModeListView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->setSize(II)V

    .line 346
    const/4 v1, 0x2

    new-array v7, v1, [I

    .line 348
    .local v7, "location":[I
    invoke-virtual {p2, v7}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->getIconCenterLocationInWindow([I)V

    .line 349
    aget v3, v7, v8

    .line 350
    .local v3, "iconX":I
    aget v4, v7, v9

    .line 351
    .local v4, "iconY":I
    invoke-static {p1}, Lcom/android/camera/ui/AdvancedModeListView;->access$1100(Lcom/android/camera/ui/AdvancedModeListView;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 364
    :goto_1
    invoke-virtual {p1, v7}, Lcom/android/camera/ui/AdvancedModeListView;->getLocationInWindow([I)V

    .line 366
    aget v1, v7, v8

    sub-int/2addr v3, v1

    .line 367
    aget v1, v7, v9

    sub-int/2addr v4, v1

    .line 369
    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->setAnimationStartingPosition(II)V

    .line 370
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->setModeSpecificColor(I)V

    .line 377
    iput-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$SelectedState;->mCurrentAnimationEffects:Lcom/android/camera/widget/AnimationEffects;

    .line 378
    const/4 v1, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;->startFadeoutAnimation(Landroid/animation/Animator$AnimatorListener;Lcom/android/camera/ui/operation/ModeSelectorItemOperation;III)V

    .line 379
    invoke-virtual {p1}, Lcom/android/camera/ui/AdvancedModeListView;->invalidate()V

    .line 380
    return-void

    .line 353
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->getIconDrawableSize()I

    move-result v1

    sub-int/2addr v4, v1

    .line 354
    goto :goto_1

    .line 356
    :sswitch_1
    invoke-virtual {p2}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->getIconDrawableSize()I

    move-result v1

    sub-int/2addr v4, v1

    .line 357
    invoke-virtual {p2}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->getIconDrawableSize()I

    move-result v1

    sub-int/2addr v3, v1

    .line 358
    goto :goto_1

    .line 360
    :sswitch_2
    invoke-virtual {p2}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->getIconDrawableSize()I

    move-result v1

    sub-int/2addr v3, v1

    goto :goto_1

    .line 351
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic access$1202(Lcom/android/camera/ui/AdvancedModeListView$SelectedState;Lcom/android/camera/widget/AnimationEffects;)Lcom/android/camera/widget/AnimationEffects;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedModeListView$SelectedState;
    .param p1, "x1"    # Lcom/android/camera/widget/AnimationEffects;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedModeListView$SelectedState;->mCurrentAnimationEffects:Lcom/android/camera/widget/AnimationEffects;

    return-object p1
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$SelectedState;->mCurrentAnimationEffects:Lcom/android/camera/widget/AnimationEffects;

    invoke-virtual {v0}, Lcom/android/camera/widget/AnimationEffects;->cancelAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$SelectedState;->mCurrentAnimationEffects:Lcom/android/camera/widget/AnimationEffects;

    .line 402
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$SelectedState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;

    iget-object v2, p0, Lcom/android/camera/ui/AdvancedModeListView$SelectedState;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-direct {v1, v2}, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;-><init>(Lcom/android/camera/ui/AdvancedModeListView;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    .line 404
    :cond_0
    return-void
.end method

.method public shouldHandleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public startModeSelectionAnimation()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$SelectedState;->mCurrentAnimationEffects:Lcom/android/camera/widget/AnimationEffects;

    new-instance v1, Lcom/android/camera/ui/AdvancedModeListView$SelectedState$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/AdvancedModeListView$SelectedState$1;-><init>(Lcom/android/camera/ui/AdvancedModeListView$SelectedState;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/AnimationEffects;->startAnimation(Landroid/animation/Animator$AnimatorListener;)V

    .line 396
    return-void
.end method

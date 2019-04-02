.class Lcom/android/camera/ui/AdvancedModeListView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AdvancedModeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/AdvancedModeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/AdvancedModeListView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/AdvancedModeListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/AdvancedModeListView;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedModeListView$1;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$1;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/AdvancedModeListView;->access$1402(Lcom/android/camera/ui/AdvancedModeListView;F)F

    .line 438
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$1;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->onDown(Landroid/view/MotionEvent;)Z

    .line 439
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$1;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v1, p3, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/ui/AdvancedModeListView;->access$1402(Lcom/android/camera/ui/AdvancedModeListView;F)F

    .line 431
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$1;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 432
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$1;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 417
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$1;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/camera/ui/AdvancedModeListView;->access$1302(Lcom/android/camera/ui/AdvancedModeListView;J)J

    .line 418
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$1;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    iget-object v0, v0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 424
    const/4 v0, 0x1

    return v0
.end method

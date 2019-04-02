.class Lcom/android/camera/ui/BottomTextContainer$3;
.super Ljava/lang/Object;
.source "BottomTextContainer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/BottomTextContainer;->startAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/BottomTextContainer;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/BottomTextContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/BottomTextContainer;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/android/camera/ui/BottomTextContainer$3;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 699
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$3;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    iput-boolean v2, v0, Lcom/android/camera/ui/BottomTextContainer;->mAnimationRunning:Z

    .line 700
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$3;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/BottomTextContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 701
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 689
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$3;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v0, v2}, Lcom/android/camera/ui/BottomTextContainer;->access$1500(Lcom/android/camera/ui/BottomTextContainer;Z)V

    .line 690
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$3;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    iput-boolean v2, v0, Lcom/android/camera/ui/BottomTextContainer;->mAnimationRunning:Z

    .line 691
    const-string v0, "CAM_BottomTextContainer"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$3;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/BottomTextContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 695
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 686
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$3;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/BottomTextContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 677
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$3;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/ui/BottomTextContainer;->mAnimationRunning:Z

    .line 678
    const-string v0, "CAM_BottomTextContainer"

    const-string v1, "onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$3;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v0}, Lcom/android/camera/ui/BottomTextContainer;->access$300(Lcom/android/camera/ui/BottomTextContainer;)Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$3;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v0}, Lcom/android/camera/ui/BottomTextContainer;->access$300(Lcom/android/camera/ui/BottomTextContainer;)Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$3;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v0}, Lcom/android/camera/ui/BottomTextContainer;->access$200(Lcom/android/camera/ui/BottomTextContainer;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$3;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v2}, Lcom/android/camera/ui/BottomTextContainer;->access$100(Lcom/android/camera/ui/BottomTextContainer;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;->showModeBlurCover(I)V

    .line 682
    :cond_0
    return-void
.end method

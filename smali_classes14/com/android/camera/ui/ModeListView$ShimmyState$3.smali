.class Lcom/android/camera/ui/ModeListView$ShimmyState$3;
.super Ljava/lang/Object;
.source "ModeListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ModeListView$ShimmyState;->onAnimationEnd(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/ModeListView$ShimmyState;

.field final synthetic val$openFactorAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModeListView$ShimmyState;Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/ModeListView$ShimmyState;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$ShimmyState$3;->this$1:Lcom/android/camera/ui/ModeListView$ShimmyState;

    iput-object p2, p0, Lcom/android/camera/ui/ModeListView$ShimmyState$3;->val$openFactorAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState$3;->this$1:Lcom/android/camera/ui/ModeListView$ShimmyState;

    iget-object v1, v0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState$3;->val$openFactorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/camera/ui/ModeListView;->access$1602(Lcom/android/camera/ui/ModeListView;F)F

    .line 540
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState$3;->this$1:Lcom/android/camera/ui/ModeListView$ShimmyState;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    iget-object v1, p0, Lcom/android/camera/ui/ModeListView$ShimmyState$3;->this$1:Lcom/android/camera/ui/ModeListView$ShimmyState;

    iget-object v1, v1, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v1}, Lcom/android/camera/ui/ModeListView;->access$2500(Lcom/android/camera/ui/ModeListView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeListView;->onVisibleWidthChanged(I)V

    .line 541
    return-void
.end method

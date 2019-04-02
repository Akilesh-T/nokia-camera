.class Lcom/android/camera/ui/ModeListView$ShimmyState$4;
.super Ljava/lang/Object;
.source "ModeListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModeListView$ShimmyState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/ModeListView$ShimmyState;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$ShimmyState$4;->this$1:Lcom/android/camera/ui/ModeListView$ShimmyState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 557
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState$4;->this$1:Lcom/android/camera/ui/ModeListView$ShimmyState;

    iget-object v0, v0, Lcom/android/camera/ui/ModeListView$ShimmyState;->this$0:Lcom/android/camera/ui/ModeListView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/android/camera/ui/ModeListView;->access$1602(Lcom/android/camera/ui/ModeListView;F)F

    .line 552
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 562
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 547
    return-void
.end method

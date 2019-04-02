.class Lcom/android/camera/ui/ModeListView$ShimmyState$2;
.super Ljava/lang/Object;
.source "ModeListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ModeListView$ShimmyState;->startHidingShimmy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mSuccess:Z

.field final synthetic this$1:Lcom/android/camera/ui/ModeListView$ShimmyState;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModeListView$ShimmyState;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/camera/ui/ModeListView$ShimmyState;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$ShimmyState$2;->this$1:Lcom/android/camera/ui/ModeListView$ShimmyState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState$2;->mSuccess:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 484
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState$2;->mSuccess:Z

    .line 485
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState$2;->this$1:Lcom/android/camera/ui/ModeListView$ShimmyState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/ModeListView$ShimmyState;->access$2002(Lcom/android/camera/ui/ModeListView$ShimmyState;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 479
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState$2;->this$1:Lcom/android/camera/ui/ModeListView$ShimmyState;

    iget-boolean v1, p0, Lcom/android/camera/ui/ModeListView$ShimmyState$2;->mSuccess:Z

    invoke-static {v0, v1}, Lcom/android/camera/ui/ModeListView$ShimmyState;->access$2100(Lcom/android/camera/ui/ModeListView$ShimmyState;Z)V

    .line 480
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 490
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 474
    return-void
.end method

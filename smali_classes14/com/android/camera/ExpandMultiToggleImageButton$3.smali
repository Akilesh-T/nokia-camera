.class Lcom/android/camera/ExpandMultiToggleImageButton$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandMultiToggleImageButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ExpandMultiToggleImageButton;->indicatorAnimation(ILandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

.field final synthetic val$animationDirection:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/ExpandMultiToggleImageButton;ILandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ExpandMultiToggleImageButton;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/camera/ExpandMultiToggleImageButton$3;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    iput p2, p0, Lcom/android/camera/ExpandMultiToggleImageButton$3;->val$animationDirection:I

    iput-object p3, p0, Lcom/android/camera/ExpandMultiToggleImageButton$3;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 275
    iget v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton$3;->val$animationDirection:I

    if-nez v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton$3;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v0}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$000(Lcom/android/camera/ExpandMultiToggleImageButton;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton$3;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    iget-object v1, p0, Lcom/android/camera/ExpandMultiToggleImageButton$3;->val$v:Landroid/view/View;

    invoke-static {v0, v2, v1}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$1100(Lcom/android/camera/ExpandMultiToggleImageButton;ILandroid/view/View;)V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton$3;->val$animationDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton$3;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ExpandMultiToggleImageButton;->modeOverlayVisiblity(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton$3;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v0}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$200(Lcom/android/camera/ExpandMultiToggleImageButton;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton$3;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v0}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$200(Lcom/android/camera/ExpandMultiToggleImageButton;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton$3;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v0}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$000(Lcom/android/camera/ExpandMultiToggleImageButton;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton$3;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ExpandMultiToggleImageButton;->modeOverlayVisiblity(Z)V

    .line 271
    return-void
.end method

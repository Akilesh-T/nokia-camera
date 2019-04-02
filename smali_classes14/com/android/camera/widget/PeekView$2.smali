.class Lcom/android/camera/widget/PeekView$2;
.super Ljava/lang/Object;
.source "PeekView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/PeekView;->startPeekAnimation(Landroid/graphics/Bitmap;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/PeekView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/PeekView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/widget/PeekView;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/camera/widget/PeekView$2;->this$0:Lcom/android/camera/widget/PeekView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/widget/PeekView$2;->this$0:Lcom/android/camera/widget/PeekView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/widget/PeekView;->access$202(Lcom/android/camera/widget/PeekView;Z)Z

    .line 143
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/widget/PeekView$2;->this$0:Lcom/android/camera/widget/PeekView;

    invoke-static {v0}, Lcom/android/camera/widget/PeekView;->access$200(Lcom/android/camera/widget/PeekView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/camera/widget/PeekView$2;->this$0:Lcom/android/camera/widget/PeekView;

    invoke-static {v0}, Lcom/android/camera/widget/PeekView;->access$300(Lcom/android/camera/widget/PeekView;)V

    .line 138
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 148
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/camera/widget/PeekView$2;->this$0:Lcom/android/camera/widget/PeekView;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/PeekView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/android/camera/widget/PeekView$2;->this$0:Lcom/android/camera/widget/PeekView;

    invoke-static {v0, v1}, Lcom/android/camera/widget/PeekView;->access$202(Lcom/android/camera/widget/PeekView;Z)Z

    .line 130
    iget-object v0, p0, Lcom/android/camera/widget/PeekView$2;->this$0:Lcom/android/camera/widget/PeekView;

    invoke-virtual {v0}, Lcom/android/camera/widget/PeekView;->invalidate()V

    .line 131
    return-void
.end method

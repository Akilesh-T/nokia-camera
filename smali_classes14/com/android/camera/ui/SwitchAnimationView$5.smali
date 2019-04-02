.class Lcom/android/camera/ui/SwitchAnimationView$5;
.super Ljava/lang/Object;
.source "SwitchAnimationView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/SwitchAnimationView;->fadeOut(Landroid/view/View;FFJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/SwitchAnimationView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/SwitchAnimationView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/SwitchAnimationView;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/camera/ui/SwitchAnimationView$5;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    iput-object p2, p0, Lcom/android/camera/ui/SwitchAnimationView$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/camera/ui/SwitchAnimationView$5;->val$view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 266
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 256
    return-void
.end method

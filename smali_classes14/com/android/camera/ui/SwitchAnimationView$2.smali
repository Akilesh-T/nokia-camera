.class Lcom/android/camera/ui/SwitchAnimationView$2;
.super Ljava/lang/Object;
.source "SwitchAnimationView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/SwitchAnimationView;->startSwitchCameraAnimation(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/SwitchAnimationView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/SwitchAnimationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/SwitchAnimationView;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/camera/ui/SwitchAnimationView$2;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/SwitchAnimationView$2;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    invoke-static {v0, v2}, Lcom/android/camera/ui/SwitchAnimationView;->access$002(Lcom/android/camera/ui/SwitchAnimationView;Z)Z

    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/SwitchAnimationView$2;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/SwitchAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 124
    iget-object v0, p0, Lcom/android/camera/ui/SwitchAnimationView$2;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/SwitchAnimationView;->hideSwitchCameraCover(Z)V

    .line 125
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 130
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 118
    return-void
.end method

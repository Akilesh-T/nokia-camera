.class Lcom/android/camera/ui/SwitchAnimationView$4;
.super Ljava/lang/Object;
.source "SwitchAnimationView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/SwitchAnimationView;->showModeBlurCover(IZLandroid/graphics/Bitmap;Lcom/android/camera/app/CameraAppUI;)V
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
    .line 210
    iput-object p1, p0, Lcom/android/camera/ui/SwitchAnimationView$4;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/ui/SwitchAnimationView$4;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/SwitchAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 224
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/camera/ui/SwitchAnimationView$4;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/SwitchAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 219
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 229
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/camera/ui/SwitchAnimationView$4;->this$0:Lcom/android/camera/ui/SwitchAnimationView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/SwitchAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 214
    return-void
.end method

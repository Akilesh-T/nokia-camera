.class Lcom/android/camera/DualSightPhotoModuleUI$5;
.super Ljava/lang/Object;
.source "DualSightPhotoModuleUI.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightPhotoModuleUI;->startFinishAnim(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightPhotoModuleUI;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightPhotoModuleUI;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightPhotoModuleUI;

    .prologue
    .line 753
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModuleUI$5;->this$0:Lcom/android/camera/DualSightPhotoModuleUI;

    iput-object p2, p0, Lcom/android/camera/DualSightPhotoModuleUI$5;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 808
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 774
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/camera/DualSightPhotoModuleUI$5$2;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightPhotoModuleUI$5$2;-><init>(Lcom/android/camera/DualSightPhotoModuleUI$5;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 803
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 813
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 757
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/camera/DualSightPhotoModuleUI$5$1;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightPhotoModuleUI$5$1;-><init>(Lcom/android/camera/DualSightPhotoModuleUI$5;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 770
    return-void
.end method

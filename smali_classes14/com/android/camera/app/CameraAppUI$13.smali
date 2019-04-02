.class Lcom/android/camera/app/CameraAppUI$13;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/CameraAppUI;->startFlashAnimationBeforeTakePicture(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/CameraAppUI;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraAppUI;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 2391
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI$13;->this$0:Lcom/android/camera/app/CameraAppUI;

    iput-object p2, p0, Lcom/android/camera/app/CameraAppUI$13;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2410
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2402
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$13;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/app/CameraAppUI;->access$100(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/app/AppController;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2406
    :cond_0
    :goto_0
    return-void

    .line 2403
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$13;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/app/CameraAppUI;->access$100(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2404
    invoke-static {}, Lcom/android/camera/app/CameraAppUI;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "startFlashAnimationBeforeTakePicture onAnimationEnd"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2405
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$13;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2415
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2394
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$13;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/app/CameraAppUI;->access$100(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/app/AppController;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2398
    :cond_0
    :goto_0
    return-void

    .line 2395
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$13;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/app/CameraAppUI;->access$100(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2396
    invoke-static {}, Lcom/android/camera/app/CameraAppUI;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "startFlashAnimationBeforeTakePicture onAnimationStart"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2397
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$13;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/app/CameraAppUI;->access$100(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/app/AppController;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setBrightnessLevel(F)V

    goto :goto_0
.end method

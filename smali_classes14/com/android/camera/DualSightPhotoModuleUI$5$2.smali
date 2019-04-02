.class Lcom/android/camera/DualSightPhotoModuleUI$5$2;
.super Ljava/lang/Object;
.source "DualSightPhotoModuleUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightPhotoModuleUI$5;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/DualSightPhotoModuleUI$5;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightPhotoModuleUI$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/DualSightPhotoModuleUI$5;

    .prologue
    .line 774
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModuleUI$5$2;->this$1:Lcom/android/camera/DualSightPhotoModuleUI$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 777
    invoke-static {}, Lcom/android/camera/DualSightPhotoModuleUI;->access$1600()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 780
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 781
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI$5$2;->this$1:Lcom/android/camera/DualSightPhotoModuleUI$5;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModuleUI$5;->this$0:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->access$1700(Lcom/android/camera/DualSightPhotoModuleUI;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI$5$2;->this$1:Lcom/android/camera/DualSightPhotoModuleUI$5;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModuleUI$5;->this$0:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModuleUI;->access$1700(Lcom/android/camera/DualSightPhotoModuleUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0e000e

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI$5$2;->this$1:Lcom/android/camera/DualSightPhotoModuleUI$5;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModuleUI$5;->this$0:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->access$1800(Lcom/android/camera/DualSightPhotoModuleUI;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI$5$2;->this$1:Lcom/android/camera/DualSightPhotoModuleUI$5;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModuleUI$5;->this$0:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->access$1700(Lcom/android/camera/DualSightPhotoModuleUI;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonVisible(I)V

    .line 788
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI$5$2;->this$1:Lcom/android/camera/DualSightPhotoModuleUI$5;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModuleUI$5;->this$0:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->access$1700(Lcom/android/camera/DualSightPhotoModuleUI;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/app/CameraAppUI;->setThumbnailVisibility(Z)V

    .line 790
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI$5$2;->this$1:Lcom/android/camera/DualSightPhotoModuleUI$5;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModuleUI$5;->this$0:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->access$1700(Lcom/android/camera/DualSightPhotoModuleUI;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/app/CameraAppUI;->setModeTextVisible(I)V

    .line 792
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI$5$2;->this$1:Lcom/android/camera/DualSightPhotoModuleUI$5;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModuleUI$5;->this$0:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->access$1500(Lcom/android/camera/DualSightPhotoModuleUI;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 793
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI$5$2;->this$1:Lcom/android/camera/DualSightPhotoModuleUI$5;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModuleUI$5;->val$bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI$5$2;->this$1:Lcom/android/camera/DualSightPhotoModuleUI$5;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModuleUI$5;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI$5$2;->this$1:Lcom/android/camera/DualSightPhotoModuleUI$5;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModuleUI$5;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI$5$2;->this$1:Lcom/android/camera/DualSightPhotoModuleUI$5;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModuleUI$5;->this$0:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v0, v3}, Lcom/android/camera/DualSightPhotoModuleUI;->setTwiceShotWaitMode(Z)V

    .line 799
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI$5$2;->this$1:Lcom/android/camera/DualSightPhotoModuleUI$5;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModuleUI$5;->this$0:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->access$1300(Lcom/android/camera/DualSightPhotoModuleUI;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 800
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI$5$2;->this$1:Lcom/android/camera/DualSightPhotoModuleUI$5;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModuleUI$5;->this$0:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-static {v0, v3}, Lcom/android/camera/DualSightPhotoModuleUI;->access$1902(Lcom/android/camera/DualSightPhotoModuleUI;Z)Z

    .line 801
    return-void
.end method

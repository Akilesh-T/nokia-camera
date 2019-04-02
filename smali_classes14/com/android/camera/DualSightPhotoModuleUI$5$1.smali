.class Lcom/android/camera/DualSightPhotoModuleUI$5$1;
.super Ljava/lang/Object;
.source "DualSightPhotoModuleUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightPhotoModuleUI$5;->onAnimationStart(Landroid/animation/Animator;)V
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
    .line 757
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModuleUI$5$1;->this$1:Lcom/android/camera/DualSightPhotoModuleUI$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 760
    invoke-static {}, Lcom/android/camera/DualSightPhotoModuleUI;->access$1600()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onAnimationStart"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI$5$1;->this$1:Lcom/android/camera/DualSightPhotoModuleUI$5;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModuleUI$5;->this$0:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->access$1300(Lcom/android/camera/DualSightPhotoModuleUI;)Lcom/android/camera/app/AppController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 764
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 765
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI$5$1;->this$1:Lcom/android/camera/DualSightPhotoModuleUI$5;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModuleUI$5;->this$0:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->access$1700(Lcom/android/camera/DualSightPhotoModuleUI;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 768
    :cond_0
    return-void
.end method

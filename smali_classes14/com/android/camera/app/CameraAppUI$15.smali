.class Lcom/android/camera/app/CameraAppUI$15;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/CameraAppUI;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/CameraAppUI;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraAppUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 2625
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI$15;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$15;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/app/CameraAppUI;->access$100(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->onFirstPreviewArrived()V

    .line 2629
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$15;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/app/CameraAppUI;->access$100(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->onFirstPreviewArrived()V

    .line 2631
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$15;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/app/CameraAppUI;->access$100(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/settings/Keys;->areGridLinesOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2632
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$15;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showGridLines()V

    .line 2636
    :goto_0
    return-void

    .line 2634
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$15;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideGridLines()V

    goto :goto_0
.end method

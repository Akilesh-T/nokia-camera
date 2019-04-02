.class Lcom/android/camera/TemplatePhotoModule$5;
.super Ljava/lang/Object;
.source "TemplatePhotoModule.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/TemplatePhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/TemplatePhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/TemplatePhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/camera/TemplatePhotoModule$5;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 504
    return-void
.end method

.method public onStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 483
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule$5;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v1}, Lcom/android/camera/TemplatePhotoModule;->access$1100(Lcom/android/camera/TemplatePhotoModule;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule$5;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v1}, Lcom/android/camera/TemplatePhotoModule;->access$400(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraProvider;->waitingForCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule$5;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v1}, Lcom/android/camera/TemplatePhotoModule;->access$400(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabledImmediately(Z)V

    .line 488
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule$5;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v1}, Lcom/android/camera/TemplatePhotoModule;->access$500(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 489
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->disableCameraButtonAndBlock()V

    .line 491
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule$5;->this$0:Lcom/android/camera/TemplatePhotoModule;

    iput p1, v1, Lcom/android/camera/TemplatePhotoModule;->mPendingSwitchCameraId:I

    .line 493
    invoke-static {}, Lcom/android/camera/TemplatePhotoModule;->access$1200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start to switch camera. cameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 498
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule$5;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v1}, Lcom/android/camera/TemplatePhotoModule;->access$1300(Lcom/android/camera/TemplatePhotoModule;)V

    goto :goto_0
.end method

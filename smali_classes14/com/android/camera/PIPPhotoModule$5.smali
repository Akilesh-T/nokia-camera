.class Lcom/android/camera/PIPPhotoModule$5;
.super Ljava/lang/Object;
.source "PIPPhotoModule.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PIPPhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PIPPhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PIPPhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 596
    return-void
.end method

.method public onStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 550
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-boolean v1, v1, Lcom/android/camera/PIPPhotoModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v1}, Lcom/android/camera/PIPPhotoModule;->access$200(Lcom/android/camera/PIPPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraProvider;->waitingForCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-object v1, v1, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-nez v1, :cond_2

    .line 555
    invoke-static {}, Lcom/android/camera/PIPPhotoModule;->access$900()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "mGLPreviewRender == null, Skip it!"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 560
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v1}, Lcom/android/camera/PIPPhotoModule;->access$300(Lcom/android/camera/PIPPhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 561
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->disableCameraButtonAndBlock()V

    .line 565
    invoke-static {}, Lcom/android/camera/PIPPhotoModule;->access$900()Lcom/android/camera/debug/Log$Tag;

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

    .line 572
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget v1, v1, Lcom/android/camera/PIPPhotoModule;->mPIPModeState:I

    if-eq v1, p1, :cond_4

    .line 573
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-object v1, v1, Lcom/android/camera/PIPPhotoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_UP_FRONT_DOWN:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-ne v1, v2, :cond_5

    .line 574
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_DOWN_FRONT_UP:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    iput-object v2, v1, Lcom/android/camera/PIPPhotoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .line 575
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-object v1, v1, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-object v1, v1, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_DOWN_FRONT_UP:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/pip/opengl/GLRenderer;->setDisplayMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)V

    .line 586
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v1}, Lcom/android/camera/PIPPhotoModule;->access$200(Lcom/android/camera/PIPPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v2}, Lcom/android/camera/PIPPhotoModule;->access$1000(Lcom/android/camera/PIPPhotoModule;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/app/CameraAppUI;->updateModeText(Ljava/lang/String;)V

    .line 589
    :cond_4
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    iput p1, v1, Lcom/android/camera/PIPPhotoModule;->mPIPModeState:I

    .line 590
    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->enableCameraButton()V

    goto :goto_0

    .line 576
    :cond_5
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-object v1, v1, Lcom/android/camera/PIPPhotoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_DOWN_FRONT_UP:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-ne v1, v2, :cond_6

    .line 577
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_UP_FRONT_DOWN:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    iput-object v2, v1, Lcom/android/camera/PIPPhotoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .line 578
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-object v1, v1, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-object v1, v1, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_UP_FRONT_DOWN:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/pip/opengl/GLRenderer;->setDisplayMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)V

    goto :goto_1

    .line 579
    :cond_6
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-object v1, v1, Lcom/android/camera/PIPPhotoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_FULL_FRONT_SUB:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-ne v1, v2, :cond_7

    .line 580
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_SUB_FRONT_FULL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    iput-object v2, v1, Lcom/android/camera/PIPPhotoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .line 581
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-object v1, v1, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-object v1, v1, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_SUB_FRONT_FULL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/pip/opengl/GLRenderer;->setDisplayMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)V

    goto :goto_1

    .line 582
    :cond_7
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-object v1, v1, Lcom/android/camera/PIPPhotoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_SUB_FRONT_FULL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-ne v1, v2, :cond_3

    .line 583
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_FULL_FRONT_SUB:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    iput-object v2, v1, Lcom/android/camera/PIPPhotoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .line 584
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-object v1, v1, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$5;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-object v1, v1, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_FULL_FRONT_SUB:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/pip/opengl/GLRenderer;->setDisplayMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)V

    goto :goto_1
.end method

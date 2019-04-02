.class Lcom/android/camera/PIPVideoModule$4;
.super Ljava/lang/Object;
.source "PIPVideoModule.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PIPVideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PIPVideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PIPVideoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 674
    return-void
.end method

.method public onStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 626
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    iget-boolean v1, v1, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$100(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraProvider;->waitingForCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    iget-object v1, v1, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-nez v1, :cond_2

    .line 631
    invoke-static {}, Lcom/android/camera/PIPVideoModule;->access$1100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "mGLPreviewRender == null, Skip it!"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 637
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->disableCameraButtonAndBlock()V

    .line 641
    invoke-static {}, Lcom/android/camera/PIPVideoModule;->access$1100()Lcom/android/camera/debug/Log$Tag;

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

    .line 648
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    iget v1, v1, Lcom/android/camera/PIPVideoModule;->mPIPModeState:I

    if-eq v1, p1, :cond_4

    .line 649
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    iget-object v1, v1, Lcom/android/camera/PIPVideoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_UP_FRONT_DOWN:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-ne v1, v2, :cond_5

    .line 650
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_DOWN_FRONT_UP:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    iput-object v2, v1, Lcom/android/camera/PIPVideoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .line 651
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    iget-object v1, v1, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    iget-object v1, v1, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_DOWN_FRONT_UP:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/pip/opengl/GLRenderer;->setDisplayMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)V

    .line 662
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$100(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v2}, Lcom/android/camera/PIPVideoModule;->access$1200(Lcom/android/camera/PIPVideoModule;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/app/CameraAppUI;->updateModeText(Ljava/lang/String;)V

    .line 665
    :cond_4
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$1300(Lcom/android/camera/PIPVideoModule;)V

    .line 667
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    iput p1, v1, Lcom/android/camera/PIPVideoModule;->mPIPModeState:I

    .line 668
    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->enableCameraButton()V

    goto :goto_0

    .line 652
    :cond_5
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    iget-object v1, v1, Lcom/android/camera/PIPVideoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_DOWN_FRONT_UP:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-ne v1, v2, :cond_6

    .line 653
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_UP_FRONT_DOWN:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    iput-object v2, v1, Lcom/android/camera/PIPVideoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .line 654
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    iget-object v1, v1, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    iget-object v1, v1, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_UP_FRONT_DOWN:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/pip/opengl/GLRenderer;->setDisplayMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)V

    goto :goto_1

    .line 655
    :cond_6
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    iget-object v1, v1, Lcom/android/camera/PIPVideoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_FULL_FRONT_SUB:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-ne v1, v2, :cond_7

    .line 656
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_SUB_FRONT_FULL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    iput-object v2, v1, Lcom/android/camera/PIPVideoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .line 657
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    iget-object v1, v1, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    iget-object v1, v1, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_SUB_FRONT_FULL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/pip/opengl/GLRenderer;->setDisplayMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)V

    goto :goto_1

    .line 658
    :cond_7
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    iget-object v1, v1, Lcom/android/camera/PIPVideoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_SUB_FRONT_FULL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-ne v1, v2, :cond_3

    .line 659
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_FULL_FRONT_SUB:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    iput-object v2, v1, Lcom/android/camera/PIPVideoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .line 660
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    iget-object v1, v1, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$4;->this$0:Lcom/android/camera/PIPVideoModule;

    iget-object v1, v1, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_FULL_FRONT_SUB:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/pip/opengl/GLRenderer;->setDisplayMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)V

    goto :goto_1
.end method

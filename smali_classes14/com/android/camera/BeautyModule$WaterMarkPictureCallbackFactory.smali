.class Lcom/android/camera/BeautyModule$WaterMarkPictureCallbackFactory;
.super Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;
.source "BeautyModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BeautyModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaterMarkPictureCallbackFactory"
.end annotation


# instance fields
.field private mUsePostProcess:Z

.field final synthetic this$0:Lcom/android/camera/BeautyModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/BeautyModule;Z)V
    .locals 1
    .param p2, "usePostProcess"    # Z

    .prologue
    .line 2619
    iput-object p1, p0, Lcom/android/camera/BeautyModule$WaterMarkPictureCallbackFactory;->this$0:Lcom/android/camera/BeautyModule;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;-><init>(Lcom/android/camera/BeautyModule;Lcom/android/camera/BeautyModule$1;)V

    .line 2620
    iput-boolean p2, p0, Lcom/android/camera/BeautyModule$WaterMarkPictureCallbackFactory;->mUsePostProcess:Z

    .line 2621
    return-void
.end method


# virtual methods
.method public IsUsePostProcess()Z
    .locals 1

    .prologue
    .line 2642
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule$WaterMarkPictureCallbackFactory;->mUsePostProcess:Z

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2646
    invoke-virtual {p0}, Lcom/android/camera/BeautyModule$WaterMarkPictureCallbackFactory;->IsUsePostProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BeautyModule$WaterMarkPictureCallbackFactory;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$5200(Lcom/android/camera/BeautyModule;)Landroid/os/Handler;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyModule$WaterMarkPictureCallbackFactory;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$4300(Lcom/android/camera/BeautyModule;)Landroid/os/Handler;

    move-result-object v0

    goto :goto_0
.end method

.method public getJpegPictureCallback(Lcom/android/camera/BeautyModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 2
    .param p1, "memento"    # Lcom/android/camera/BeautyModule$Memento;

    .prologue
    .line 2632
    new-instance v0, Lcom/android/camera/BeautyModule$JpegPictureCallback;

    iget-object v1, p0, Lcom/android/camera/BeautyModule$WaterMarkPictureCallbackFactory;->this$0:Lcom/android/camera/BeautyModule;

    invoke-direct {v0, v1, p1}, Lcom/android/camera/BeautyModule$JpegPictureCallback;-><init>(Lcom/android/camera/BeautyModule;Lcom/android/camera/BeautyModule$Memento;)V

    return-object v0
.end method

.method public getPostViewPictureCallback(Lcom/android/camera/BeautyModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 2
    .param p1, "memento"    # Lcom/android/camera/BeautyModule$Memento;

    .prologue
    .line 2628
    invoke-virtual {p0}, Lcom/android/camera/BeautyModule$WaterMarkPictureCallbackFactory;->IsUsePostProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/BeautyModule$PosPostViewPictureCallback;

    iget-object v1, p0, Lcom/android/camera/BeautyModule$WaterMarkPictureCallbackFactory;->this$0:Lcom/android/camera/BeautyModule;

    invoke-direct {v0, v1, p1}, Lcom/android/camera/BeautyModule$PosPostViewPictureCallback;-><init>(Lcom/android/camera/BeautyModule;Lcom/android/camera/BeautyModule$Memento;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyModule$WaterMarkPictureCallbackFactory;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$5000(Lcom/android/camera/BeautyModule;)Lcom/android/camera/BeautyModule$PostViewPictureCallback;

    move-result-object v0

    goto :goto_0
.end method

.method public getRawPictureCallback(Lcom/android/camera/BeautyModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 3
    .param p1, "memento"    # Lcom/android/camera/BeautyModule$Memento;

    .prologue
    .line 2624
    new-instance v0, Lcom/android/camera/BeautyModule$PostPreviewFrameCallback;

    iget-object v1, p0, Lcom/android/camera/BeautyModule$WaterMarkPictureCallbackFactory;->this$0:Lcom/android/camera/BeautyModule;

    iget-boolean v2, p0, Lcom/android/camera/BeautyModule$WaterMarkPictureCallbackFactory;->mUsePostProcess:Z

    invoke-direct {v0, v1, p1, v2}, Lcom/android/camera/BeautyModule$PostPreviewFrameCallback;-><init>(Lcom/android/camera/BeautyModule;Lcom/android/camera/BeautyModule$Memento;Z)V

    return-object v0
.end method

.method public needFakeImage()Z
    .locals 1

    .prologue
    .line 2650
    const/4 v0, 0x1

    return v0
.end method

.method public showFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 2636
    iget-object v0, p0, Lcom/android/camera/BeautyModule$WaterMarkPictureCallbackFactory;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$5100(Lcom/android/camera/BeautyModule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2637
    iget-object v0, p0, Lcom/android/camera/BeautyModule$WaterMarkPictureCallbackFactory;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$500(Lcom/android/camera/BeautyModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2639
    :cond_0
    return-void
.end method

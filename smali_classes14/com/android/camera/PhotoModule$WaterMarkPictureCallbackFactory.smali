.class Lcom/android/camera/PhotoModule$WaterMarkPictureCallbackFactory;
.super Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaterMarkPictureCallbackFactory"
.end annotation


# instance fields
.field private mUsePostProcess:Z

.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule;Z)V
    .locals 1
    .param p2, "usePostProcess"    # Z

    .prologue
    .line 1724
    iput-object p1, p0, Lcom/android/camera/PhotoModule$WaterMarkPictureCallbackFactory;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    .line 1725
    iput-boolean p2, p0, Lcom/android/camera/PhotoModule$WaterMarkPictureCallbackFactory;->mUsePostProcess:Z

    .line 1726
    return-void
.end method


# virtual methods
.method public IsUsePostProcess()Z
    .locals 1

    .prologue
    .line 1747
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule$WaterMarkPictureCallbackFactory;->mUsePostProcess:Z

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1751
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule$WaterMarkPictureCallbackFactory;->IsUsePostProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule$WaterMarkPictureCallbackFactory;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$8400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$WaterMarkPictureCallbackFactory;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v0

    goto :goto_0
.end method

.method public getJpegPictureCallback(Lcom/android/camera/PhotoModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 2
    .param p1, "memento"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1737
    new-instance v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$WaterMarkPictureCallbackFactory;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {v0, v1, p1}, Lcom/android/camera/PhotoModule$JpegPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$Memento;)V

    return-object v0
.end method

.method public getPostViewPictureCallback(Lcom/android/camera/PhotoModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 2
    .param p1, "memento"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1733
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule$WaterMarkPictureCallbackFactory;->IsUsePostProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/PhotoModule$PosPostViewPictureCallback;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$WaterMarkPictureCallbackFactory;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {v0, v1, p1}, Lcom/android/camera/PhotoModule$PosPostViewPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$Memento;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$WaterMarkPictureCallbackFactory;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$8200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    move-result-object v0

    goto :goto_0
.end method

.method public getRawPictureCallback(Lcom/android/camera/PhotoModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 3
    .param p1, "memento"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1729
    new-instance v0, Lcom/android/camera/PhotoModule$PostPreviewFrameCallback;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$WaterMarkPictureCallbackFactory;->this$0:Lcom/android/camera/PhotoModule;

    iget-boolean v2, p0, Lcom/android/camera/PhotoModule$WaterMarkPictureCallbackFactory;->mUsePostProcess:Z

    invoke-direct {v0, v1, p1, v2}, Lcom/android/camera/PhotoModule$PostPreviewFrameCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$Memento;Z)V

    return-object v0
.end method

.method public needFakeImage()Z
    .locals 1

    .prologue
    .line 1755
    const/4 v0, 0x1

    return v0
.end method

.method public showFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/android/camera/PhotoModule$WaterMarkPictureCallbackFactory;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$8300(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1742
    iget-object v0, p0, Lcom/android/camera/PhotoModule$WaterMarkPictureCallbackFactory;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1744
    :cond_0
    return-void
.end method

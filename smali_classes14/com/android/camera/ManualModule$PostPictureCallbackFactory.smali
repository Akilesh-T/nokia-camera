.class Lcom/android/camera/ManualModule$PostPictureCallbackFactory;
.super Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;
.source "ManualModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostPictureCallbackFactory"
.end annotation


# instance fields
.field private mNeedFakeImage:Z

.field final synthetic this$0:Lcom/android/camera/ManualModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/ManualModule;Z)V
    .locals 1
    .param p2, "needFakeImage"    # Z

    .prologue
    .line 2974
    iput-object p1, p0, Lcom/android/camera/ManualModule$PostPictureCallbackFactory;->this$0:Lcom/android/camera/ManualModule;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;-><init>(Lcom/android/camera/ManualModule;Lcom/android/camera/ManualModule$1;)V

    .line 2975
    iput-boolean p2, p0, Lcom/android/camera/ManualModule$PostPictureCallbackFactory;->mNeedFakeImage:Z

    .line 2976
    return-void
.end method


# virtual methods
.method public IsUsePostProcess()Z
    .locals 1

    .prologue
    .line 2999
    const/4 v0, 0x1

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 3003
    iget-object v0, p0, Lcom/android/camera/ManualModule$PostPictureCallbackFactory;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$5700(Lcom/android/camera/ManualModule;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getJpegPictureCallback(Lcom/android/camera/ManualModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 2
    .param p1, "memento"    # Lcom/android/camera/ManualModule$Memento;

    .prologue
    .line 2992
    new-instance v0, Lcom/android/camera/ManualModule$JpegPictureCallback;

    iget-object v1, p0, Lcom/android/camera/ManualModule$PostPictureCallbackFactory;->this$0:Lcom/android/camera/ManualModule;

    invoke-direct {v0, v1, p1}, Lcom/android/camera/ManualModule$JpegPictureCallback;-><init>(Lcom/android/camera/ManualModule;Lcom/android/camera/ManualModule$Memento;)V

    return-object v0
.end method

.method public getPostViewPictureCallback(Lcom/android/camera/ManualModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 3
    .param p1, "memento"    # Lcom/android/camera/ManualModule$Memento;

    .prologue
    .line 2988
    new-instance v0, Lcom/android/camera/ManualModule$PosPostViewPictureCallback;

    iget-object v1, p0, Lcom/android/camera/ManualModule$PostPictureCallbackFactory;->this$0:Lcom/android/camera/ManualModule;

    iget-boolean v2, p0, Lcom/android/camera/ManualModule$PostPictureCallbackFactory;->mNeedFakeImage:Z

    invoke-direct {v0, v1, p1, v2}, Lcom/android/camera/ManualModule$PosPostViewPictureCallback;-><init>(Lcom/android/camera/ManualModule;Lcom/android/camera/ManualModule$Memento;Z)V

    return-object v0
.end method

.method public getRawPictureCallback(Lcom/android/camera/ManualModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 1
    .param p1, "memento"    # Lcom/android/camera/ManualModule$Memento;

    .prologue
    .line 2984
    iget-object v0, p0, Lcom/android/camera/ManualModule$PostPictureCallbackFactory;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$5600(Lcom/android/camera/ManualModule;)Lcom/android/camera/ManualModule$RawPictureCallback;

    move-result-object v0

    return-object v0
.end method

.method public getShutterCallback(ZLcom/android/camera/ManualModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;
    .locals 2
    .param p1, "needAnimation"    # Z
    .param p2, "memento"    # Lcom/android/camera/ManualModule$Memento;

    .prologue
    .line 2980
    invoke-virtual {p0}, Lcom/android/camera/ManualModule$PostPictureCallbackFactory;->needFakeImage()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;

    iget-object v1, p0, Lcom/android/camera/ManualModule$PostPictureCallbackFactory;->this$0:Lcom/android/camera/ManualModule;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;-><init>(Lcom/android/camera/ManualModule;ZLcom/android/camera/ManualModule$Memento;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/ManualModule$ShutterCallback;

    iget-object v1, p0, Lcom/android/camera/ManualModule$PostPictureCallbackFactory;->this$0:Lcom/android/camera/ManualModule;

    invoke-direct {v0, v1, p1}, Lcom/android/camera/ManualModule$ShutterCallback;-><init>(Lcom/android/camera/ManualModule;Z)V

    goto :goto_0
.end method

.method public needFakeImage()Z
    .locals 1

    .prologue
    .line 3007
    iget-boolean v0, p0, Lcom/android/camera/ManualModule$PostPictureCallbackFactory;->mNeedFakeImage:Z

    return v0
.end method

.method public showFailure(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 2996
    return-void
.end method

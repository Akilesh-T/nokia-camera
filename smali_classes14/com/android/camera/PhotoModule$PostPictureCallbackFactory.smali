.class Lcom/android/camera/PhotoModule$PostPictureCallbackFactory;
.super Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostPictureCallbackFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 1

    .prologue
    .line 1789
    iput-object p1, p0, Lcom/android/camera/PhotoModule$PostPictureCallbackFactory;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule;
    .param p2, "x1"    # Lcom/android/camera/PhotoModule$1;

    .prologue
    .line 1789
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$PostPictureCallbackFactory;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public IsUsePostProcess()Z
    .locals 1

    .prologue
    .line 1806
    const/4 v0, 0x1

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PostPictureCallbackFactory;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$8400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getJpegPictureCallback(Lcom/android/camera/PhotoModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 2
    .param p1, "memento"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1799
    new-instance v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$PostPictureCallbackFactory;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {v0, v1, p1}, Lcom/android/camera/PhotoModule$JpegPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$Memento;)V

    return-object v0
.end method

.method public getPostViewPictureCallback(Lcom/android/camera/PhotoModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 2
    .param p1, "memento"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1795
    new-instance v0, Lcom/android/camera/PhotoModule$PosPostViewPictureCallback;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$PostPictureCallbackFactory;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {v0, v1, p1}, Lcom/android/camera/PhotoModule$PosPostViewPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$Memento;)V

    return-object v0
.end method

.method public getRawPictureCallback(Lcom/android/camera/PhotoModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 3
    .param p1, "memento"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1791
    new-instance v0, Lcom/android/camera/PhotoModule$PostPreviewFrameCallback;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$PostPictureCallbackFactory;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/android/camera/PhotoModule$PostPreviewFrameCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$Memento;Z)V

    return-object v0
.end method

.method public needFakeImage()Z
    .locals 1

    .prologue
    .line 1814
    const/4 v0, 0x1

    return v0
.end method

.method public showFailure(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1803
    return-void
.end method

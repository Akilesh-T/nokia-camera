.class Lcom/android/camera/BeautyModule$PostPictureCallbackFactory;
.super Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;
.source "BeautyModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BeautyModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostPictureCallbackFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BeautyModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/BeautyModule;)V
    .locals 1

    .prologue
    .line 2654
    iput-object p1, p0, Lcom/android/camera/BeautyModule$PostPictureCallbackFactory;->this$0:Lcom/android/camera/BeautyModule;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;-><init>(Lcom/android/camera/BeautyModule;Lcom/android/camera/BeautyModule$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/BeautyModule;Lcom/android/camera/BeautyModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/BeautyModule;
    .param p2, "x1"    # Lcom/android/camera/BeautyModule$1;

    .prologue
    .line 2654
    invoke-direct {p0, p1}, Lcom/android/camera/BeautyModule$PostPictureCallbackFactory;-><init>(Lcom/android/camera/BeautyModule;)V

    return-void
.end method


# virtual methods
.method public IsUsePostProcess()Z
    .locals 1

    .prologue
    .line 2671
    const/4 v0, 0x1

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2675
    iget-object v0, p0, Lcom/android/camera/BeautyModule$PostPictureCallbackFactory;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$5200(Lcom/android/camera/BeautyModule;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getJpegPictureCallback(Lcom/android/camera/BeautyModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 2
    .param p1, "memento"    # Lcom/android/camera/BeautyModule$Memento;

    .prologue
    .line 2664
    new-instance v0, Lcom/android/camera/BeautyModule$JpegPictureCallback;

    iget-object v1, p0, Lcom/android/camera/BeautyModule$PostPictureCallbackFactory;->this$0:Lcom/android/camera/BeautyModule;

    invoke-direct {v0, v1, p1}, Lcom/android/camera/BeautyModule$JpegPictureCallback;-><init>(Lcom/android/camera/BeautyModule;Lcom/android/camera/BeautyModule$Memento;)V

    return-object v0
.end method

.method public getPostViewPictureCallback(Lcom/android/camera/BeautyModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 2
    .param p1, "memento"    # Lcom/android/camera/BeautyModule$Memento;

    .prologue
    .line 2660
    new-instance v0, Lcom/android/camera/BeautyModule$PosPostViewPictureCallback;

    iget-object v1, p0, Lcom/android/camera/BeautyModule$PostPictureCallbackFactory;->this$0:Lcom/android/camera/BeautyModule;

    invoke-direct {v0, v1, p1}, Lcom/android/camera/BeautyModule$PosPostViewPictureCallback;-><init>(Lcom/android/camera/BeautyModule;Lcom/android/camera/BeautyModule$Memento;)V

    return-object v0
.end method

.method public getRawPictureCallback(Lcom/android/camera/BeautyModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 3
    .param p1, "memento"    # Lcom/android/camera/BeautyModule$Memento;

    .prologue
    .line 2656
    new-instance v0, Lcom/android/camera/BeautyModule$PostPreviewFrameCallback;

    iget-object v1, p0, Lcom/android/camera/BeautyModule$PostPictureCallbackFactory;->this$0:Lcom/android/camera/BeautyModule;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/android/camera/BeautyModule$PostPreviewFrameCallback;-><init>(Lcom/android/camera/BeautyModule;Lcom/android/camera/BeautyModule$Memento;Z)V

    return-object v0
.end method

.method public needFakeImage()Z
    .locals 1

    .prologue
    .line 2679
    const/4 v0, 0x1

    return v0
.end method

.method public showFailure(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 2668
    return-void
.end method

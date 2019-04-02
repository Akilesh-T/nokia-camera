.class Lcom/android/camera/ManualModule$PictureCallbackFactory;
.super Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;
.source "ManualModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PictureCallbackFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/ManualModule;)V
    .locals 1

    .prologue
    .line 3011
    iput-object p1, p0, Lcom/android/camera/ManualModule$PictureCallbackFactory;->this$0:Lcom/android/camera/ManualModule;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;-><init>(Lcom/android/camera/ManualModule;Lcom/android/camera/ManualModule$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ManualModule;Lcom/android/camera/ManualModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ManualModule;
    .param p2, "x1"    # Lcom/android/camera/ManualModule$1;

    .prologue
    .line 3011
    invoke-direct {p0, p1}, Lcom/android/camera/ManualModule$PictureCallbackFactory;-><init>(Lcom/android/camera/ManualModule;)V

    return-void
.end method


# virtual methods
.method public IsUsePostProcess()Z
    .locals 1

    .prologue
    .line 3034
    const/4 v0, 0x0

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 3038
    iget-object v0, p0, Lcom/android/camera/ManualModule$PictureCallbackFactory;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$3500(Lcom/android/camera/ManualModule;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getJpegPictureCallback(Lcom/android/camera/ManualModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 2
    .param p1, "memento"    # Lcom/android/camera/ManualModule$Memento;

    .prologue
    .line 3026
    new-instance v0, Lcom/android/camera/ManualModule$JpegPictureCallback;

    iget-object v1, p0, Lcom/android/camera/ManualModule$PictureCallbackFactory;->this$0:Lcom/android/camera/ManualModule;

    invoke-direct {v0, v1, p1}, Lcom/android/camera/ManualModule$JpegPictureCallback;-><init>(Lcom/android/camera/ManualModule;Lcom/android/camera/ManualModule$Memento;)V

    return-object v0
.end method

.method public getPostViewPictureCallback(Lcom/android/camera/ManualModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 1
    .param p1, "memento"    # Lcom/android/camera/ManualModule$Memento;

    .prologue
    .line 3022
    iget-object v0, p0, Lcom/android/camera/ManualModule$PictureCallbackFactory;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$5800(Lcom/android/camera/ManualModule;)Lcom/android/camera/ManualModule$PostViewPictureCallback;

    move-result-object v0

    return-object v0
.end method

.method public getRawPictureCallback(Lcom/android/camera/ManualModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 1
    .param p1, "memento"    # Lcom/android/camera/ManualModule$Memento;

    .prologue
    .line 3018
    iget-object v0, p0, Lcom/android/camera/ManualModule$PictureCallbackFactory;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$5600(Lcom/android/camera/ManualModule;)Lcom/android/camera/ManualModule$RawPictureCallback;

    move-result-object v0

    return-object v0
.end method

.method public getShutterCallback(ZLcom/android/camera/ManualModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;
    .locals 2
    .param p1, "needAnimation"    # Z
    .param p2, "memento"    # Lcom/android/camera/ManualModule$Memento;

    .prologue
    .line 3014
    new-instance v0, Lcom/android/camera/ManualModule$ShutterCallback;

    iget-object v1, p0, Lcom/android/camera/ManualModule$PictureCallbackFactory;->this$0:Lcom/android/camera/ManualModule;

    invoke-direct {v0, v1, p1}, Lcom/android/camera/ManualModule$ShutterCallback;-><init>(Lcom/android/camera/ManualModule;Z)V

    return-object v0
.end method

.method public needFakeImage()Z
    .locals 1

    .prologue
    .line 3042
    const/4 v0, 0x0

    return v0
.end method

.method public showFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 3030
    iget-object v0, p0, Lcom/android/camera/ManualModule$PictureCallbackFactory;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$1000(Lcom/android/camera/ManualModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3031
    return-void
.end method

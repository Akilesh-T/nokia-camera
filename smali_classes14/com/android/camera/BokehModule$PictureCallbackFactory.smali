.class Lcom/android/camera/BokehModule$PictureCallbackFactory;
.super Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;
.source "BokehModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BokehModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PictureCallbackFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/BokehModule;)V
    .locals 1

    .prologue
    .line 3453
    iput-object p1, p0, Lcom/android/camera/BokehModule$PictureCallbackFactory;->this$0:Lcom/android/camera/BokehModule;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;-><init>(Lcom/android/camera/BokehModule;Lcom/android/camera/BokehModule$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/BokehModule;Lcom/android/camera/BokehModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/BokehModule;
    .param p2, "x1"    # Lcom/android/camera/BokehModule$1;

    .prologue
    .line 3453
    invoke-direct {p0, p1}, Lcom/android/camera/BokehModule$PictureCallbackFactory;-><init>(Lcom/android/camera/BokehModule;)V

    return-void
.end method


# virtual methods
.method public IsUsePostProcess()Z
    .locals 1

    .prologue
    .line 3471
    const/4 v0, 0x0

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 3475
    iget-object v0, p0, Lcom/android/camera/BokehModule$PictureCallbackFactory;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$3100(Lcom/android/camera/BokehModule;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getJpegPictureCallback(Lcom/android/camera/BokehModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 1
    .param p1, "memento"    # Lcom/android/camera/BokehModule$Memento;

    .prologue
    .line 3463
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPostViewPictureCallback(Lcom/android/camera/BokehModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 1
    .param p1, "memento"    # Lcom/android/camera/BokehModule$Memento;

    .prologue
    .line 3459
    iget-object v0, p0, Lcom/android/camera/BokehModule$PictureCallbackFactory;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$5600(Lcom/android/camera/BokehModule;)Lcom/android/camera/BokehModule$PostViewPictureCallback;

    move-result-object v0

    return-object v0
.end method

.method public getRawPictureCallback(Lcom/android/camera/BokehModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 2
    .param p1, "memento"    # Lcom/android/camera/BokehModule$Memento;

    .prologue
    .line 3455
    new-instance v0, Lcom/android/camera/BokehModule$RawPictureCallback;

    iget-object v1, p0, Lcom/android/camera/BokehModule$PictureCallbackFactory;->this$0:Lcom/android/camera/BokehModule;

    invoke-direct {v0, v1, p1}, Lcom/android/camera/BokehModule$RawPictureCallback;-><init>(Lcom/android/camera/BokehModule;Lcom/android/camera/BokehModule$Memento;)V

    return-object v0
.end method

.method public needFakeImage()Z
    .locals 1

    .prologue
    .line 3479
    const/4 v0, 0x1

    return v0
.end method

.method public showFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 3467
    iget-object v0, p0, Lcom/android/camera/BokehModule$PictureCallbackFactory;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$900(Lcom/android/camera/BokehModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3468
    return-void
.end method

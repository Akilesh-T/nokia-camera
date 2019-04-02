.class Lcom/android/camera/PhotoModule$PictureCallbackFactory;
.super Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PictureCallbackFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 1

    .prologue
    .line 1759
    iput-object p1, p0, Lcom/android/camera/PhotoModule$PictureCallbackFactory;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule;
    .param p2, "x1"    # Lcom/android/camera/PhotoModule$1;

    .prologue
    .line 1759
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$PictureCallbackFactory;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public IsUsePostProcess()Z
    .locals 1

    .prologue
    .line 1777
    const/4 v0, 0x0

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PictureCallbackFactory;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getJpegPictureCallback(Lcom/android/camera/PhotoModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 2
    .param p1, "memento"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1769
    new-instance v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$PictureCallbackFactory;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {v0, v1, p1}, Lcom/android/camera/PhotoModule$JpegPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$Memento;)V

    return-object v0
.end method

.method public getPostViewPictureCallback(Lcom/android/camera/PhotoModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 1
    .param p1, "memento"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PictureCallbackFactory;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$8200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    move-result-object v0

    return-object v0
.end method

.method public getRawPictureCallback(Lcom/android/camera/PhotoModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 1
    .param p1, "memento"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PictureCallbackFactory;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$8500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$RawPictureCallback;

    move-result-object v0

    return-object v0
.end method

.method public needFakeImage()Z
    .locals 1

    .prologue
    .line 1785
    const/4 v0, 0x0

    return v0
.end method

.method public showFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PictureCallbackFactory;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1774
    return-void
.end method

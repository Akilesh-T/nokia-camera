.class Lcom/android/camera/BeautyModule$PictureCallbackFactory;
.super Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;
.source "BeautyModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BeautyModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PictureCallbackFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BeautyModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/BeautyModule;)V
    .locals 1

    .prologue
    .line 2587
    iput-object p1, p0, Lcom/android/camera/BeautyModule$PictureCallbackFactory;->this$0:Lcom/android/camera/BeautyModule;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;-><init>(Lcom/android/camera/BeautyModule;Lcom/android/camera/BeautyModule$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/BeautyModule;Lcom/android/camera/BeautyModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/BeautyModule;
    .param p2, "x1"    # Lcom/android/camera/BeautyModule$1;

    .prologue
    .line 2587
    invoke-direct {p0, p1}, Lcom/android/camera/BeautyModule$PictureCallbackFactory;-><init>(Lcom/android/camera/BeautyModule;)V

    return-void
.end method


# virtual methods
.method public IsUsePostProcess()Z
    .locals 1

    .prologue
    .line 2605
    const/4 v0, 0x0

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/android/camera/BeautyModule$PictureCallbackFactory;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$4300(Lcom/android/camera/BeautyModule;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getJpegPictureCallback(Lcom/android/camera/BeautyModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 2
    .param p1, "memento"    # Lcom/android/camera/BeautyModule$Memento;

    .prologue
    .line 2597
    new-instance v0, Lcom/android/camera/BeautyModule$JpegPictureCallback;

    iget-object v1, p0, Lcom/android/camera/BeautyModule$PictureCallbackFactory;->this$0:Lcom/android/camera/BeautyModule;

    invoke-direct {v0, v1, p1}, Lcom/android/camera/BeautyModule$JpegPictureCallback;-><init>(Lcom/android/camera/BeautyModule;Lcom/android/camera/BeautyModule$Memento;)V

    return-object v0
.end method

.method public getPostViewPictureCallback(Lcom/android/camera/BeautyModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 1
    .param p1, "memento"    # Lcom/android/camera/BeautyModule$Memento;

    .prologue
    .line 2593
    iget-object v0, p0, Lcom/android/camera/BeautyModule$PictureCallbackFactory;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$5000(Lcom/android/camera/BeautyModule;)Lcom/android/camera/BeautyModule$PostViewPictureCallback;

    move-result-object v0

    return-object v0
.end method

.method public getRawPictureCallback(Lcom/android/camera/BeautyModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 1
    .param p1, "memento"    # Lcom/android/camera/BeautyModule$Memento;

    .prologue
    .line 2589
    iget-object v0, p0, Lcom/android/camera/BeautyModule$PictureCallbackFactory;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$4900(Lcom/android/camera/BeautyModule;)Lcom/android/camera/BeautyModule$RawPictureCallback;

    move-result-object v0

    return-object v0
.end method

.method public needFakeImage()Z
    .locals 1

    .prologue
    .line 2613
    const/4 v0, 0x1

    return v0
.end method

.method public showFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 2601
    iget-object v0, p0, Lcom/android/camera/BeautyModule$PictureCallbackFactory;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$500(Lcom/android/camera/BeautyModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2602
    return-void
.end method

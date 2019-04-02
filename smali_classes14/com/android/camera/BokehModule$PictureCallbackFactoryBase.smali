.class abstract Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;
.super Ljava/lang/Object;
.source "BokehModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BokehModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PictureCallbackFactoryBase"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/BokehModule;)V
    .locals 0

    .prologue
    .line 3438
    iput-object p1, p0, Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;->this$0:Lcom/android/camera/BokehModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/BokehModule;Lcom/android/camera/BokehModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/BokehModule;
    .param p2, "x1"    # Lcom/android/camera/BokehModule$1;

    .prologue
    .line 3438
    invoke-direct {p0, p1}, Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;-><init>(Lcom/android/camera/BokehModule;)V

    return-void
.end method


# virtual methods
.method public abstract IsUsePostProcess()Z
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getJpegPictureCallback(Lcom/android/camera/BokehModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
.end method

.method public abstract getPostViewPictureCallback(Lcom/android/camera/BokehModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
.end method

.method public abstract getRawPictureCallback(Lcom/android/camera/BokehModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
.end method

.method public abstract needFakeImage()Z
.end method

.method public abstract showFailure(Ljava/lang/String;)V
.end method

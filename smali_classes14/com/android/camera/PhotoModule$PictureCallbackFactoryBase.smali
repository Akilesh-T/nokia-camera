.class abstract Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;
.super Ljava/lang/Object;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PictureCallbackFactoryBase"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 1697
    iput-object p1, p0, Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule;
    .param p2, "x1"    # Lcom/android/camera/PhotoModule$1;

    .prologue
    .line 1697
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public abstract IsUsePostProcess()Z
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getJpegPictureCallback(Lcom/android/camera/PhotoModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
.end method

.method public abstract getPostViewPictureCallback(Lcom/android/camera/PhotoModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
.end method

.method public abstract getRawPictureCallback(Lcom/android/camera/PhotoModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
.end method

.method public abstract needFakeImage()Z
.end method

.method public abstract showFailure(Ljava/lang/String;)V
.end method

.class Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;
.super Ljava/lang/Object;
.source "MTKCameraExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BurstCallbackForward"
.end annotation


# instance fields
.field private final NUM_PER_SHOT:I

.field private final lCaptureBurstCallback:Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;

.field private final lHandler:Landroid/os/Handler;

.field public final mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field public final mPostViewCallback:Landroid/hardware/Camera$PictureCallback;

.field public final mRawCallback:Landroid/hardware/Camera$PictureCallback;

.field private mReceivedShutterCount:I

.field public final mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field final synthetic this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;


# direct methods
.method public constructor <init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;I)V
    .locals 2
    .param p1    # Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "captureBurstCallback"    # Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;
    .param p4, "num_per_shot"    # I

    .prologue
    const/4 v1, 0x0

    .line 67
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->mReceivedShutterCount:I

    .line 68
    iput-object p2, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->lHandler:Landroid/os/Handler;

    .line 69
    iput-object p3, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->lCaptureBurstCallback:Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;

    .line 70
    iput p4, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->NUM_PER_SHOT:I

    .line 72
    new-instance v0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward$1;

    invoke-direct {v0, p0, p1}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward$1;-><init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 79
    iput-object v1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->mRawCallback:Landroid/hardware/Camera$PictureCallback;

    .line 81
    iput-object v1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->mPostViewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 83
    new-instance v0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward$2;

    invoke-direct {v0, p0, p1}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward$2;-><init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 103
    return-void
.end method

.method static synthetic access$100(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->mReceivedShutterCount:I

    return v0
.end method

.method static synthetic access$108(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->mReceivedShutterCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->mReceivedShutterCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->lCaptureBurstCallback:Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->NUM_PER_SHOT:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->lHandler:Landroid/os/Handler;

    return-object v0
.end method

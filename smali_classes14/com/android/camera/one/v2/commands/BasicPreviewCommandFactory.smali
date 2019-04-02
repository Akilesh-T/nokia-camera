.class public Lcom/android/camera/one/v2/commands/BasicPreviewCommandFactory;
.super Ljava/lang/Object;
.source "BasicPreviewCommandFactory.java"

# interfaces
.implements Lcom/android/camera/one/v2/commands/PreviewCommandFactory;


# instance fields
.field private final mCameraId:I

.field private final mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field private final mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final mRecordController:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/core/FrameServer;ILcom/android/camera/async/ConcurrentState;Lcom/android/camera/one/OneCameraCaptureSetting;)V
    .locals 0
    .param p1, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p2, "cameraId"    # I
    .param p4, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "I",
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p3, "recordController":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/camera/one/v2/commands/BasicPreviewCommandFactory;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 38
    iput p2, p0, Lcom/android/camera/one/v2/commands/BasicPreviewCommandFactory;->mCameraId:I

    .line 39
    iput-object p3, p0, Lcom/android/camera/one/v2/commands/BasicPreviewCommandFactory;->mRecordController:Lcom/android/camera/async/ConcurrentState;

    .line 40
    iput-object p4, p0, Lcom/android/camera/one/v2/commands/BasicPreviewCommandFactory;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    .line 41
    return-void
.end method


# virtual methods
.method public get(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;I)Lcom/android/camera/one/v2/commands/CameraCommand;
    .locals 7
    .param p1, "previewRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p2, "templateType"    # I

    .prologue
    .line 45
    new-instance v0, Lcom/android/camera/one/v2/commands/PreviewCommand;

    iget-object v1, p0, Lcom/android/camera/one/v2/commands/BasicPreviewCommandFactory;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    iget v2, p0, Lcom/android/camera/one/v2/commands/BasicPreviewCommandFactory;->mCameraId:I

    iget-object v5, p0, Lcom/android/camera/one/v2/commands/BasicPreviewCommandFactory;->mRecordController:Lcom/android/camera/async/ConcurrentState;

    iget-object v6, p0, Lcom/android/camera/one/v2/commands/BasicPreviewCommandFactory;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/one/v2/commands/PreviewCommand;-><init>(Lcom/android/camera/one/v2/core/FrameServer;ILcom/android/camera/one/v2/core/RequestBuilder$Factory;ILcom/android/camera/async/ConcurrentState;Lcom/android/camera/one/OneCameraCaptureSetting;)V

    return-object v0
.end method

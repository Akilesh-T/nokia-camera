.class public Lcom/android/camera/one/v2/commands/ZslPreviewCommandFactory;
.super Ljava/lang/Object;
.source "ZslPreviewCommandFactory.java"

# interfaces
.implements Lcom/android/camera/one/v2/commands/PreviewCommandFactory;


# static fields
.field private static final ZSL_WARMUP_BURST_SIZE:I = 0x5


# instance fields
.field private final mCameraId:I

.field private final mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field private final mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final mPreviewWarmupRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

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

.field private final mZslRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/core/FrameServer;ILcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/one/OneCameraCaptureSetting;)V
    .locals 0
    .param p1, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p2, "cameraId"    # I
    .param p3, "previewWarmupRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p4, "zslRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p6, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "I",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p5, "recordController":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommandFactory;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 44
    iput p2, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommandFactory;->mCameraId:I

    .line 45
    iput-object p3, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommandFactory;->mPreviewWarmupRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 46
    iput-object p4, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommandFactory;->mZslRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 47
    iput-object p5, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommandFactory;->mRecordController:Lcom/android/camera/async/ConcurrentState;

    .line 48
    iput-object p6, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommandFactory;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    .line 49
    return-void
.end method


# virtual methods
.method public get(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;I)Lcom/android/camera/one/v2/commands/CameraCommand;
    .locals 12
    .param p1, "previewRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p2, "templateType"    # I

    .prologue
    .line 53
    new-instance v0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;

    iget-object v1, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommandFactory;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    iget v2, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommandFactory;->mCameraId:I

    iget-object v3, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommandFactory;->mPreviewWarmupRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget-object v5, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommandFactory;->mZslRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    const/4 v9, 0x5

    iget-object v10, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommandFactory;->mRecordController:Lcom/android/camera/async/ConcurrentState;

    iget-object v11, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommandFactory;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    move v4, p2

    move v6, p2

    move-object v7, p1

    move v8, p2

    invoke-direct/range {v0 .. v11}, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;-><init>(Lcom/android/camera/one/v2/core/FrameServer;ILcom/android/camera/one/v2/core/RequestBuilder$Factory;ILcom/android/camera/one/v2/core/RequestBuilder$Factory;ILcom/android/camera/one/v2/core/RequestBuilder$Factory;IILcom/android/camera/async/ConcurrentState;Lcom/android/camera/one/OneCameraCaptureSetting;)V

    return-object v0
.end method

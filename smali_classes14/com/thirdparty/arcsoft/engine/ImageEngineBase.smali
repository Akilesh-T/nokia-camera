.class public abstract Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
.super Ljava/lang/Object;
.source "ImageEngineBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thirdparty/arcsoft/engine/ImageEngineBase$ImageEngineStateHolder;,
        Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
    }
.end annotation


# static fields
.field public static final ENGINE_FRAME_LONG_TIMEOUT_MS:J = 0x2710L

.field public static final ENGINE_FRAME_TIMEOUT_MS:J = 0x7530L

.field public static final ENGINE_OPERATION_TIMEOUT_MS:J = 0xdacL

.field public static final ERROR_ENGING_FRAME_ERROR:I = -0x6

.field public static final ERROR_ENGING_FRAME_TIMEOUT:I = -0x5

.field public static final ERROR_ENGING_INIT_FAIL:I = -0x1

.field public static final ERROR_ENGING_RELEASED:I = -0x3

.field public static final ERROR_ENGING_RELEASE_FAIL:I = -0x2

.field public static final ERROR_ENGING_RUNTIME_ERROR:I = -0x4


# instance fields
.field protected final mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

.field protected final mOnProcessStateListener:Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;


# direct methods
.method public constructor <init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->mOnProcessStateListener:Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    .line 59
    new-instance v0, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$ImageEngineStateHolder;

    invoke-direct {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$ImageEngineStateHolder;-><init>()V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    .line 60
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public addFrame(I[BZ)V
    .locals 0
    .param p1, "frameNum"    # I
    .param p2, "data"    # [B
    .param p3, "sync"    # Z

    .prologue
    .line 72
    return-void
.end method

.method public addFrame(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;I[BZ)V
    .locals 0
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p3, "frameNum"    # I
    .param p4, "data"    # [B
    .param p5, "sync"    # Z

    .prologue
    .line 74
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method protected getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    return-object v0
.end method

.method protected getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->mOnProcessStateListener:Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    return-object v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

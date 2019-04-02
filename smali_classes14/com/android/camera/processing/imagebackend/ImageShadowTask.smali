.class Lcom/android/camera/processing/imagebackend/ImageShadowTask;
.super Ljava/lang/Object;
.source "ImageShadowTask.java"

# interfaces
.implements Lcom/android/camera/processing/ProcessingTask;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mCaptureSession:Lcom/android/camera/session/CaptureSession;

.field private mDoneListener:Lcom/android/camera/processing/ProcessingTask$ProcessingTaskDoneListener;

.field private final mProtocol:Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;

.field private final mRunnableWhenDone:Ljava/lang/Runnable;

.field private mSignal:Ljava/util/concurrent/locks/Condition;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ImageShadowTask"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;Lcom/android/camera/session/CaptureSession;Lcom/google/common/base/Optional;)V
    .locals 1
    .param p1, "protocol"    # Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;
    .param p2, "captureSession"    # Lcom/android/camera/session/CaptureSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;",
            "Lcom/android/camera/session/CaptureSession;",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p3, "runnableWhenDone":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/Runnable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->mProtocol:Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;

    .line 75
    iput-object p2, p0, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->mCaptureSession:Lcom/android/camera/session/CaptureSession;

    .line 76
    invoke-virtual {p3}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->mRunnableWhenDone:Ljava/lang/Runnable;

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->mRunnableWhenDone:Ljava/lang/Runnable;

    goto :goto_0
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method getProtocol()Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->mProtocol:Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;

    return-object v0
.end method

.method public getRunnableWhenDone()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->mRunnableWhenDone:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getSession()Lcom/android/camera/session/CaptureSession;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->mCaptureSession:Lcom/android/camera/session/CaptureSession;

    return-object v0
.end method

.method public process(Landroid/content/Context;Lcom/android/camera/app/CameraServices;Lcom/android/camera/session/CaptureSession;)Lcom/android/camera/processing/ProcessingTask$ProcessingResult;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "services"    # Lcom/android/camera/app/CameraServices;
    .param p3, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 98
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->mProtocol:Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;

    invoke-virtual {v2}, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->block()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    new-instance v1, Lcom/android/camera/processing/ProcessingTask$ProcessingResult;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->mCaptureSession:Lcom/android/camera/session/CaptureSession;

    invoke-direct {v1, v2, v3}, Lcom/android/camera/processing/ProcessingTask$ProcessingResult;-><init>(ZLcom/android/camera/session/CaptureSession;)V

    .line 106
    .local v1, "finalResult":Lcom/android/camera/processing/ProcessingTask$ProcessingResult;
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->mDoneListener:Lcom/android/camera/processing/ProcessingTask$ProcessingTaskDoneListener;

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->mDoneListener:Lcom/android/camera/processing/ProcessingTask$ProcessingTaskDoneListener;

    invoke-interface {v2, v1}, Lcom/android/camera/processing/ProcessingTask$ProcessingTaskDoneListener;->onDone(Lcom/android/camera/processing/ProcessingTask$ProcessingResult;)V

    .line 109
    :cond_0
    return-object v1

    .line 99
    .end local v1    # "finalResult":Lcom/android/camera/processing/ProcessingTask$ProcessingResult;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v2, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Image Shadow task Interrupted."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public setDoneListener(Lcom/android/camera/processing/ProcessingTask$ProcessingTaskDoneListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/processing/ProcessingTask$ProcessingTaskDoneListener;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->mDoneListener:Lcom/android/camera/processing/ProcessingTask$ProcessingTaskDoneListener;

    .line 142
    return-void
.end method

.method public suspend()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

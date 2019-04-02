.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
.super Lcom/android/ex/camera2/portability/CameraAgent;
.source "AndroidCameraAgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraStateHolder;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

.field private static final sDefaultExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;


# instance fields
.field private final mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

.field private final mCameraHandlerThread:Landroid/os/HandlerThread;

.field private final mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

.field private mCapabilities:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

.field private mCharacteristics:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

.field private final mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

.field private mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

.field private final mProfiler:Lcom/android/camera/stats/profiler/Profiler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "AndCamAgntImp"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    .line 75
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->sDefaultExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/CameraAgent;-><init>()V

    .line 73
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 94
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->sDefaultExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    .line 97
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandlerThread:Landroid/os/HandlerThread;

    .line 98
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 99
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraAgent;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    .line 100
    new-instance v0, Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    .line 101
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraStateHolder;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraStateHolder;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

    .line 102
    new-instance v0, Lcom/android/ex/camera2/portability/DispatchThread;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandlerThread:Landroid/os/HandlerThread;

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;-><init>(Landroid/os/Handler;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    .line 103
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/DispatchThread;->start()V

    .line 104
    return-void
.end method

.method static synthetic access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraExceptionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/camera/stats/profiler/Profiler;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCharacteristics:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCharacteristics:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCapabilities:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCapabilities:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    return-object v0
.end method


# virtual methods
.method public getCameraDeviceInfo()Lcom/android/ex/camera2/portability/CameraDeviceInfo;
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->create()Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    return-object v0
.end method

.method protected getCameraHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    return-object v0
.end method

.method protected getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

    return-object v0
.end method

.method protected getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    return-object v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "recycle"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->closeCamera(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Z)V

    .line 110
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/DispatchThread;->end()V

    .line 111
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->invalidate()V

    .line 112
    return-void
.end method

.method public setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V
    .locals 0
    .param p1, "exceptionHandler"    # Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    .prologue
    .line 142
    if-eqz p1, :cond_0

    .end local p1    # "exceptionHandler":Lcom/android/ex/camera2/portability/CameraExceptionHandler;
    :goto_0
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    .line 143
    return-void

    .line 142
    .restart local p1    # "exceptionHandler":Lcom/android/ex/camera2/portability/CameraExceptionHandler;
    :cond_0
    sget-object p1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->sDefaultExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    goto :goto_0
.end method

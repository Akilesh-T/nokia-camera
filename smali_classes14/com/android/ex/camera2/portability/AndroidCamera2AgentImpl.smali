.class Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;
.super Lcom/android/ex/camera2/portability/CameraAgent;
.source "AndroidCamera2AgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;,
        Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2StateHolder;,
        Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;,
        Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;,
        Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private final mCameraDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

.field private final mCameraHandlerThread:Landroid/os/HandlerThread;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

.field private final mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

.field private mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

.field private final mNoisemaker:Landroid/media/MediaActionSound;

.field private mNumCameraDevices:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "AndCam2AgntImp"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/CameraAgent;-><init>()V

    .line 88
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera2 Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraHandlerThread:Landroid/os/HandlerThread;

    .line 89
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 90
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .line 91
    new-instance v0, Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    .line 92
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2StateHolder;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2StateHolder;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

    .line 93
    new-instance v0, Lcom/android/ex/camera2/portability/DispatchThread;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraHandlerThread:Landroid/os/HandlerThread;

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;-><init>(Landroid/os/Handler;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    .line 94
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/DispatchThread;->start()V

    .line 95
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 96
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mNoisemaker:Landroid/media/MediaActionSound;

    .line 97
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mNoisemaker:Landroid/media/MediaActionSound;

    invoke-virtual {v0, v3}, Landroid/media/MediaActionSound;->load(I)V

    .line 99
    iput v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mNumCameraDevices:I

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraDevices:Ljava/util/List;

    .line 101
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->updateCameraDevices()Z

    .line 102
    return-void
.end method

.method static synthetic access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraDevices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Landroid/media/MediaActionSound;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mNoisemaker:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Landroid/hardware/camera2/CameraManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraExceptionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    return-object v0
.end method

.method private updateCameraDevices()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 111
    :try_start_0
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "currentCameraDevices":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 115
    .local v1, "currentSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraDevices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 116
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraDevices:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 117
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraDevices:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v4, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mNumCameraDevices:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mNumCameraDevices:I

    .line 115
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    :cond_1
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraDevices:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 124
    array-length v7, v0

    move v6, v5

    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v2, v0, v6

    .line 125
    .local v2, "device":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 126
    iget-object v8, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraDevices:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget v8, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mNumCameraDevices:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mNumCameraDevices:I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 131
    .end local v2    # "device":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    .line 134
    .end local v0    # "currentCameraDevices":[Ljava/lang/String;
    .end local v1    # "currentSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "index":I
    :goto_2
    return v5

    .line 132
    :catch_0
    move-exception v3

    .line 133
    .local v3, "ex":Landroid/hardware/camera2/CameraAccessException;
    sget-object v6, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v7, "Could not get device listing from camera subsystem"

    invoke-static {v6, v7, v3}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method public getCameraDeviceInfo()Lcom/android/ex/camera2/portability/CameraDeviceInfo;
    .locals 4

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->updateCameraDevices()Z

    .line 151
    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraDevices:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mNumCameraDevices:I

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;-><init>(Landroid/hardware/camera2/CameraManager;[Ljava/lang/String;I)V

    return-object v1
.end method

.method protected getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    return-object v0
.end method

.method protected getCameraHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    return-object v0
.end method

.method protected getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

    return-object v0
.end method

.method protected getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    return-object v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 141
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "recycle"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mNoisemaker:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 143
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/DispatchThread;->end()V

    .line 144
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->invalidate()V

    .line 145
    return-void
.end method

.method public setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V
    .locals 0
    .param p1, "exceptionHandler"    # Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    .line 178
    return-void
.end method

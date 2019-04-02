.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;
.super Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;
.source "QCCameraExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/extension/QCCameraExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BokehImageProcess"
.end annotation


# instance fields
.field private final lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

.field private mBokeh_Info:Lcom/android/camera/mpo/Bokeh_Info;

.field private mMaxPictureCount:I

.field private mReceivedPictureCount:I

.field private mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;


# direct methods
.method public constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
    .locals 2
    .param p1    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cameraExtension"    # Lcom/android/ex/camera2/portability/extension/CameraExtension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "cameraExtensionCaptureCallbacks"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    .prologue
    const/4 v1, 0x0

    .line 1116
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    .line 1117
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;-><init>(Lcom/android/ex/camera2/portability/extension/CameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;)V

    .line 1111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1112
    iput v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->mReceivedPictureCount:I

    .line 1113
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->mMaxPictureCount:I

    .line 1118
    iput-object p4, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    .line 1119
    new-instance v0, Lcom/android/camera/mpo/Bokeh_Info;

    invoke-direct {v0}, Lcom/android/camera/mpo/Bokeh_Info;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->mBokeh_Info:Lcom/android/camera/mpo/Bokeh_Info;

    .line 1120
    return-void
.end method

.method static synthetic access$2600(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    return-object v0
.end method

.method static synthetic access$2808(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;

    .prologue
    .line 1109
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->mReceivedPictureCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->mReceivedPictureCount:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;
    .param p1, "x1"    # [B

    .prologue
    .line 1109
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->onProcessData([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;

    .prologue
    .line 1109
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->onProcessDone()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;)Lcom/android/camera/mpo/Bokeh_Info;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->mBokeh_Info:Lcom/android/camera/mpo/Bokeh_Info;

    return-object v0
.end method

.method private onProcessData([B)Z
    .locals 7
    .param p1, "data"    # [B

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1183
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BokehImageProcess - onProcessData["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->mReceivedPictureCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1184
    array-length v4, p1

    if-ne v4, v2, :cond_0

    move v0, v2

    .line 1185
    .local v0, "isErrorCode":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1187
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BokehImageProcess - onProcessData Failed["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->mReceivedPictureCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1199
    :goto_1
    iget v4, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->mReceivedPictureCount:I

    iget v5, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->mMaxPictureCount:I

    if-ne v4, v5, :cond_4

    :goto_2
    return v2

    .end local v0    # "isErrorCode":Z
    :cond_0
    move v0, v3

    .line 1184
    goto :goto_0

    .line 1189
    .restart local v0    # "isErrorCode":Z
    :cond_1
    invoke-static {p1}, Lcom/android/camera/Exif;->isValid([B)Z

    move-result v1

    .line 1190
    .local v1, "isValid":Z
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BokehImageProcess - onProcessData Succeed["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->mReceivedPictureCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] isValid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mSubData:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->mBokeh_Info:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v6, v6, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1191
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->mBokeh_Info:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v4, v4, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    if-nez v4, :cond_2

    .line 1192
    iget-object v4, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->mBokeh_Info:Lcom/android/camera/mpo/Bokeh_Info;

    iput-object p1, v4, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    goto :goto_1

    .line 1193
    :cond_2
    if-eqz v1, :cond_3

    .line 1194
    iget-object v4, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->mBokeh_Info:Lcom/android/camera/mpo/Bokeh_Info;

    iput-object p1, v4, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    goto :goto_1

    .line 1196
    :cond_3
    iget-object v4, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->mBokeh_Info:Lcom/android/camera/mpo/Bokeh_Info;

    iput-object p1, v4, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    goto :goto_1

    .end local v1    # "isValid":Z
    :cond_4
    move v2, v3

    .line 1199
    goto :goto_2
.end method

.method private onProcessDone()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1203
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1204
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 1217
    :cond_0
    :goto_0
    return-void

    .line 1205
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1206
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "BokehImageProcess - onProcessDone"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1207
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 1210
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$4;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$4;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1205
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public abort()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1165
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1166
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1167
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1168
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "BokehImageProcess - abort"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1171
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1173
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0, v3}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    goto :goto_0

    .line 1167
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 1180
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$1;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$1;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;)V

    new-instance v2, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$2;

    invoke-direct {v2, p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$2;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;)V

    const/4 v3, 0x0

    new-instance v4, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$3;

    invoke-direct {v4, p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$3;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1161
    return-void
.end method

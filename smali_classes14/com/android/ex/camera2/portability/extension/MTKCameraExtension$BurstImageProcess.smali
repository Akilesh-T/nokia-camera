.class Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstImageProcess;
.super Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;
.source "MTKCameraExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BurstImageProcess"
.end annotation


# instance fields
.field private final burstCallbackForward:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

.field final synthetic this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;


# direct methods
.method public constructor <init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;)V
    .locals 0
    .param p1    # Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cameraExtension"    # Lcom/android/ex/camera2/portability/extension/CameraExtension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "callbackForward"    # Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;-><init>(Lcom/android/ex/camera2/portability/extension/CameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;)V

    .line 112
    iput-object p4, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstImageProcess;->burstCallbackForward:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

    .line 113
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstImageProcess;->finish()V

    .line 123
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstImageProcess;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->stopBurst(Landroid/os/Handler;)V

    .line 128
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->access$502(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    .line 129
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstImageProcess;->start()V

    .line 118
    return-void
.end method

.method public start()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 134
    :try_start_0
    const-class v7, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 136
    .local v4, "loader":Ljava/lang/ClassLoader;
    const-string v7, "android.hardware.Camera$ContinuousShotCallback"

    invoke-virtual {v4, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 138
    .local v0, "callback":Ljava/lang/Class;
    const-string v7, "android.hardware.Camera"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 140
    .local v1, "cameraClazz":Ljava/lang/Class;
    new-instance v3, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstImageProcess$1;

    invoke-direct {v3, p0}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstImageProcess$1;-><init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstImageProcess;)V

    .line 153
    .local v3, "inhandler":Ljava/lang/reflect/InvocationHandler;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v4, v7, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v5

    .line 157
    .local v5, "object":Ljava/lang/Object;
    const-string v7, "setContinuousShotCallback"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 159
    .local v6, "openMethod":Ljava/lang/reflect/Method;
    iget-object v7, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v0    # "callback":Ljava/lang/Class;
    .end local v1    # "cameraClazz":Ljava/lang/Class;
    .end local v3    # "inhandler":Ljava/lang/reflect/InvocationHandler;
    .end local v4    # "loader":Ljava/lang/ClassLoader;
    .end local v5    # "object":Ljava/lang/Object;
    .end local v6    # "openMethod":Ljava/lang/reflect/Method;
    :goto_0
    iget-object v7, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v7

    iget-object v8, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstImageProcess;->burstCallbackForward:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

    iget-object v8, v8, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v9, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstImageProcess;->burstCallbackForward:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

    iget-object v9, v9, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v7, v8, v11, v11, v9}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 167
    return-void

    .line 161
    :catch_0
    move-exception v2

    .line 162
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

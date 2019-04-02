.class Lcom/android/camera/app/OneCameraController$7;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "OneCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/OneCameraController;->checkAndOpenSubCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isFirstCallback:Z

.field final synthetic this$0:Lcom/android/camera/app/OneCameraController;

.field final synthetic val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/one/OneCamera$OpenCallback;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/app/OneCameraController;

    .prologue
    .line 849
    iput-object p1, p0, Lcom/android/camera/app/OneCameraController$7;->this$0:Lcom/android/camera/app/OneCameraController;

    iput-object p2, p0, Lcom/android/camera/app/OneCameraController$7;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 850
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/app/OneCameraController$7;->isFirstCallback:Z

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 934
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClosed : sub-device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 935
    iget-boolean v0, p0, Lcom/android/camera/app/OneCameraController$7;->isFirstCallback:Z

    if-eqz v0, :cond_0

    .line 936
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/OneCameraController$7;->isFirstCallback:Z

    .line 937
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/camera/app/OneCameraController;->access$1502(Lcom/android/camera/app/OneCameraController;I)I

    .line 938
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$1600(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 939
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$OpenCallback;->onCameraClosed()V

    .line 941
    :cond_0
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 906
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnected : sub-device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 907
    iget-boolean v0, p0, Lcom/android/camera/app/OneCameraController$7;->isFirstCallback:Z

    if-eqz v0, :cond_0

    .line 908
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/OneCameraController$7;->isFirstCallback:Z

    .line 909
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/camera/app/OneCameraController;->access$1502(Lcom/android/camera/app/OneCameraController;I)I

    .line 910
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$1600(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 911
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 912
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$OpenCallback;->onCameraClosed()V

    .line 914
    :cond_0
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .prologue
    .line 918
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError : sub-device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 919
    iget-boolean v0, p0, Lcom/android/camera/app/OneCameraController$7;->isFirstCallback:Z

    if-eqz v0, :cond_0

    .line 920
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/OneCameraController$7;->isFirstCallback:Z

    .line 921
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/camera/app/OneCameraController;->access$1502(Lcom/android/camera/app/OneCameraController;I)I

    .line 922
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$1600(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 923
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 924
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$OpenCallback;->onFailure()V

    .line 930
    :goto_0
    return-void

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$1100(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_0
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 15
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 853
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOpened : sub-device = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 855
    iget-boolean v0, p0, Lcom/android/camera/app/OneCameraController$7;->isFirstCallback:Z

    if-eqz v0, :cond_1

    .line 856
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/OneCameraController$7;->isFirstCallback:Z

    .line 857
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/camera/app/OneCameraController;->access$1502(Lcom/android/camera/app/OneCameraController;I)I

    .line 859
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$600(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$1400(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/app/OneCameraController$OneCameraDemandChecker;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/OneCameraController$OneCameraDemandChecker;->isOneCameraOnDemand()Z

    move-result v0

    if-nez v0, :cond_2

    .line 860
    :cond_0
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "sub-device opened when no more reqiured, close it."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 861
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$1600(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 862
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 863
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$OpenCallback;->onCameraClosed()V

    .line 902
    :cond_1
    :goto_0
    return-void

    .line 868
    :cond_2
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v11

    .line 869
    .local v11, "cameraId":Lcom/android/camera/device/CameraId;
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$700(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCameraManager;

    move-result-object v0

    invoke-interface {v0, v11}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v13

    .line 871
    .local v13, "oneCameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$600(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->from(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v8

    .line 873
    .local v8, "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/AndroidServices;->provideCameraManager()Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 875
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    iget-object v14, p0, Lcom/android/camera/app/OneCameraController$7;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->this$0:Lcom/android/camera/app/OneCameraController;

    .line 880
    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$900(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v4

    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->this$0:Lcom/android/camera/app/OneCameraController;

    .line 881
    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$1000(Lcom/android/camera/app/OneCameraController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/settings/ResolutionUtil;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v5

    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->this$0:Lcom/android/camera/app/OneCameraController;

    .line 882
    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$1000(Lcom/android/camera/app/OneCameraController;)Landroid/content/Context;

    move-result-object v6

    .line 883
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v7

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->this$0:Lcom/android/camera/app/OneCameraController;

    .line 886
    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$1100(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/FatalErrorHandler;

    move-result-object v10

    move-object/from16 v0, p1

    .line 875
    invoke-static/range {v0 .. v10}, Lcom/android/camera/one/v2/OneCameraCreator;->create(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera/one/config/OneCameraFeatureConfig;Landroid/util/DisplayMetrics;Landroid/content/Context;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/FatalErrorHandler;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/camera/app/OneCameraController;->access$1702(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 888
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$1700(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 889
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    iget-object v1, p0, Lcom/android/camera/app/OneCameraController$7;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$1700(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera$OpenCallback;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 894
    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v8    # "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .end local v11    # "cameraId":Lcom/android/camera/device/CameraId;
    .end local v13    # "oneCameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    :catch_0
    move-exception v12

    .line 895
    .local v12, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Could not get sub-camera characteristics"

    invoke-static {v0, v1, v12}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 896
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$OpenCallback;->onFailure()V

    goto/16 :goto_0

    .line 891
    .end local v12    # "e":Landroid/hardware/camera2/CameraAccessException;
    .restart local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v8    # "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .restart local v11    # "cameraId":Lcom/android/camera/device/CameraId;
    .restart local v13    # "oneCameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Could not construct a Sub-OneCamera object!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$OpenCallback;->onFailure()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 897
    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v8    # "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .end local v11    # "cameraId":Lcom/android/camera/device/CameraId;
    .end local v13    # "oneCameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    :catch_1
    move-exception v12

    .line 898
    .local v12, "e":Lcom/android/camera/one/OneCameraAccessException;
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Could not create sub-OneCamera"

    invoke-static {v0, v1, v12}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 899
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$7;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$OpenCallback;->onFailure()V

    goto/16 :goto_0
.end method

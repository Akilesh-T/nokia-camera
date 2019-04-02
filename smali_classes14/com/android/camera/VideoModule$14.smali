.class Lcom/android/camera/VideoModule$14;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoModule;->startVideoRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;

.field final synthetic val$guard:Lcom/android/camera/stats/profiler/Profile;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoModule;Lcom/android/camera/stats/profiler/Profile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 1854
    iput-object p1, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    iput-object p2, p0, Lcom/android/camera/VideoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageUpdateDone(J)V
    .locals 7
    .param p1, "bytes"    # J

    .prologue
    const/4 v6, 0x1

    .line 1857
    invoke-static {}, Lcom/android/camera/VideoModule;->access$1600()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStorageUpdateDone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1858
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStorageUpdateDone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1859
    const-wide/32 v2, 0x2faf080

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 1860
    invoke-static {}, Lcom/android/camera/VideoModule;->access$1600()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Storage issue, ignore the start request"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1861
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 1985
    :goto_0
    return-void

    .line 1863
    :cond_0
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$2900(Lcom/android/camera/VideoModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1864
    invoke-static {}, Lcom/android/camera/VideoModule;->access$1600()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "in storage callback after camera closed"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1865
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    goto :goto_0

    .line 1868
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Z

    move-result v2

    if-ne v2, v6, :cond_2

    .line 1869
    invoke-static {}, Lcom/android/camera/VideoModule;->access$1600()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "in storage callback after module paused"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1870
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    goto :goto_0

    .line 1877
    :cond_2
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$1000(Lcom/android/camera/VideoModule;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1878
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 1879
    invoke-static {}, Lcom/android/camera/VideoModule;->access$1600()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "in storage callback after recording started"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1883
    :cond_3
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 1884
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$3000(Lcom/android/camera/VideoModule;)V

    .line 1885
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "pauseAudioPlayback"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1887
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/camera/VideoModule;->access$102(Lcom/android/camera/VideoModule;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1888
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    iget-object v3, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$3200(Lcom/android/camera/VideoModule;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/VideoModule;->access$3102(Lcom/android/camera/VideoModule;Z)Z

    .line 1890
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 1891
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$3300(Lcom/android/camera/VideoModule;)Z

    move-result v1

    .line 1892
    .local v1, "success":Z
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "initializeRecorder"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1893
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$3400(Lcom/android/camera/VideoModule;)Landroid/media/MediaRecorder;

    move-result-object v2

    if-eqz v2, :cond_4

    if-nez v1, :cond_5

    .line 1894
    :cond_4
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 1895
    invoke-static {}, Lcom/android/camera/VideoModule;->access$1600()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Fail to initialize media recorder"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1900
    :cond_5
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 1901
    invoke-static {}, Lcom/android/camera/VideoModule;->access$1600()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "before mMediaRecorder.start()"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1902
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$3400(Lcom/android/camera/VideoModule;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 1903
    invoke-static {}, Lcom/android/camera/VideoModule;->access$1600()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "mMediaRecorder.started"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1904
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "mMediaRecorder.started"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1920
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$1400(Lcom/android/camera/VideoModule;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/camera/VideoModule$14$1;

    invoke-direct {v3, p0}, Lcom/android/camera/VideoModule$14$1;-><init>(Lcom/android/camera/VideoModule$14;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1927
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$3700(Lcom/android/camera/VideoModule;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1928
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 1929
    new-instance v2, Lcom/android/camera/ui/RotateTextToast;

    iget-object v3, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v4}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f08010e

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v5}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 1930
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "show ozo toast"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1933
    :cond_6
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1937
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 1938
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$2900(Lcom/android/camera/VideoModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->refreshSettings()V

    .line 1939
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "refreshSettings"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1944
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    iget-object v3, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$2900(Lcom/android/camera/VideoModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/VideoModule;->access$3802(Lcom/android/camera/VideoModule;Lcom/android/ex/camera2/portability/CameraSettings;)Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1946
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2, v6}, Lcom/android/camera/VideoModule;->access$1002(Lcom/android/camera/VideoModule;Z)Z

    .line 1947
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/camera/VideoModule;->access$3902(Lcom/android/camera/VideoModule;J)J

    .line 1948
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 1949
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->lockOrientation()V

    .line 1950
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "lockOrientation"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1951
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/camera/VideoModule;->access$4002(Lcom/android/camera/VideoModule;J)J

    .line 1955
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions(Z)V

    .line 1956
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->hideCaptureIndicator()V

    .line 1958
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 1959
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->applyStateWhenRecordingStateChange()V

    .line 1960
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "applyStateWhenRecordingStateChange"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1962
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$4100(Lcom/android/camera/VideoModule;)Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v2

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_SNAPSHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    .line 1963
    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$300(Lcom/android/camera/VideoModule;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1964
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->showVideoSnapShotButton()V

    .line 1967
    :cond_7
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 1969
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    const v3, 0x7f020310

    invoke-virtual {v2, v3}, Lcom/android/camera/app/CameraAppUI;->startVideoRecordBtnAnim(I)V

    .line 1970
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "animateBottomBarToVideoStop"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1971
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$4200(Lcom/android/camera/VideoModule;)Lcom/android/camera/VideoUI;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/VideoUI;->showRecordingUI(Z)V

    .line 1973
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 1974
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-virtual {v2}, Lcom/android/camera/VideoModule;->setFocusParameters()V

    .line 1975
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "setFocusParameters"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1977
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 1978
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$800(Lcom/android/camera/VideoModule;)V

    .line 1979
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "updateRecordingTime"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1980
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 1981
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "enableKeepScreenOn"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1982
    invoke-static {}, Lcom/android/camera/VideoModule;->access$1600()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Keep Screen On"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1983
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    goto/16 :goto_0

    .line 1905
    :catch_0
    move-exception v0

    .line 1906
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/camera/VideoModule;->access$1600()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Could not start media recorder. "

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1907
    new-instance v2, Lcom/android/camera/ui/RotateTextToast;

    iget-object v3, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v4}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f080217

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    .line 1908
    invoke-static {v5}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v3, 0xbb8

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 1909
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$2000(Lcom/android/camera/VideoModule;)V

    .line 1910
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$3500(Lcom/android/camera/VideoModule;)V

    .line 1912
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$2900(Lcom/android/camera/VideoModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->lock()V

    .line 1913
    iget-object v2, p0, Lcom/android/camera/VideoModule$14;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    goto/16 :goto_0
.end method

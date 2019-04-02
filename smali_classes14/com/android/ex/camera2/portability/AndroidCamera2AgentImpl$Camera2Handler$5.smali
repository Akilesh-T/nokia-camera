.class Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;
.super Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;
.source "AndroidCamera2AgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastAeFrameNumber:J

.field private mLastAfFrameNumber:J

.field private mLastAfState:I

.field final synthetic this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)V
    .locals 4
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .prologue
    const-wide/16 v2, -0x1

    .line 858
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$1;)V

    .line 859
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->mLastAfState:I

    .line 860
    iput-wide v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->mLastAfFrameNumber:J

    .line 861
    iput-wide v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->mLastAeFrameNumber:J

    return-void
.end method


# virtual methods
.method public monitorControlStates(Landroid/hardware/camera2/CaptureResult;)V
    .locals 14
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 877
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v8}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 878
    .local v4, "afStateMaybe":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 879
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 884
    .local v2, "afState":I
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->mLastAfFrameNumber:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 885
    iget v8, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->mLastAfState:I

    if-eq v2, v8, :cond_2

    move v3, v6

    .line 886
    .local v3, "afStateChanged":Z
    :goto_0
    iput v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->mLastAfState:I

    .line 887
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->mLastAfFrameNumber:J

    .line 889
    packed-switch v2, :pswitch_data_0

    .line 923
    .end local v2    # "afState":I
    .end local v3    # "afStateChanged":Z
    :cond_0
    :goto_1
    :pswitch_0
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v6}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 924
    .local v1, "aeStateMaybe":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 925
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 930
    .local v0, "aeState":I
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->mLastAeFrameNumber:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 931
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$2102(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;I)I

    .line 932
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->mLastAeFrameNumber:J

    .line 934
    packed-switch v0, :pswitch_data_1

    .line 965
    .end local v0    # "aeState":I
    :cond_1
    :goto_2
    return-void

    .end local v1    # "aeStateMaybe":Ljava/lang/Integer;
    .restart local v2    # "afState":I
    :cond_2
    move v3, v7

    .line 885
    goto :goto_0

    .line 893
    .restart local v3    # "afStateChanged":Z
    :pswitch_1
    if-eqz v3, :cond_0

    iget-object v8, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v8}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$2000(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 896
    iget-object v8, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v8}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$2000(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    move-result-object v8

    if-ne v2, v6, :cond_3

    :goto_3
    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .line 898
    invoke-static {v7}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$600(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    move-result-object v7

    .line 896
    invoke-interface {v8, v6, v7}, Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;->onAutoFocusMoving(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    goto :goto_1

    :cond_3
    move v6, v7

    goto :goto_3

    .line 908
    :pswitch_2
    iget-object v8, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v8}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$400(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 912
    iget-object v8, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v8}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$400(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    move-result-object v8

    const/4 v9, 0x4

    if-ne v2, v9, :cond_4

    :goto_4
    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .line 914
    invoke-static {v7}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$600(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    move-result-object v7

    .line 912
    invoke-interface {v8, v6, v7}, Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;->onAutoFocus(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    .line 915
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v6, v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$402(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    goto :goto_1

    :cond_4
    move v6, v7

    .line 912
    goto :goto_4

    .line 941
    .end local v2    # "afState":I
    .end local v3    # "afStateChanged":Z
    .restart local v0    # "aeState":I
    .restart local v1    # "aeStateMaybe":Ljava/lang/Integer;
    :pswitch_3
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v6}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$700(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 944
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v6}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$2200(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Landroid/media/ImageReader;

    move-result-object v6

    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .line 945
    invoke-static {v7}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$700(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;

    move-result-object v7

    iget-object v8, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .line 944
    invoke-virtual {v6, v7, v8}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 948
    :try_start_0
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v6}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1700(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v6

    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .line 949
    invoke-static {v7}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$1300(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    move-result-object v7

    iget-object v8, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v8}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$900(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    new-array v10, v10, [Landroid/view/Surface;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .line 951
    invoke-static {v12}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$2200(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Landroid/media/ImageReader;

    move-result-object v12

    invoke-virtual {v12}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v12

    aput-object v12, v10, v11

    .line 949
    invoke-virtual {v7, v8, v9, v10}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->createRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    iget-object v8, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .line 952
    invoke-static {v8}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$700(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;

    move-result-object v8

    iget-object v9, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .line 948
    invoke-virtual {v6, v7, v8, v9}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 957
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v6, v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$702(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;

    goto/16 :goto_2

    .line 954
    :catch_0
    move-exception v5

    .line 955
    .local v5, "ex":Landroid/hardware/camera2/CameraAccessException;
    :try_start_1
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v6

    const-string v7, "Unable to initiate capture"

    invoke-static {v6, v7, v5}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 957
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v6, v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$702(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;

    goto/16 :goto_2

    .end local v5    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-static {v7, v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->access$702(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;

    throw v6

    .line 889
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 934
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 872
    invoke-virtual {p0, p3}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->monitorControlStates(Landroid/hardware/camera2/CaptureResult;)V

    .line 873
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .prologue
    .line 977
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture attempt failed with reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 978
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 866
    invoke-virtual {p0, p3}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->monitorControlStates(Landroid/hardware/camera2/CaptureResult;)V

    .line 867
    return-void
.end method

.method public resetState()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 969
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->mLastAfState:I

    .line 970
    iput-wide v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->mLastAfFrameNumber:J

    .line 971
    iput-wide v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;->mLastAeFrameNumber:J

    .line 972
    return-void
.end method

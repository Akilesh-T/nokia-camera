.class public Lcom/android/camera/one/v2/core/TagDispatchCaptureSession;
.super Ljava/lang/Object;
.source "TagDispatchCaptureSession.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/FrameServer$Session;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/core/TagDispatchCaptureSession$CaptureCallback;
    }
.end annotation


# instance fields
.field private final mCameraHandler:Landroid/os/Handler;

.field private final mCaptureSession:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

.field private mTagCounter:J


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/os/Handler;)V
    .locals 2
    .param p1, "captureSession"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;
    .param p2, "cameraHandler"    # Landroid/os/Handler;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession;->mCaptureSession:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    .line 107
    iput-object p2, p0, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession;->mCameraHandler:Landroid/os/Handler;

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession;->mTagCounter:J

    .line 109
    return-void
.end method

.method private generateTag()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 112
    iget-wide v2, p0, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession;->mTagCounter:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 113
    .local v0, "tag":Ljava/lang/Long;
    iget-wide v2, p0, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession;->mTagCounter:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession;->mTagCounter:J

    .line 114
    return-object v0
.end method


# virtual methods
.method public abortCaptures()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
        }
    .end annotation

    .prologue
    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession;->mCaptureSession:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->abortCaptures()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    throw v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public isConstrainedHighSpeedSession()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession;->mCaptureSession:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->isConstrainedHighSpeedSession()Z

    move-result v0

    return v0
.end method

.method public isReprocessable()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession;->mCaptureSession:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->isReprocessable()Z

    move-result v0

    return v0
.end method

.method public stopRepeating()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
        }
    .end annotation

    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession;->mCaptureSession:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->stopRepeating()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    throw v0
.end method

.method public submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V
    .locals 13
    .param p2, "requestType"    # Lcom/android/camera/one/v2/core/FrameServer$RequestType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/core/Request;",
            ">;",
            "Lcom/android/camera/one/v2/core/FrameServer$RequestType;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "burstRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v8, "tagListenerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lcom/android/camera/one/v2/core/ResponseListener;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .local v1, "captureRequests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/core/Request;

    .line 142
    .local v6, "request":Lcom/android/camera/one/v2/core/Request;
    iget-object v10, p0, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession;->mCaptureSession:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    invoke-interface {v10}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->isConstrainedHighSpeedSession()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 143
    invoke-interface {v6}, Lcom/android/camera/one/v2/core/Request;->allocateCaptureRequest()Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;

    move-result-object v0

    .line 144
    .local v0, "builder":Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;
    iget-object v10, p0, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession;->mCaptureSession:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v4

    .line 145
    .local v4, "highSpeedRequestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest;

    .line 146
    .local v3, "highSpeedRequest":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6}, Lcom/android/camera/one/v2/core/Request;->getResponseListener()Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 167
    .end local v0    # "builder":Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;
    .end local v1    # "captureRequests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .end local v3    # "highSpeedRequest":Landroid/hardware/camera2/CaptureRequest;
    .end local v4    # "highSpeedRequestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .end local v6    # "request":Lcom/android/camera/one/v2/core/Request;
    .end local v8    # "tagListenerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lcom/android/camera/one/v2/core/ResponseListener;>;"
    :catch_0
    move-exception v2

    .line 168
    .local v2, "e":Ljava/lang/Exception;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/v2/core/Request;

    .line 169
    .local v5, "r":Lcom/android/camera/one/v2/core/Request;
    invoke-interface {v5}, Lcom/android/camera/one/v2/core/Request;->abort()V

    goto :goto_2

    .line 148
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "r":Lcom/android/camera/one/v2/core/Request;
    .restart local v0    # "builder":Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;
    .restart local v1    # "captureRequests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .restart local v4    # "highSpeedRequestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .restart local v6    # "request":Lcom/android/camera/one/v2/core/Request;
    .restart local v8    # "tagListenerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lcom/android/camera/one/v2/core/ResponseListener;>;"
    :cond_0
    :try_start_1
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 150
    .end local v0    # "builder":Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;
    .end local v4    # "highSpeedRequestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession;->generateTag()Ljava/lang/Object;

    move-result-object v7

    .line 152
    .local v7, "tag":Ljava/lang/Object;
    invoke-interface {v6}, Lcom/android/camera/one/v2/core/Request;->getResponseListener()Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v10

    invoke-interface {v8, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-interface {v6}, Lcom/android/camera/one/v2/core/Request;->allocateCaptureRequest()Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;

    move-result-object v0

    .line 155
    .restart local v0    # "builder":Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;
    invoke-virtual {v0, v7}, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;->setTag(Ljava/lang/Object;)V

    .line 156
    invoke-virtual {v0}, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    .end local v0    # "builder":Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;
    .end local v6    # "request":Lcom/android/camera/one/v2/core/Request;
    .end local v7    # "tag":Ljava/lang/Object;
    :cond_2
    sget-object v9, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    if-ne p2, v9, :cond_3

    .line 161
    iget-object v9, p0, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession;->mCaptureSession:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    new-instance v10, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession$CaptureCallback;

    invoke-direct {v10, v8}, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession$CaptureCallback;-><init>(Ljava/util/Map;)V

    iget-object v11, p0, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession;->mCameraHandler:Landroid/os/Handler;

    invoke-interface {v9, v1, v10, v11}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->setRepeatingBurst(Ljava/util/List;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I

    .line 173
    :goto_3
    return-void

    .line 164
    :cond_3
    iget-object v9, p0, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession;->mCaptureSession:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    new-instance v10, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession$CaptureCallback;

    invoke-direct {v10, v8}, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession$CaptureCallback;-><init>(Ljava/util/Map;)V

    iget-object v11, p0, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession;->mCameraHandler:Landroid/os/Handler;

    invoke-interface {v9, v1, v10, v11}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->captureBurst(Ljava/util/List;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 171
    .end local v1    # "captureRequests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .end local v8    # "tagListenerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lcom/android/camera/one/v2/core/ResponseListener;>;"
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_4
    throw v2
.end method

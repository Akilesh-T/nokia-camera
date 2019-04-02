.class final Lcom/android/camera/PhotoModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
.implements Lcom/android/camera/PhotoModule$SavePictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field final mMemento:Lcom/android/camera/PhotoModule$Memento;

.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$Memento;)V
    .locals 0
    .param p2, "memento"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 2109
    iput-object p1, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2110
    iput-object p2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mMemento:Lcom/android/camera/PhotoModule$Memento;

    .line 2111
    return-void
.end method


# virtual methods
.method public getTitle(Lcom/android/camera/PhotoModule$Memento;)Ljava/lang/String;
    .locals 1
    .param p1, "memento"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 2196
    invoke-static {p1}, Lcom/android/camera/PhotoModule$Memento;->access$4900(Lcom/android/camera/PhotoModule$Memento;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAnimateCapture()Z
    .locals 1

    .prologue
    .line 2201
    const/4 v0, 0x1

    return v0
.end method

.method public isFakeImage()Z
    .locals 1

    .prologue
    .line 2222
    const/4 v0, 0x0

    return v0
.end method

.method public isHandleImageCaptureIntent()Z
    .locals 1

    .prologue
    .line 2206
    const/4 v0, 0x1

    return v0
.end method

.method public isNotifyRemoteShutterListner()Z
    .locals 1

    .prologue
    .line 2211
    const/4 v0, 0x1

    return v0
.end method

.method public isUpdateThumbnail()Z
    .locals 1

    .prologue
    .line 2191
    const/4 v0, 0x0

    return v0
.end method

.method public isUseWaterMark()Z
    .locals 2

    .prologue
    .line 2216
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "JpegPictureCallback isUseWaterMark = true"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2217
    const/4 v0, 0x1

    return v0
.end method

.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 12
    .param p1, "originalJpegData"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    .line 2115
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "onPictureTaken"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2116
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2117
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    const-string v3, "JpegPictureCallback"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2120
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$500(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2122
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mMemento:Lcom/android/camera/PhotoModule$Memento;

    invoke-static {v2}, Lcom/android/camera/PhotoModule$Memento;->access$5900(Lcom/android/camera/PhotoModule$Memento;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 2126
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2, v8}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 2127
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2, v8}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 2128
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$3200(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2, v8}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 2130
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$500(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2187
    :goto_0
    return-void

    .line 2132
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$3200(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2133
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 2135
    :cond_4
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v2

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v2, v3, :cond_5

    .line 2136
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/camera/PhotoUI;->setSwipingEnabled(Z)V

    .line 2138
    :cond_5
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 2140
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/camera/PhotoModule;->access$8802(Lcom/android/camera/PhotoModule;J)J

    .line 2144
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$8600(Lcom/android/camera/PhotoModule;)J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-eqz v2, :cond_a

    .line 2145
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v3, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2146
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8600(Lcom/android/camera/PhotoModule;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$3700(Lcom/android/camera/PhotoModule;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lcom/android/camera/PhotoModule;->mShutterToPictureDisplayedTime:J

    .line 2147
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v3, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2148
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8800(Lcom/android/camera/PhotoModule;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8600(Lcom/android/camera/PhotoModule;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    .line 2155
    :goto_1
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v4, v4, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2158
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$3200(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2159
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v2

    sget-object v3, Lcom/android/ex/camera2/portability/CaptureIntent;->LOWLIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2160
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v2

    sget-object v3, Lcom/android/ex/camera2/portability/CaptureIntent;->DENOISE:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2161
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v2

    sget-object v3, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v2, v3, :cond_7

    sget-boolean v2, Lcom/android/camera/product_utils/ProductUtil;->USE_VENDOR_HDR:Z

    if-nez v2, :cond_7

    :cond_6
    sget-boolean v2, Lcom/android/camera/util/DebugYuvDumpUtil;->DEBUG_YUV_SIGN:Z

    if-eqz v2, :cond_7

    .line 2163
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2, v8}, Lcom/android/camera/PhotoModule;->access$8902(Lcom/android/camera/PhotoModule;Z)Z

    .line 2164
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2, v8}, Lcom/android/camera/PhotoModule;->access$9002(Lcom/android/camera/PhotoModule;Z)Z

    .line 2167
    :cond_7
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$3200(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2168
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)V

    .line 2171
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2172
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v3, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8800(Lcom/android/camera/PhotoModule;)J

    move-result-wide v4

    sub-long v4, v0, v4

    iput-wide v4, v2, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    .line 2173
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mJpegCallbackFinishTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v4, v4, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2174
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2, v10, v11}, Lcom/android/camera/PhotoModule;->access$8802(Lcom/android/camera/PhotoModule;J)J

    .line 2176
    if-eqz p1, :cond_b

    .line 2177
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mMemento:Lcom/android/camera/PhotoModule$Memento;

    invoke-static {v2, p1, p0}, Lcom/android/camera/PhotoModule$Memento;->access$5000(Lcom/android/camera/PhotoModule$Memento;[BLcom/android/camera/PhotoModule$SavePictureCallback;)V

    .line 2186
    :cond_9
    :goto_2
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "onPictureTaken done"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2150
    .end local v0    # "now":J
    :cond_a
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v3, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2151
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8700(Lcom/android/camera/PhotoModule;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$3700(Lcom/android/camera/PhotoModule;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lcom/android/camera/PhotoModule;->mShutterToPictureDisplayedTime:J

    .line 2152
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v3, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2153
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8800(Lcom/android/camera/PhotoModule;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8700(Lcom/android/camera/PhotoModule;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 2179
    .restart local v0    # "now":J
    :cond_b
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Get null jpeg data when capture"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2180
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mMemento:Lcom/android/camera/PhotoModule$Memento;

    invoke-static {v2}, Lcom/android/camera/PhotoModule$Memento;->access$6600(Lcom/android/camera/PhotoModule$Memento;)Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;

    move-result-object v2

    const-string v3, "Capture Fail : No jepg data."

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;->showFailure(Ljava/lang/String;)V

    .line 2182
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$3200(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2183
    iget-object v2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)V

    goto :goto_2
.end method

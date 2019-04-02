.class final Lcom/android/camera/BokehModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "BokehModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;
.implements Lcom/android/camera/BokehModule$SavePictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BokehModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field final mMemento:Lcom/android/camera/BokehModule$Memento;

.field final synthetic this$0:Lcom/android/camera/BokehModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/BokehModule;Lcom/android/camera/BokehModule$Memento;)V
    .locals 0
    .param p2, "memento"    # Lcom/android/camera/BokehModule$Memento;

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1130
    iput-object p2, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->mMemento:Lcom/android/camera/BokehModule$Memento;

    .line 1131
    return-void
.end method


# virtual methods
.method public getTitle(Lcom/android/camera/BokehModule$Memento;)Ljava/lang/String;
    .locals 1
    .param p1, "memento"    # Lcom/android/camera/BokehModule$Memento;

    .prologue
    .line 1355
    invoke-static {p1}, Lcom/android/camera/BokehModule$Memento;->access$2800(Lcom/android/camera/BokehModule$Memento;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAnimateCapture()Z
    .locals 1

    .prologue
    .line 1360
    const/4 v0, 0x0

    return v0
.end method

.method public isFakeImage()Z
    .locals 1

    .prologue
    .line 1380
    const/4 v0, 0x0

    return v0
.end method

.method public isHandleImageCaptureIntent()Z
    .locals 1

    .prologue
    .line 1365
    const/4 v0, 0x0

    return v0
.end method

.method public isNotifyRemoteShutterListner()Z
    .locals 1

    .prologue
    .line 1370
    const/4 v0, 0x1

    return v0
.end method

.method public isUpdateThumbnail()Z
    .locals 1

    .prologue
    .line 1350
    const/4 v0, 0x0

    return v0
.end method

.method public isUseWaterMark()Z
    .locals 1

    .prologue
    .line 1375
    const/4 v0, 0x0

    return v0
.end method

.method public onBokehInfo(Lcom/android/camera/mpo/Bokeh_Info;)V
    .locals 14
    .param p1, "bokeh_info"    # Lcom/android/camera/mpo/Bokeh_Info;

    .prologue
    const-wide/16 v12, 0x0

    const/4 v5, 0x1

    .line 1135
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    const-string v7, "onBokehInfo start"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1136
    iget-object v6, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v6}, Lcom/android/camera/BokehModule;->access$3300(Lcom/android/camera/BokehModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1137
    iget-object v6, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v6}, Lcom/android/camera/BokehModule;->access$3300(Lcom/android/camera/BokehModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v6

    const-string v7, "JpegPictureCallback"

    invoke-interface {v6, v7}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1139
    :cond_0
    iget-object v6, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v6}, Lcom/android/camera/BokehModule;->access$500(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/AppController;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1141
    iget-object v6, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v6}, Lcom/android/camera/BokehModule;->access$500(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/AppController;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 1142
    iget-object v6, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v6}, Lcom/android/camera/BokehModule;->access$400(Lcom/android/camera/BokehModule;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1241
    :goto_0
    return-void

    .line 1146
    :cond_1
    iget-object v6, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v6}, Lcom/android/camera/BokehModule;->access$600(Lcom/android/camera/BokehModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v6

    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v6, v7, :cond_2

    .line 1147
    iget-object v6, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v6}, Lcom/android/camera/BokehModule;->access$700(Lcom/android/camera/BokehModule;)Lcom/android/camera/BokehUI;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/camera/BokehUI;->setSwipingEnabled(Z)V

    .line 1150
    :cond_2
    iget-object v6, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/android/camera/BokehModule;->access$3502(Lcom/android/camera/BokehModule;J)J

    .line 1154
    iget-object v6, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v6}, Lcom/android/camera/BokehModule;->access$3200(Lcom/android/camera/BokehModule;)J

    move-result-wide v6

    cmp-long v6, v6, v12

    if-eqz v6, :cond_3

    .line 1155
    iget-object v6, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    iget-object v7, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    .line 1156
    invoke-static {v7}, Lcom/android/camera/BokehModule;->access$3200(Lcom/android/camera/BokehModule;)J

    move-result-wide v8

    iget-object v7, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v7}, Lcom/android/camera/BokehModule;->access$1900(Lcom/android/camera/BokehModule;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    iput-wide v8, v6, Lcom/android/camera/BokehModule;->mShutterToPictureDisplayedTime:J

    .line 1157
    iget-object v6, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    iget-object v7, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    .line 1158
    invoke-static {v7}, Lcom/android/camera/BokehModule;->access$3500(Lcom/android/camera/BokehModule;)J

    move-result-wide v8

    iget-object v7, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v7}, Lcom/android/camera/BokehModule;->access$3200(Lcom/android/camera/BokehModule;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    iput-wide v8, v6, Lcom/android/camera/BokehModule;->mPictureDisplayedToJpegCallbackTime:J

    .line 1165
    :goto_1
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    iget-wide v8, v8, Lcom/android/camera/BokehModule;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1168
    iget-object v6, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v6}, Lcom/android/camera/BokehModule;->access$3600(Lcom/android/camera/BokehModule;)I

    move-result v1

    .line 1170
    .local v1, "lJpegRotation":I
    iget-object v6, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v6}, Lcom/android/camera/BokehModule;->access$800(Lcom/android/camera/BokehModule;)V

    .line 1172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1173
    .local v2, "now":J
    iget-object v6, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    iget-object v7, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v7}, Lcom/android/camera/BokehModule;->access$3500(Lcom/android/camera/BokehModule;)J

    move-result-wide v8

    sub-long v8, v2, v8

    iput-wide v8, v6, Lcom/android/camera/BokehModule;->mJpegCallbackFinishTime:J

    .line 1174
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mJpegCallbackFinishTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    iget-wide v8, v8, Lcom/android/camera/BokehModule;->mJpegCallbackFinishTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1175
    iget-object v6, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v6, v12, v13}, Lcom/android/camera/BokehModule;->access$3502(Lcom/android/camera/BokehModule;J)J

    .line 1177
    iget-object v6, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v6}, Lcom/android/camera/BokehModule;->access$3700(Lcom/android/camera/BokehModule;)Lcom/android/camera/BokehModule$BokehTouchInfo;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/camera/BokehModule$BokehTouchInfo;->updateBokehInfo(Lcom/android/camera/mpo/Bokeh_Info;)V

    .line 1178
    iget-object v6, p1, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    if-eqz v6, :cond_4

    move v0, v5

    .line 1179
    .local v0, "isSucceeded":Z
    :goto_2
    iget-object v4, p1, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    .line 1180
    .local v4, "originalJpegData":[B
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSucceeded = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1181
    if-eqz v4, :cond_5

    .line 1182
    iget-object v5, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->mMemento:Lcom/android/camera/BokehModule$Memento;

    invoke-static {v5, v4, p0, p1, v0}, Lcom/android/camera/BokehModule$Memento;->access$3000(Lcom/android/camera/BokehModule$Memento;[BLcom/android/camera/BokehModule$SavePictureCallback;Lcom/android/camera/mpo/Bokeh_Info;Z)V

    .line 1240
    :goto_3
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    const-string v6, "onBokehInfo end"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1160
    .end local v0    # "isSucceeded":Z
    .end local v1    # "lJpegRotation":I
    .end local v2    # "now":J
    .end local v4    # "originalJpegData":[B
    :cond_3
    iget-object v6, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    iget-object v7, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    .line 1161
    invoke-static {v7}, Lcom/android/camera/BokehModule;->access$3400(Lcom/android/camera/BokehModule;)J

    move-result-wide v8

    iget-object v7, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v7}, Lcom/android/camera/BokehModule;->access$1900(Lcom/android/camera/BokehModule;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    iput-wide v8, v6, Lcom/android/camera/BokehModule;->mShutterToPictureDisplayedTime:J

    .line 1162
    iget-object v6, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    iget-object v7, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    .line 1163
    invoke-static {v7}, Lcom/android/camera/BokehModule;->access$3500(Lcom/android/camera/BokehModule;)J

    move-result-wide v8

    iget-object v7, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v7}, Lcom/android/camera/BokehModule;->access$3400(Lcom/android/camera/BokehModule;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    iput-wide v8, v6, Lcom/android/camera/BokehModule;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 1178
    .restart local v1    # "lJpegRotation":I
    .restart local v2    # "now":J
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 1235
    .restart local v0    # "isSucceeded":Z
    .restart local v4    # "originalJpegData":[B
    :cond_5
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    const-string v7, "Get null jpeg data when capture"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1236
    iget-object v6, p0, Lcom/android/camera/BokehModule$JpegPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v6}, Lcom/android/camera/BokehModule;->access$900(Lcom/android/camera/BokehModule;)Lcom/android/camera/CameraActivity;

    move-result-object v6

    const-string v7, "Capture Fail : No jepg data."

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 1237
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_3
.end method

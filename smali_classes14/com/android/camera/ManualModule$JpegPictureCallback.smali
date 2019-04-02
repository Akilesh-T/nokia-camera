.class final Lcom/android/camera/ManualModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "ManualModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
.implements Lcom/android/camera/ManualModule$SavePictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field final mMemento:Lcom/android/camera/ManualModule$Memento;

.field final synthetic this$0:Lcom/android/camera/ManualModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/ManualModule;Lcom/android/camera/ManualModule$Memento;)V
    .locals 0
    .param p2, "memento"    # Lcom/android/camera/ManualModule$Memento;

    .prologue
    .line 940
    iput-object p1, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 941
    iput-object p2, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->mMemento:Lcom/android/camera/ManualModule$Memento;

    .line 942
    return-void
.end method


# virtual methods
.method public getTitle(Lcom/android/camera/ManualModule$Memento;)Ljava/lang/String;
    .locals 1
    .param p1, "memento"    # Lcom/android/camera/ManualModule$Memento;

    .prologue
    .line 1007
    invoke-static {p1}, Lcom/android/camera/ManualModule$Memento;->access$2200(Lcom/android/camera/ManualModule$Memento;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAnimateCapture()Z
    .locals 1

    .prologue
    .line 1012
    const/4 v0, 0x1

    return v0
.end method

.method public isFakeImage()Z
    .locals 1

    .prologue
    .line 1033
    const/4 v0, 0x0

    return v0
.end method

.method public isHandleImageCaptureIntent()Z
    .locals 1

    .prologue
    .line 1017
    const/4 v0, 0x1

    return v0
.end method

.method public isNotifyRemoteShutterListner()Z
    .locals 1

    .prologue
    .line 1022
    const/4 v0, 0x1

    return v0
.end method

.method public isUpdateThumbnail()Z
    .locals 1

    .prologue
    .line 1002
    const/4 v0, 0x1

    return v0
.end method

.method public isUseWaterMark()Z
    .locals 2

    .prologue
    .line 1027
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "JpegPictureCallback isUseWaterMark = true"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1028
    const/4 v0, 0x1

    return v0
.end method

.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 10
    .param p1, "originalJpegData"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    .line 946
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "onPictureTaken"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 947
    iget-object v2, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v2}, Lcom/android/camera/ManualModule;->access$2000(Lcom/android/camera/ManualModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 948
    iget-object v2, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v2}, Lcom/android/camera/ManualModule;->access$2000(Lcom/android/camera/ManualModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    const-string v3, "JpegPictureCallback"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 952
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v2}, Lcom/android/camera/ManualModule;->access$500(Lcom/android/camera/ManualModule;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 954
    iget-object v2, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->mMemento:Lcom/android/camera/ManualModule$Memento;

    invoke-static {v2}, Lcom/android/camera/ManualModule$Memento;->access$2400(Lcom/android/camera/ManualModule$Memento;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 958
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v2}, Lcom/android/camera/ManualModule;->access$600(Lcom/android/camera/ManualModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 959
    iget-object v2, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v2}, Lcom/android/camera/ManualModule;->access$600(Lcom/android/camera/ManualModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 960
    iget-object v2, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v2}, Lcom/android/camera/ManualModule;->access$600(Lcom/android/camera/ManualModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 962
    iget-object v2, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v2}, Lcom/android/camera/ManualModule;->access$500(Lcom/android/camera/ManualModule;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 998
    :goto_0
    return-void

    .line 966
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v2}, Lcom/android/camera/ManualModule;->access$700(Lcom/android/camera/ManualModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v2

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v2, v3, :cond_3

    .line 967
    iget-object v2, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v2}, Lcom/android/camera/ManualModule;->access$800(Lcom/android/camera/ManualModule;)Lcom/android/camera/ManualAbstractUI;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/camera/ManualAbstractUI;->setSwipingEnabled(Z)V

    .line 969
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v2}, Lcom/android/camera/ManualModule;->access$600(Lcom/android/camera/ManualModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 971
    iget-object v2, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/camera/ManualModule;->access$2502(Lcom/android/camera/ManualModule;J)J

    .line 975
    iget-object v2, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v2}, Lcom/android/camera/ManualModule;->access$1900(Lcom/android/camera/ManualModule;)J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-eqz v2, :cond_4

    .line 976
    iget-object v2, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    iget-object v3, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v3}, Lcom/android/camera/ManualModule;->access$1900(Lcom/android/camera/ManualModule;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v3}, Lcom/android/camera/ManualModule;->access$1700(Lcom/android/camera/ManualModule;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lcom/android/camera/ManualModule;->mShutterToPictureDisplayedTime:J

    .line 977
    iget-object v2, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    iget-object v3, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v3}, Lcom/android/camera/ManualModule;->access$2500(Lcom/android/camera/ManualModule;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v3}, Lcom/android/camera/ManualModule;->access$1900(Lcom/android/camera/ManualModule;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lcom/android/camera/ManualModule;->mPictureDisplayedToJpegCallbackTime:J

    .line 982
    :goto_1
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    iget-wide v4, v4, Lcom/android/camera/ManualModule;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 984
    iget-object v2, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v2}, Lcom/android/camera/ManualModule;->access$900(Lcom/android/camera/ManualModule;)V

    .line 987
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 988
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    iget-object v3, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v3}, Lcom/android/camera/ManualModule;->access$2500(Lcom/android/camera/ManualModule;)J

    move-result-wide v4

    sub-long v4, v0, v4

    iput-wide v4, v2, Lcom/android/camera/ManualModule;->mJpegCallbackFinishTime:J

    .line 989
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mJpegCallbackFinishTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    iget-wide v4, v4, Lcom/android/camera/ManualModule;->mJpegCallbackFinishTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 990
    iget-object v2, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v2, v8, v9}, Lcom/android/camera/ManualModule;->access$2502(Lcom/android/camera/ManualModule;J)J

    .line 992
    if-eqz p1, :cond_5

    .line 993
    iget-object v2, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->mMemento:Lcom/android/camera/ManualModule$Memento;

    invoke-static {v2, p1, p0}, Lcom/android/camera/ManualModule$Memento;->access$2100(Lcom/android/camera/ManualModule$Memento;[BLcom/android/camera/ManualModule$SavePictureCallback;)V

    goto/16 :goto_0

    .line 979
    .end local v0    # "now":J
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    iget-object v3, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v3}, Lcom/android/camera/ManualModule;->access$2300(Lcom/android/camera/ManualModule;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v3}, Lcom/android/camera/ManualModule;->access$1700(Lcom/android/camera/ManualModule;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lcom/android/camera/ManualModule;->mShutterToPictureDisplayedTime:J

    .line 980
    iget-object v2, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    iget-object v3, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v3}, Lcom/android/camera/ManualModule;->access$2500(Lcom/android/camera/ManualModule;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v3}, Lcom/android/camera/ManualModule;->access$2300(Lcom/android/camera/ManualModule;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lcom/android/camera/ManualModule;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 995
    .restart local v0    # "now":J
    :cond_5
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Get null jpeg data when capture"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 996
    iget-object v2, p0, Lcom/android/camera/ManualModule$JpegPictureCallback;->mMemento:Lcom/android/camera/ManualModule$Memento;

    invoke-static {v2}, Lcom/android/camera/ManualModule$Memento;->access$2600(Lcom/android/camera/ManualModule$Memento;)Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;

    move-result-object v2

    const-string v3, "Capture Fail : No jepg data."

    invoke-virtual {v2, v3}, Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;->showFailure(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.class final Lcom/android/camera/ManualModule$PosPostViewPictureCallback;
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
    name = "PosPostViewPictureCallback"
.end annotation


# instance fields
.field final mMemento:Lcom/android/camera/ManualModule$Memento;

.field final mNeedFakeImage:Z

.field final synthetic this$0:Lcom/android/camera/ManualModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/ManualModule;Lcom/android/camera/ManualModule$Memento;Z)V
    .locals 0
    .param p2, "memento"    # Lcom/android/camera/ManualModule$Memento;
    .param p3, "needFakeImage"    # Z

    .prologue
    .line 816
    iput-object p1, p0, Lcom/android/camera/ManualModule$PosPostViewPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 817
    iput-object p2, p0, Lcom/android/camera/ManualModule$PosPostViewPictureCallback;->mMemento:Lcom/android/camera/ManualModule$Memento;

    .line 818
    iput-boolean p3, p0, Lcom/android/camera/ManualModule$PosPostViewPictureCallback;->mNeedFakeImage:Z

    .line 819
    return-void
.end method


# virtual methods
.method public getTitle(Lcom/android/camera/ManualModule$Memento;)Ljava/lang/String;
    .locals 1
    .param p1, "memento"    # Lcom/android/camera/ManualModule$Memento;

    .prologue
    .line 843
    invoke-static {p1}, Lcom/android/camera/ManualModule$Memento;->access$2200(Lcom/android/camera/ManualModule$Memento;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAnimateCapture()Z
    .locals 1

    .prologue
    .line 848
    const/4 v0, 0x0

    return v0
.end method

.method public isFakeImage()Z
    .locals 1

    .prologue
    .line 869
    const/4 v0, 0x0

    return v0
.end method

.method public isHandleImageCaptureIntent()Z
    .locals 1

    .prologue
    .line 853
    const/4 v0, 0x0

    return v0
.end method

.method public isNotifyRemoteShutterListner()Z
    .locals 1

    .prologue
    .line 858
    const/4 v0, 0x1

    return v0
.end method

.method public isUpdateThumbnail()Z
    .locals 1

    .prologue
    .line 838
    iget-boolean v0, p0, Lcom/android/camera/ManualModule$PosPostViewPictureCallback;->mNeedFakeImage:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUseWaterMark()Z
    .locals 2

    .prologue
    .line 863
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "PosPostViewPictureCallback isUseWaterMark = true"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 864
    const/4 v0, 0x1

    return v0
.end method

.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/camera/ManualModule$PosPostViewPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/camera/ManualModule;->access$1902(Lcom/android/camera/ManualModule;J)J

    .line 824
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterToPostViewCallbackTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ManualModule$PosPostViewPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v2}, Lcom/android/camera/ManualModule;->access$1900(Lcom/android/camera/ManualModule;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/ManualModule$PosPostViewPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v4}, Lcom/android/camera/ManualModule;->access$1700(Lcom/android/camera/ManualModule;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/android/camera/ManualModule$PosPostViewPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$2000(Lcom/android/camera/ManualModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/camera/ManualModule$PosPostViewPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$2000(Lcom/android/camera/ManualModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    const-string v1, "PostViewPictureCallback"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 829
    :cond_0
    if-eqz p1, :cond_1

    .line 830
    iget-object v0, p0, Lcom/android/camera/ManualModule$PosPostViewPictureCallback;->mMemento:Lcom/android/camera/ManualModule$Memento;

    invoke-static {v0, p1, p0}, Lcom/android/camera/ManualModule$Memento;->access$2100(Lcom/android/camera/ManualModule$Memento;[BLcom/android/camera/ManualModule$SavePictureCallback;)V

    .line 834
    :goto_0
    return-void

    .line 832
    :cond_1
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Get null pos post view picture data when capture"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

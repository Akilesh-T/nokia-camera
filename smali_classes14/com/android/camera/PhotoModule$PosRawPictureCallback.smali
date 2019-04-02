.class Lcom/android/camera/PhotoModule$PosRawPictureCallback;
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
    accessFlags = 0x2
    name = "PosRawPictureCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PhotoModule$PosRawPictureCallback$SaveYuvToJpegThread;
    }
.end annotation


# instance fields
.field final memento:Lcom/android/camera/PhotoModule$Memento;

.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$Memento;)V
    .locals 0
    .param p2, "memento"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1940
    iput-object p1, p0, Lcom/android/camera/PhotoModule$PosRawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1941
    iput-object p2, p0, Lcom/android/camera/PhotoModule$PosRawPictureCallback;->memento:Lcom/android/camera/PhotoModule$Memento;

    .line 1942
    return-void
.end method


# virtual methods
.method public getTitle(Lcom/android/camera/PhotoModule$Memento;)Ljava/lang/String;
    .locals 1
    .param p1, "memento"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1990
    invoke-static {p1}, Lcom/android/camera/PhotoModule$Memento;->access$4900(Lcom/android/camera/PhotoModule$Memento;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAnimateCapture()Z
    .locals 1

    .prologue
    .line 1995
    const/4 v0, 0x1

    return v0
.end method

.method public isFakeImage()Z
    .locals 1

    .prologue
    .line 2016
    const/4 v0, 0x1

    return v0
.end method

.method public isHandleImageCaptureIntent()Z
    .locals 1

    .prologue
    .line 2000
    const/4 v0, 0x0

    return v0
.end method

.method public isNotifyRemoteShutterListner()Z
    .locals 1

    .prologue
    .line 2005
    const/4 v0, 0x0

    return v0
.end method

.method public isUpdateThumbnail()Z
    .locals 1

    .prologue
    .line 1985
    const/4 v0, 0x1

    return v0
.end method

.method public isUseWaterMark()Z
    .locals 2

    .prologue
    .line 2010
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "PosRawPictureCallback isUseWaterMark = false"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2011
    const/4 v0, 0x0

    return v0
.end method

.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PosRawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/camera/PhotoModule;->access$8702(Lcom/android/camera/PhotoModule;J)J

    .line 1947
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterToRawCallbackTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$PosRawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1948
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$8700(Lcom/android/camera/PhotoModule;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/PhotoModule$PosRawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$3700(Lcom/android/camera/PhotoModule;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1947
    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1949
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PosRawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1950
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PosRawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    const-string v1, "RawPictureCallback"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1953
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PosRawPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$500(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1981
    :cond_1
    return-void
.end method

.method protected savePreviewData([B)V
    .locals 1
    .param p1, "previewData"    # [B

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PosRawPictureCallback;->memento:Lcom/android/camera/PhotoModule$Memento;

    invoke-static {v0, p1, p0}, Lcom/android/camera/PhotoModule$Memento;->access$5000(Lcom/android/camera/PhotoModule$Memento;[BLcom/android/camera/PhotoModule$SavePictureCallback;)V

    .line 2021
    return-void
.end method

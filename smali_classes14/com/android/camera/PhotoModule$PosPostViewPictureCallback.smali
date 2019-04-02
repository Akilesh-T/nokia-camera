.class final Lcom/android/camera/PhotoModule$PosPostViewPictureCallback;
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
    name = "PosPostViewPictureCallback"
.end annotation


# instance fields
.field final mMemento:Lcom/android/camera/PhotoModule$Memento;

.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$Memento;)V
    .locals 0
    .param p2, "memento"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1857
    iput-object p1, p0, Lcom/android/camera/PhotoModule$PosPostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1858
    iput-object p2, p0, Lcom/android/camera/PhotoModule$PosPostViewPictureCallback;->mMemento:Lcom/android/camera/PhotoModule$Memento;

    .line 1859
    return-void
.end method


# virtual methods
.method public getTitle(Lcom/android/camera/PhotoModule$Memento;)Ljava/lang/String;
    .locals 1
    .param p1, "memento"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1885
    invoke-static {p1}, Lcom/android/camera/PhotoModule$Memento;->access$4900(Lcom/android/camera/PhotoModule$Memento;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAnimateCapture()Z
    .locals 1

    .prologue
    .line 1890
    const/4 v0, 0x0

    return v0
.end method

.method public isFakeImage()Z
    .locals 1

    .prologue
    .line 1911
    const/4 v0, 0x0

    return v0
.end method

.method public isHandleImageCaptureIntent()Z
    .locals 1

    .prologue
    .line 1895
    const/4 v0, 0x0

    return v0
.end method

.method public isNotifyRemoteShutterListner()Z
    .locals 1

    .prologue
    .line 1900
    const/4 v0, 0x1

    return v0
.end method

.method public isUpdateThumbnail()Z
    .locals 1

    .prologue
    .line 1880
    const/4 v0, 0x0

    return v0
.end method

.method public isUseWaterMark()Z
    .locals 2

    .prologue
    .line 1905
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "PosPostViewPictureCallback isUseWaterMark = true"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1906
    const/4 v0, 0x1

    return v0
.end method

.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PosPostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/camera/PhotoModule;->access$8602(Lcom/android/camera/PhotoModule;J)J

    .line 1864
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterToPostViewCallbackTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$PosPostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 1865
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$8600(Lcom/android/camera/PhotoModule;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/PhotoModule$PosPostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

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

    .line 1864
    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1867
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PosPostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1868
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PosPostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    const-string v1, "PostViewPictureCallback"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1871
    :cond_0
    if-eqz p1, :cond_1

    .line 1872
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PosPostViewPictureCallback;->mMemento:Lcom/android/camera/PhotoModule$Memento;

    invoke-static {v0, p1, p0}, Lcom/android/camera/PhotoModule$Memento;->access$5000(Lcom/android/camera/PhotoModule$Memento;[BLcom/android/camera/PhotoModule$SavePictureCallback;)V

    .line 1876
    :goto_0
    return-void

    .line 1874
    :cond_1
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Get null pos post view picture data when capture"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/android/camera/BeautyModule$PostPreviewFrameCallback;
.super Ljava/lang/Object;
.source "BeautyModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
.implements Lcom/android/camera/BeautyModule$SavePictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BeautyModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostPreviewFrameCallback"
.end annotation


# static fields
.field private static final PREVIEW_DOWN_SAMPLE_FACTOR:I = 0x2


# instance fields
.field private final mUsePostProcess:Z

.field final memento:Lcom/android/camera/BeautyModule$Memento;

.field final synthetic this$0:Lcom/android/camera/BeautyModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/BeautyModule;Lcom/android/camera/BeautyModule$Memento;Z)V
    .locals 0
    .param p2, "memento"    # Lcom/android/camera/BeautyModule$Memento;
    .param p3, "usePostProcess"    # Z

    .prologue
    .line 2688
    iput-object p1, p0, Lcom/android/camera/BeautyModule$PostPreviewFrameCallback;->this$0:Lcom/android/camera/BeautyModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2689
    iput-object p2, p0, Lcom/android/camera/BeautyModule$PostPreviewFrameCallback;->memento:Lcom/android/camera/BeautyModule$Memento;

    .line 2690
    iput-boolean p3, p0, Lcom/android/camera/BeautyModule$PostPreviewFrameCallback;->mUsePostProcess:Z

    .line 2691
    return-void
.end method


# virtual methods
.method public getTitle(Lcom/android/camera/BeautyModule$Memento;)Ljava/lang/String;
    .locals 1
    .param p1, "memento"    # Lcom/android/camera/BeautyModule$Memento;

    .prologue
    .line 2715
    invoke-static {p1}, Lcom/android/camera/BeautyModule$Memento;->access$2300(Lcom/android/camera/BeautyModule$Memento;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAnimateCapture()Z
    .locals 1

    .prologue
    .line 2720
    const/4 v0, 0x1

    return v0
.end method

.method public isFakeImage()Z
    .locals 1

    .prologue
    .line 2741
    const/4 v0, 0x1

    return v0
.end method

.method public isHandleImageCaptureIntent()Z
    .locals 1

    .prologue
    .line 2725
    const/4 v0, 0x0

    return v0
.end method

.method public isNotifyRemoteShutterListner()Z
    .locals 1

    .prologue
    .line 2730
    const/4 v0, 0x0

    return v0
.end method

.method public isUpdateThumbnail()Z
    .locals 1

    .prologue
    .line 2710
    const/4 v0, 0x1

    return v0
.end method

.method public isUseWaterMark()Z
    .locals 2

    .prologue
    .line 2735
    invoke-static {}, Lcom/android/camera/BeautyModule;->access$1300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "PosRawPictureCallback isUseWaterMark = false"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2736
    const/4 v0, 0x0

    return v0
.end method

.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 2695
    iget-object v0, p0, Lcom/android/camera/BeautyModule$PostPreviewFrameCallback;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/camera/BeautyModule;->access$2602(Lcom/android/camera/BeautyModule;J)J

    .line 2696
    invoke-static {}, Lcom/android/camera/BeautyModule;->access$1300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterToRawCallbackTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/BeautyModule$PostPreviewFrameCallback;->this$0:Lcom/android/camera/BeautyModule;

    .line 2697
    invoke-static {v2}, Lcom/android/camera/BeautyModule;->access$2600(Lcom/android/camera/BeautyModule;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/BeautyModule$PostPreviewFrameCallback;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v4}, Lcom/android/camera/BeautyModule;->access$1500(Lcom/android/camera/BeautyModule;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2696
    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2698
    iget-object v0, p0, Lcom/android/camera/BeautyModule$PostPreviewFrameCallback;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$2700(Lcom/android/camera/BeautyModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2699
    iget-object v0, p0, Lcom/android/camera/BeautyModule$PostPreviewFrameCallback;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$2700(Lcom/android/camera/BeautyModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    const-string v1, "RawPictureCallback"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2702
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyModule$PostPreviewFrameCallback;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$1100(Lcom/android/camera/BeautyModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2706
    :cond_1
    return-void
.end method

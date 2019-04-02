.class Lcom/android/camera/PhotoModule$PostPreviewFrameCallback;
.super Lcom/android/camera/PhotoModule$PosRawPictureCallback;
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
    name = "PostPreviewFrameCallback"
.end annotation


# static fields
.field private static final PREVIEW_DOWN_SAMPLE_FACTOR:I = 0x2


# instance fields
.field private final mUsePostProcess:Z

.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$Memento;Z)V
    .locals 0
    .param p2, "memento"    # Lcom/android/camera/PhotoModule$Memento;
    .param p3, "usePostProcess"    # Z

    .prologue
    .line 2029
    iput-object p1, p0, Lcom/android/camera/PhotoModule$PostPreviewFrameCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2030
    invoke-direct {p0, p1, p2}, Lcom/android/camera/PhotoModule$PosRawPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$Memento;)V

    .line 2031
    iput-boolean p3, p0, Lcom/android/camera/PhotoModule$PostPreviewFrameCallback;->mUsePostProcess:Z

    .line 2032
    return-void
.end method


# virtual methods
.method public isFakeImage()Z
    .locals 1

    .prologue
    .line 2050
    const/4 v0, 0x1

    return v0
.end method

.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 2036
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PostPreviewFrameCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/camera/PhotoModule;->access$8702(Lcom/android/camera/PhotoModule;J)J

    .line 2037
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterToRawCallbackTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$PostPreviewFrameCallback;->this$0:Lcom/android/camera/PhotoModule;

    .line 2038
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$8700(Lcom/android/camera/PhotoModule;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/PhotoModule$PostPreviewFrameCallback;->this$0:Lcom/android/camera/PhotoModule;

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

    .line 2037
    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2039
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PostPreviewFrameCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2040
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PostPreviewFrameCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    const-string v1, "PostPreviewFrameCallback"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2043
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PostPreviewFrameCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$500(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2046
    :cond_1
    return-void
.end method

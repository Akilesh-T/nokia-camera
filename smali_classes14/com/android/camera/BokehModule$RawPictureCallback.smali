.class final Lcom/android/camera/BokehModule$RawPictureCallback;
.super Ljava/lang/Object;
.source "BokehModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BokehModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RawPictureCallback"
.end annotation


# instance fields
.field mMemoto:Lcom/android/camera/BokehModule$Memento;

.field final synthetic this$0:Lcom/android/camera/BokehModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/BokehModule;Lcom/android/camera/BokehModule$Memento;)V
    .locals 0
    .param p2, "memento"    # Lcom/android/camera/BokehModule$Memento;

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/android/camera/BokehModule$RawPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1058
    iput-object p2, p0, Lcom/android/camera/BokehModule$RawPictureCallback;->mMemoto:Lcom/android/camera/BokehModule$Memento;

    .line 1059
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 6
    .param p1, "rawData"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/camera/BokehModule$RawPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/camera/BokehModule;->access$3402(Lcom/android/camera/BokehModule;J)J

    .line 1064
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterToRawCallbackTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/BokehModule$RawPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    .line 1065
    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$3400(Lcom/android/camera/BokehModule;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/BokehModule$RawPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v4}, Lcom/android/camera/BokehModule;->access$1900(Lcom/android/camera/BokehModule;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1064
    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lcom/android/camera/BokehModule$RawPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$3300(Lcom/android/camera/BokehModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/android/camera/BokehModule$RawPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$3300(Lcom/android/camera/BokehModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    const-string v1, "RawPictureCallback"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehModule$RawPictureCallback;->mMemoto:Lcom/android/camera/BokehModule$Memento;

    if-eqz v0, :cond_1

    .line 1071
    iget-object v0, p0, Lcom/android/camera/BokehModule$RawPictureCallback;->mMemoto:Lcom/android/camera/BokehModule$Memento;

    invoke-static {v0}, Lcom/android/camera/BokehModule$Memento;->access$2700(Lcom/android/camera/BokehModule$Memento;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/BokehModule$RawPictureCallback;->mMemoto:Lcom/android/camera/BokehModule$Memento;

    invoke-static {v0}, Lcom/android/camera/BokehModule$Memento;->access$2700(Lcom/android/camera/BokehModule$Memento;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1072
    iget-object v0, p0, Lcom/android/camera/BokehModule$RawPictureCallback;->mMemoto:Lcom/android/camera/BokehModule$Memento;

    invoke-static {v0}, Lcom/android/camera/BokehModule$Memento;->access$2700(Lcom/android/camera/BokehModule$Memento;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 1075
    :cond_1
    return-void
.end method

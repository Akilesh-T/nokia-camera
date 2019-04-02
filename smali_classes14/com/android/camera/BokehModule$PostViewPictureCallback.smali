.class final Lcom/android/camera/BokehModule$PostViewPictureCallback;
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
    name = "PostViewPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/BokehModule;)V
    .locals 0

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/android/camera/BokehModule$PostViewPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/BokehModule;Lcom/android/camera/BokehModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/BokehModule;
    .param p2, "x1"    # Lcom/android/camera/BokehModule$1;

    .prologue
    .line 1039
    invoke-direct {p0, p1}, Lcom/android/camera/BokehModule$PostViewPictureCallback;-><init>(Lcom/android/camera/BokehModule;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/camera/BokehModule$PostViewPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/camera/BokehModule;->access$3202(Lcom/android/camera/BokehModule;J)J

    .line 1044
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterToPostViewCallbackTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/BokehModule$PostViewPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    .line 1045
    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$3200(Lcom/android/camera/BokehModule;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/BokehModule$PostViewPictureCallback;->this$0:Lcom/android/camera/BokehModule;

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

    .line 1044
    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1047
    iget-object v0, p0, Lcom/android/camera/BokehModule$PostViewPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$3300(Lcom/android/camera/BokehModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/android/camera/BokehModule$PostViewPictureCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$3300(Lcom/android/camera/BokehModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    const-string v1, "PostViewPictureCallback"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1050
    :cond_0
    return-void
.end method

.class final Lcom/android/camera/ManualModule$RawPictureCallback;
.super Ljava/lang/Object;
.source "ManualModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RawPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/ManualModule;)V
    .locals 0

    .prologue
    .line 881
    iput-object p1, p0, Lcom/android/camera/ManualModule$RawPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ManualModule;Lcom/android/camera/ManualModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ManualModule;
    .param p2, "x1"    # Lcom/android/camera/ManualModule$1;

    .prologue
    .line 881
    invoke-direct {p0, p1}, Lcom/android/camera/ManualModule$RawPictureCallback;-><init>(Lcom/android/camera/ManualModule;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 6
    .param p1, "rawData"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/camera/ManualModule$RawPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/camera/ManualModule;->access$2302(Lcom/android/camera/ManualModule;J)J

    .line 885
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterToRawCallbackTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ManualModule$RawPictureCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v2}, Lcom/android/camera/ManualModule;->access$2300(Lcom/android/camera/ManualModule;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/ManualModule$RawPictureCallback;->this$0:Lcom/android/camera/ManualModule;

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

    .line 886
    return-void
.end method

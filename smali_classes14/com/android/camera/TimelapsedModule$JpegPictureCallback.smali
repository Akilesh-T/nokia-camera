.class final Lcom/android/camera/TimelapsedModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "TimelapsedModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/TimelapsedModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final mRecordingTimeStamp:J

.field final synthetic this$0:Lcom/android/camera/TimelapsedModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/TimelapsedModule;Landroid/location/Location;J)V
    .locals 1
    .param p2, "loc"    # Landroid/location/Location;
    .param p3, "recordingTimeStamp"    # J

    .prologue
    .line 2019
    iput-object p1, p0, Lcom/android/camera/TimelapsedModule$JpegPictureCallback;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2020
    iput-object p2, p0, Lcom/android/camera/TimelapsedModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 2021
    iput-wide p3, p0, Lcom/android/camera/TimelapsedModule$JpegPictureCallback;->mRecordingTimeStamp:J

    .line 2022
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 5
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const/4 v4, 0x0

    .line 2026
    invoke-static {}, Lcom/android/camera/TimelapsedModule;->access$1500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Video snapshot taken."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2027
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule$JpegPictureCallback;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v0}, Lcom/android/camera/TimelapsedModule;->access$400(Lcom/android/camera/TimelapsedModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2033
    :cond_0
    :goto_0
    return-void

    .line 2028
    :cond_1
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule$JpegPictureCallback;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v0}, Lcom/android/camera/TimelapsedModule;->access$900(Lcom/android/camera/TimelapsedModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2029
    iget-wide v0, p0, Lcom/android/camera/TimelapsedModule$JpegPictureCallback;->mRecordingTimeStamp:J

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule$JpegPictureCallback;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v2}, Lcom/android/camera/TimelapsedModule;->access$3100(Lcom/android/camera/TimelapsedModule;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2030
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule$JpegPictureCallback;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v0, v4}, Lcom/android/camera/TimelapsedModule;->access$3502(Lcom/android/camera/TimelapsedModule;Z)Z

    .line 2031
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule$JpegPictureCallback;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-virtual {v0, v4}, Lcom/android/camera/TimelapsedModule;->showVideoSnapshotUI(Z)V

    .line 2032
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule$JpegPictureCallback;->this$0:Lcom/android/camera/TimelapsedModule;

    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    invoke-static {v0, p1, v1}, Lcom/android/camera/TimelapsedModule;->access$3600(Lcom/android/camera/TimelapsedModule;[BLandroid/location/Location;)V

    goto :goto_0
.end method

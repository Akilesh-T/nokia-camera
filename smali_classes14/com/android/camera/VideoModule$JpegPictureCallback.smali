.class final Lcom/android/camera/VideoModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final mRecordingTimeStamp:J

.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/VideoModule;Landroid/location/Location;J)V
    .locals 1
    .param p2, "loc"    # Landroid/location/Location;
    .param p3, "recordingTimeStamp"    # J

    .prologue
    .line 2596
    iput-object p1, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2597
    iput-object p2, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 2598
    iput-wide p3, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->mRecordingTimeStamp:J

    .line 2599
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 5
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const/4 v4, 0x0

    .line 2603
    invoke-static {}, Lcom/android/camera/VideoModule;->access$1600()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Video snapshot taken."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2604
    iget-object v0, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2610
    :cond_0
    :goto_0
    return-void

    .line 2605
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$1000(Lcom/android/camera/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2606
    iget-wide v0, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->mRecordingTimeStamp:J

    iget-object v2, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$3900(Lcom/android/camera/VideoModule;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2607
    iget-object v0, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0, v4}, Lcom/android/camera/VideoModule;->access$4302(Lcom/android/camera/VideoModule;Z)Z

    .line 2608
    iget-object v0, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/VideoModule;

    invoke-virtual {v0, v4}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 2609
    iget-object v0, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/VideoModule;

    iget-object v1, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    invoke-static {v0, p1, v1}, Lcom/android/camera/VideoModule;->access$4400(Lcom/android/camera/VideoModule;[BLandroid/location/Location;)V

    goto :goto_0
.end method

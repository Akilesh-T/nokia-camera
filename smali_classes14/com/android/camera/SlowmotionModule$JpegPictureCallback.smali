.class final Lcom/android/camera/SlowmotionModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "SlowmotionModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SlowmotionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final mRecordingTimeStamp:J

.field final synthetic this$0:Lcom/android/camera/SlowmotionModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/SlowmotionModule;Landroid/location/Location;J)V
    .locals 1
    .param p2, "loc"    # Landroid/location/Location;
    .param p3, "recordingTimeStamp"    # J

    .prologue
    .line 2147
    iput-object p1, p0, Lcom/android/camera/SlowmotionModule$JpegPictureCallback;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2148
    iput-object p2, p0, Lcom/android/camera/SlowmotionModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 2149
    iput-wide p3, p0, Lcom/android/camera/SlowmotionModule$JpegPictureCallback;->mRecordingTimeStamp:J

    .line 2150
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 5
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const/4 v4, 0x0

    .line 2154
    invoke-static {}, Lcom/android/camera/SlowmotionModule;->access$1500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Video snapshot taken."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2155
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule$JpegPictureCallback;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v0}, Lcom/android/camera/SlowmotionModule;->access$400(Lcom/android/camera/SlowmotionModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2161
    :cond_0
    :goto_0
    return-void

    .line 2156
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule$JpegPictureCallback;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v0}, Lcom/android/camera/SlowmotionModule;->access$900(Lcom/android/camera/SlowmotionModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2157
    iget-wide v0, p0, Lcom/android/camera/SlowmotionModule$JpegPictureCallback;->mRecordingTimeStamp:J

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule$JpegPictureCallback;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v2}, Lcom/android/camera/SlowmotionModule;->access$3300(Lcom/android/camera/SlowmotionModule;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2158
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule$JpegPictureCallback;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v0, v4}, Lcom/android/camera/SlowmotionModule;->access$3702(Lcom/android/camera/SlowmotionModule;Z)Z

    .line 2159
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule$JpegPictureCallback;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-virtual {v0, v4}, Lcom/android/camera/SlowmotionModule;->showVideoSnapshotUI(Z)V

    .line 2160
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule$JpegPictureCallback;->this$0:Lcom/android/camera/SlowmotionModule;

    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    invoke-static {v0, p1, v1}, Lcom/android/camera/SlowmotionModule;->access$3800(Lcom/android/camera/SlowmotionModule;[BLandroid/location/Location;)V

    goto :goto_0
.end method

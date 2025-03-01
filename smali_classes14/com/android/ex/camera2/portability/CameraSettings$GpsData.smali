.class public Lcom/android/ex/camera2/portability/CameraSettings$GpsData;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GpsData"
.end annotation


# instance fields
.field public final altitude:D

.field public final latitude:D

.field public final longitude:D

.field public final processingMethod:Ljava/lang/String;

.field public final timeStamp:J


# direct methods
.method public constructor <init>(DDDJLjava/lang/String;)V
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "altitude"    # D
    .param p7, "timeStamp"    # J
    .param p9, "processingMethod"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    if-nez p9, :cond_1

    cmpl-double v0, p1, v2

    if-nez v0, :cond_0

    cmpl-double v0, p3, v2

    if-nez v0, :cond_0

    cmpl-double v0, p5, v2

    if-eqz v0, :cond_1

    .line 527
    :cond_0
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraSettings;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "GpsData\'s nonzero data will be ignored due to null processingMethod"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 529
    :cond_1
    iput-wide p1, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->latitude:D

    .line 530
    iput-wide p3, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->longitude:D

    .line 531
    iput-wide p5, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->altitude:D

    .line 532
    iput-wide p7, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->timeStamp:J

    .line 533
    iput-object p9, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->processingMethod:Ljava/lang/String;

    .line 534
    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/CameraSettings$GpsData;)V
    .locals 2
    .param p1, "src"    # Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    .prologue
    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->latitude:D

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->latitude:D

    .line 539
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->longitude:D

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->longitude:D

    .line 540
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->altitude:D

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->altitude:D

    .line 541
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->timeStamp:J

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->timeStamp:J

    .line 542
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->processingMethod:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->processingMethod:Ljava/lang/String;

    .line 543
    return-void
.end method

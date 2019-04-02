.class public Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;
.super Ljava/lang/Object;
.source "JpegImageToProcess.java"


# instance fields
.field public final mCameraType:Lcom/android/camera/one/CameraType;

.field public final mDualSightCamType:Lcom/android/camera/one/DualSightCamType;

.field public final mImageData:[B

.field public final mIndex:I

.field public final mTimestamp:J


# direct methods
.method public constructor <init>(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;IJ[B)V
    .locals 0
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p3, "index"    # I
    .param p4, "timestamp"    # J
    .param p6, "imageData"    # [B

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;->mCameraType:Lcom/android/camera/one/CameraType;

    .line 20
    iput-object p2, p0, Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;->mDualSightCamType:Lcom/android/camera/one/DualSightCamType;

    .line 21
    iput p3, p0, Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;->mIndex:I

    .line 22
    iput-wide p4, p0, Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;->mTimestamp:J

    .line 23
    iput-object p6, p0, Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;->mImageData:[B

    .line 24
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JpegImageToProcess {mCameraType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;->mCameraType:Lcom/android/camera/one/CameraType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDSCameraType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;->mDualSightCamType:Lcom/android/camera/one/DualSightCamType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;->mTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImageData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;->mImageData:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

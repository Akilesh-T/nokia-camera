.class public Lcom/android/camera/util/ExifUtil$CaptureMetaData;
.super Ljava/lang/Object;
.source "ExifUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/ExifUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptureMetaData"
.end annotation


# instance fields
.field private mCaptureMode:Lcom/android/ex/camera2/portability/CaptureIntent;

.field private mDetectedISO:I

.field private mFlashRequired:Lcom/android/camera/async/LockableConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/LockableConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusState:I

.field private mISOAuto:Z

.field private mManualExposure:Z

.field private mMeteringMode:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;


# direct methods
.method public constructor <init>(Lcom/android/ex/camera2/portability/CaptureIntent;Lcom/android/camera/async/LockableConcurrentState;ILcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;)V
    .locals 0
    .param p1, "capMode"    # Lcom/android/ex/camera2/portability/CaptureIntent;
    .param p3, "focusState"    # I
    .param p4, "meteringMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ex/camera2/portability/CaptureIntent;",
            "Lcom/android/camera/async/LockableConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;I",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, "flashReq":Lcom/android/camera/async/LockableConcurrentState;, "Lcom/android/camera/async/LockableConcurrentState<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->mCaptureMode:Lcom/android/ex/camera2/portability/CaptureIntent;

    .line 81
    iput-object p2, p0, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->mFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    .line 82
    iput p3, p0, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->mFocusState:I

    .line 83
    iput-object p4, p0, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->mMeteringMode:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/CaptureIntent;Lcom/android/camera/async/LockableConcurrentState;ILcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;ZZI)V
    .locals 0
    .param p1, "capMode"    # Lcom/android/ex/camera2/portability/CaptureIntent;
    .param p3, "focusState"    # I
    .param p4, "meteringMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
    .param p5, "manualExposure"    # Z
    .param p6, "isoAuto"    # Z
    .param p7, "detectedISO"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ex/camera2/portability/CaptureIntent;",
            "Lcom/android/camera/async/LockableConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;I",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;",
            "ZZI)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p2, "flashReq":Lcom/android/camera/async/LockableConcurrentState;, "Lcom/android/camera/async/LockableConcurrentState<Ljava/lang/Boolean;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/util/ExifUtil$CaptureMetaData;-><init>(Lcom/android/ex/camera2/portability/CaptureIntent;Lcom/android/camera/async/LockableConcurrentState;ILcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;)V

    .line 90
    iput-boolean p5, p0, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->mManualExposure:Z

    .line 91
    iput-boolean p6, p0, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->mISOAuto:Z

    .line 92
    iput p7, p0, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->mDetectedISO:I

    .line 93
    return-void
.end method


# virtual methods
.method public getCaptureMode()Lcom/android/ex/camera2/portability/CaptureIntent;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->mCaptureMode:Lcom/android/ex/camera2/portability/CaptureIntent;

    return-object v0
.end method

.method public getDetectedISO()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->mDetectedISO:I

    return v0
.end method

.method public getFlashReq()Lcom/android/camera/async/LockableConcurrentState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/LockableConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->mFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    return-object v0
.end method

.method public getFocusState()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->mFocusState:I

    return v0
.end method

.method public getMeteringMode()Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->mMeteringMode:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    return-object v0
.end method

.method public isISOAuto()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->mISOAuto:Z

    return v0
.end method

.method public isManualExposure()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->mManualExposure:Z

    return v0
.end method

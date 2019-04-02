.class public Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
.super Ljava/lang/Object;
.source "CameraExtensionCaptureCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;,
        Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;
    }
.end annotation


# instance fields
.field public final mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

.field public final mBokeh:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;

.field public final mIsCameraFrontFacing:Z

.field public final mIsLongExposureTime:Z

.field public final mIsUsePostProcess:Z

.field public final mIsoValue:I

.field public final mJpeg:Landroid/hardware/Camera$PictureCallback;

.field public final mJpegRotation:I

.field public final mPostView:Landroid/hardware/Camera$PictureCallback;

.field public final mRaw:Landroid/hardware/Camera$PictureCallback;

.field public final mShutter:Landroid/hardware/Camera$ShutterCallback;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;IZIZ)V
    .locals 1
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postView"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;
    .param p5, "bokeh"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;
    .param p6, "actionNotSupport"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "jpegRotation"    # I
    .param p8, "usePostProcess"    # Z
    .param p9, "isoValue"    # I
    .param p10, "isCameraFrontFacing"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mShutter:Landroid/hardware/Camera$ShutterCallback;

    .line 55
    iput-object p2, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mRaw:Landroid/hardware/Camera$PictureCallback;

    .line 56
    iput-object p3, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mPostView:Landroid/hardware/Camera$PictureCallback;

    .line 57
    iput-object p4, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mJpeg:Landroid/hardware/Camera$PictureCallback;

    .line 58
    iput-object p5, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mBokeh:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;

    .line 59
    iput-object p6, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    .line 60
    iput p7, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mJpegRotation:I

    .line 61
    iput-boolean p8, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mIsUsePostProcess:Z

    .line 62
    iput p9, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mIsoValue:I

    .line 63
    iput-boolean p10, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mIsCameraFrontFacing:Z

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mIsLongExposureTime:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;IZIZZ)V
    .locals 0
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postView"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;
    .param p5, "bokeh"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;
    .param p6, "actionNotSupport"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "jpegRotation"    # I
    .param p8, "usePostProcess"    # Z
    .param p9, "isoValue"    # I
    .param p10, "isCameraFrontFacing"    # Z
    .param p11, "isLongExposureTime"    # Z

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mShutter:Landroid/hardware/Camera$ShutterCallback;

    .line 70
    iput-object p2, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mRaw:Landroid/hardware/Camera$PictureCallback;

    .line 71
    iput-object p3, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mPostView:Landroid/hardware/Camera$PictureCallback;

    .line 72
    iput-object p4, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mJpeg:Landroid/hardware/Camera$PictureCallback;

    .line 73
    iput-object p5, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mBokeh:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;

    .line 74
    iput-object p6, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    .line 75
    iput p7, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mJpegRotation:I

    .line 76
    iput-boolean p8, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mIsUsePostProcess:Z

    .line 77
    iput p9, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mIsoValue:I

    .line 78
    iput-boolean p10, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mIsCameraFrontFacing:Z

    .line 79
    iput-boolean p11, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mIsLongExposureTime:Z

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;IZZ)V
    .locals 1
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postView"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;
    .param p5, "bokeh"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;
    .param p6, "actionNotSupport"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "jpegRotation"    # I
    .param p8, "usePostProcess"    # Z
    .param p9, "isCameraFrontFacing"    # Z

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mShutter:Landroid/hardware/Camera$ShutterCallback;

    .line 39
    iput-object p2, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mRaw:Landroid/hardware/Camera$PictureCallback;

    .line 40
    iput-object p3, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mPostView:Landroid/hardware/Camera$PictureCallback;

    .line 41
    iput-object p4, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mJpeg:Landroid/hardware/Camera$PictureCallback;

    .line 42
    iput-object p5, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mBokeh:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;

    .line 43
    iput-object p6, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    .line 44
    iput p7, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mJpegRotation:I

    .line 45
    iput-boolean p8, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mIsUsePostProcess:Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mIsoValue:I

    .line 47
    iput-boolean p9, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mIsCameraFrontFacing:Z

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mIsLongExposureTime:Z

    .line 49
    return-void
.end method

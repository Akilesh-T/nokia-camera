.class final Lcom/android/camera/one/v2/photo/extension/BokehResultDetectorExtCreator$1;
.super Lcom/android/camera/one/v2/photo/extension/BokehResultDetectExtension;
.source "BokehResultDetectorExtCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/extension/BokehResultDetectorExtCreator;->create()Lcom/android/camera/one/v2/photo/extension/BokehResultDetectExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/camera/one/v2/photo/extension/BokehResultDetectExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public getBokehResult(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)I
    .locals 1
    .param p1, "captureResult"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 31
    const/4 v0, -0x2

    return v0
.end method

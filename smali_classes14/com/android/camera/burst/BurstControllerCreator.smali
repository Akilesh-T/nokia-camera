.class public Lcom/android/camera/burst/BurstControllerCreator;
.super Ljava/lang/Object;
.source "BurstControllerCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/burst/BurstResultsListener;Landroid/view/Surface;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/async/Lifetime;Lcom/android/camera/app/OrientationManager$DeviceOrientation;I)Lcom/android/camera/burst/BurstController;
    .locals 8
    .param p0, "intent"    # Lcom/android/camera/burst/BurstFacade$BurstIntent;
    .param p1, "burstResultsListener"    # Lcom/android/camera/burst/BurstResultsListener;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p4, "captureSession"    # Lcom/android/camera/session/CaptureSession;
    .param p5, "localLifetime"    # Lcom/android/camera/async/Lifetime;
    .param p6, "deviceOrientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .param p7, "imageOrientationDegrees"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/burst/BurstFacade$BurstIntent;",
            "Lcom/android/camera/burst/BurstResultsListener;",
            "Landroid/view/Surface;",
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/session/CaptureSession;",
            "Lcom/android/camera/async/Lifetime;",
            "Lcom/android/camera/app/OrientationManager$DeviceOrientation;",
            "I)",
            "Lcom/android/camera/burst/BurstController;"
        }
    .end annotation

    .prologue
    .line 26
    .local p3, "recordController":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    sget-object v0, Lcom/android/camera/burst/BurstFacade$BurstIntent;->PANORAMA:Lcom/android/camera/burst/BurstFacade$BurstIntent;

    if-ne p0, v0, :cond_0

    .line 27
    new-instance v0, Lcom/android/camera/panorama/PanoBurstController;

    invoke-direct {v0, p1, p4, p6, p7}, Lcom/android/camera/panorama/PanoBurstController;-><init>(Lcom/android/camera/burst/BurstResultsListener;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/app/OrientationManager$DeviceOrientation;I)V

    .line 33
    :goto_0
    return-object v0

    .line 28
    :cond_0
    sget-object v0, Lcom/android/camera/burst/BurstFacade$BurstIntent;->STREAMING:Lcom/android/camera/burst/BurstFacade$BurstIntent;

    if-ne p0, v0, :cond_1

    .line 29
    new-instance v0, Lcom/android/camera/video/StreamingBurstController;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/video/StreamingBurstController;-><init>(Lcom/android/camera/burst/BurstResultsListener;Landroid/view/Surface;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/async/Lifetime;Lcom/android/camera/app/OrientationManager$DeviceOrientation;I)V

    goto :goto_0

    .line 30
    :cond_1
    sget-object v0, Lcom/android/camera/burst/BurstFacade$BurstIntent;->VIDEO:Lcom/android/camera/burst/BurstFacade$BurstIntent;

    if-ne p0, v0, :cond_2

    .line 31
    new-instance v0, Lcom/android/camera/video/VideoBurstController;

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/video/VideoBurstController;-><init>(Lcom/android/camera/burst/BurstResultsListener;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/async/Lifetime;Lcom/android/camera/app/OrientationManager$DeviceOrientation;I)V

    goto :goto_0

    .line 33
    :cond_2
    new-instance v0, Lcom/android/camera/burst/JpegBurstController;

    invoke-direct {v0, p1, p4, p6, p7}, Lcom/android/camera/burst/JpegBurstController;-><init>(Lcom/android/camera/burst/BurstResultsListener;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/app/OrientationManager$DeviceOrientation;I)V

    goto :goto_0
.end method

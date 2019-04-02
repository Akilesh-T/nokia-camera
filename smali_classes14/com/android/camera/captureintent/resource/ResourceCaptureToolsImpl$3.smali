.class Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$3;
.super Ljava/lang/Object;
.source "ResourceCaptureToolsImpl.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->onVideoShutterClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$3;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAndStartEmpty(Landroid/net/Uri;)Lcom/android/camera/session/CaptureSession;
    .locals 10
    .param p1, "externalUri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x0

    .line 462
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$3;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->getBurstFacade()Lcom/android/camera/burst/BurstFacade;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v8, v9

    .line 475
    :goto_0
    return-object v8

    .line 463
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 464
    .local v4, "sessionTime":J
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$3;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->getBurstFacade()Lcom/android/camera/burst/BurstFacade;

    move-result-object v0

    check-cast v0, Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v3

    .line 465
    .local v3, "profile":Landroid/media/CamcorderProfile;
    if-nez v3, :cond_1

    move-object v8, v9

    .line 466
    goto :goto_0

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$3;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-static {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$100(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    .line 470
    .local v6, "location":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$3;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-static {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$100(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/camera/util/VideoUtil;->createName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$3;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-static {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$400(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$3;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-static {v2}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->access$300(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v7

    move-object v2, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/camera/session/CaptureSessionManager;->createNewVideoSession(Ljava/lang/String;Landroid/net/Uri;Landroid/media/CamcorderProfile;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v8

    .line 473
    .local v8, "session":Lcom/android/camera/session/CaptureSession;
    new-instance v0, Lcom/android/camera/util/Size;

    iget-object v2, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$3;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    .line 474
    invoke-virtual {v2}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v7, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$3;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    invoke-virtual {v7}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v0, v2, v7}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 473
    invoke-interface {v8, v9, v0}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    goto :goto_0
.end method

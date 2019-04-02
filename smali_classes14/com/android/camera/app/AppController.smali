.class public interface abstract Lcom/android/camera/app/AppController;
.super Ljava/lang/Object;
.source "AppController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/AppController$ShutterEventsListener;
    }
.end annotation


# virtual methods
.method public abstract addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
.end method

.method public abstract cancelPostCaptureAnimation()V
.end method

.method public abstract cancelPreCaptureAnimation()V
.end method

.method public abstract couldChangeButtonState()Z
.end method

.method public abstract createDialog()Landroid/app/Dialog;
.end method

.method public abstract enableKeepScreenOn(Z)V
.end method

.method public abstract finishActivityWithIntentCanceled()V
.end method

.method public abstract finishActivityWithIntentCompleted(Landroid/content/Intent;)V
.end method

.method public abstract freezeScreenUntilPreviewReady()V
.end method

.method public abstract getActivity()Lcom/android/camera/CameraActivity;
.end method

.method public abstract getAndroidContext()Landroid/content/Context;
.end method

.method public abstract getBitMapFromPreview(I)Landroid/graphics/Bitmap;
.end method

.method public abstract getBrightnessLevel()F
.end method

.method public abstract getButtonManager()Lcom/android/camera/ButtonManager;
.end method

.method public abstract getCameraAppUI()Lcom/android/camera/app/CameraAppUI;
.end method

.method public abstract getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;
.end method

.method public abstract getCameraOpener()Lcom/android/camera/one/OneCameraOpener;
.end method

.method public abstract getCameraProvider()Lcom/android/camera/app/CameraProvider;
.end method

.method public abstract getCameraScope()Ljava/lang/String;
.end method

.method public abstract getCurrentModuleController()Lcom/android/camera/module/ModuleController;
.end method

.method public abstract getCurrentModuleIndex()I
.end method

.method public abstract getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;
.end method

.method public abstract getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;
.end method

.method public abstract getFullscreenRect()Landroid/graphics/RectF;
.end method

.method public abstract getLiveBroadcastManager()Lcom/android/camera/livebroadcast/LiveBroadcastManager;
.end method

.method public abstract getLocationManager()Lcom/android/camera/app/LocationManager;
.end method

.method public abstract getModuleId(I)I
.end method

.method public abstract getModuleLayoutRoot()Landroid/widget/FrameLayout;
.end method

.method public abstract getModuleManager()Lcom/android/camera/app/ModuleManager;
.end method

.method public abstract getModuleScope()Ljava/lang/String;
.end method

.method public abstract getOnFilmStripReadyListener()Lcom/android/camera/app/CameraAppUI$OnFilmStripReadyListener;
.end method

.method public abstract getOnModeListViewReadyListener()Lcom/android/camera/app/CameraAppUI$OnModeListViewReadyListener;
.end method

.method public abstract getOneCameraManager()Lcom/android/camera/one/OneCameraManager;
.end method

.method public abstract getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;
.end method

.method public abstract getOrientationManager()Lcom/android/camera/app/OrientationManager;
.end method

.method public abstract getPhoneStateManager()Lcom/android/camera/PhoneStateManager;
.end method

.method public abstract getPowerStateManager()Lcom/android/camera/PowerStateManager;
.end method

.method public abstract getPreferredChildModeIndex(I)I
.end method

.method public abstract getPreviewBuffer()Landroid/graphics/SurfaceTexture;
.end method

.method public abstract getQuickSwitchToLastModuleId(I)I
.end method

.method public abstract getQuickSwitchToModuleId(I)I
.end method

.method public abstract getQuickSwitchToProModuleId(I)I
.end method

.method public abstract getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;
.end method

.method public abstract getSceneRecognitionManager()Lcom/android/camera/scenerecognition/SceneRecognitionManager;
.end method

.method public abstract getServices()Lcom/android/camera/app/CameraServices;
.end method

.method public abstract getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;
.end method

.method public abstract getSettingsManager()Lcom/android/camera/settings/SettingsManager;
.end method

.method public abstract getSoundPlayer()Lcom/android/camera/SoundPlayer;
.end method

.method public abstract getSubCameraScope()Ljava/lang/String;
.end method

.method public abstract getWatermarkManager()Lcom/android/camera/WatermarkManager;
.end method

.method public abstract gotoGallery()V
.end method

.method public abstract gotoGalleryWhenLockScreen()V
.end method

.method public abstract initSubCameraControllerIfNeed()Z
.end method

.method public abstract invalidThumbnail()V
.end method

.method public abstract isAppDestroyed()Z
.end method

.method public abstract isAutoRotateScreen()Z
.end method

.method public abstract isGoogleLensAvailable()Z
.end method

.method public abstract isPaused()Z
.end method

.method public abstract isShutterEnabled()Z
.end method

.method public abstract isShutterPressed()Z
.end method

.method public abstract isSwitchButtonEnabled()Z
.end method

.method public abstract isVolumeKeyLongPressed()Z
.end method

.method public abstract launchActivityByIntent(Landroid/content/Intent;)V
.end method

.method public abstract lockOrientation()V
.end method

.method public abstract notifyModeListState(Z)V
.end method

.method public abstract notifyNewMedia(Landroid/net/Uri;)V
.end method

.method public abstract notifyNewMedia(Landroid/net/Uri;Z)V
.end method

.method public abstract notifySwipeStateChanged(I)V
.end method

.method public abstract onFirstPreviewArrived()V
.end method

.method public abstract onLocationSelected(DD)V
.end method

.method public abstract onModeSelected(I)V
.end method

.method public abstract onPreviewReadyToStart()V
.end method

.method public abstract onPreviewStarted()V
.end method

.method public abstract onSettingsSelected(Ljava/lang/String;)V
.end method

.method public abstract openContextMenu(Landroid/view/View;)V
.end method

.method public abstract registerForContextMenu(Landroid/view/View;)V
.end method

.method public abstract removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
.end method

.method public abstract setBrightnessLevel(F)V
.end method

.method public abstract setLastModuleId(I)V
.end method

.method public abstract setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V
.end method

.method public abstract setShutterEnabled(Z)V
.end method

.method public abstract setShutterEventsListener(Lcom/android/camera/app/AppController$ShutterEventsListener;)V
.end method

.method public abstract setSwitchButtonEnabled(Z)V
.end method

.method public abstract setThumbnailClickable(Z)V
.end method

.method public abstract setVideoShutterEnabled(Z)V
.end method

.method public abstract setupOneShotPreviewListener()V
.end method

.method public abstract showThumbnailIfAvailable()V
.end method

.method public abstract showTutorial(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V
.end method

.method public abstract startFlashAnimation(Z)V
.end method

.method public abstract startFlashAnimation(ZLjava/lang/Runnable;)V
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startFlashAnimationBeforeTakePicture(Ljava/lang/Runnable;)Z
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startPostCaptureAnimation()V
.end method

.method public abstract startPostCaptureAnimation(Landroid/graphics/Bitmap;)V
.end method

.method public abstract startPreCaptureAnimation()V
.end method

.method public abstract stopFlashAnimationAfterTakePicture(Z)V
.end method

.method public abstract switchCamera(Z)V
.end method

.method public abstract transformModuleIndexIfNeed(I)I
.end method

.method public abstract unlockOrientation()V
.end method

.method public abstract updatePreviewAspectRatio(F)V
.end method

.method public abstract updatePreviewTransform(Landroid/graphics/Matrix;)V
.end method

.method public abstract updatePreviewTransformFullscreen(Landroid/graphics/Matrix;F)V
.end method

.method public abstract userSelectedModeAlready()Z
.end method

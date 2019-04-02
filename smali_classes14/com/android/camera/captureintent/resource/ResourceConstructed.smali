.class public interface abstract Lcom/android/camera/captureintent/resource/ResourceConstructed;
.super Ljava/lang/Object;
.source "ResourceConstructed.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# virtual methods
.method public abstract getAppController()Lcom/android/camera/app/AppController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getBurstFacade()Lcom/android/camera/burst/BurstFacade;
.end method

.method public abstract getCamcorderProfile()Landroid/media/CamcorderProfile;
.end method

.method public abstract getCameraFacingSetting()Lcom/android/camera/settings/CameraFacingSetting;
.end method

.method public abstract getCameraHandler()Landroid/os/Handler;
.end method

.method public abstract getCaptureDataKeeper()Lcom/android/camera/captureintent/CaptureDataKeeper;
.end method

.method public abstract getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;
.end method

.method public abstract getIntent()Landroid/content/Intent;
.end method

.method public abstract getLocationManager()Lcom/android/camera/app/LocationManager;
.end method

.method public abstract getMainThread()Lcom/android/camera/async/MainThread;
.end method

.method public abstract getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;
.end method

.method public abstract getOneCameraManager()Lcom/android/camera/one/OneCameraManager;
.end method

.method public abstract getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;
.end method

.method public abstract getOrientationManager()Lcom/android/camera/app/OrientationManager;
.end method

.method public abstract getPersistentInputSurfaceLifetime()Lcom/android/camera/async/Lifetime;
.end method

.method public abstract getPowerStateManager()Lcom/android/camera/PowerStateManager;
.end method

.method public abstract getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;
.end method

.method public abstract getSettingScopeNamespace()Ljava/lang/String;
.end method

.method public abstract getSettingsManager()Lcom/android/camera/settings/SettingsManager;
.end method

.method public abstract getSoundPlayer()Lcom/android/camera/SoundPlayer;
.end method

.method public abstract getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;
.end method

.method public abstract setBurstFacade(Lcom/android/camera/burst/BurstFacade;)V
.end method

.method public abstract setCamcorderProfile(Landroid/media/CamcorderProfile;)V
.end method

.method public abstract setPersistentInputSurfaceLifetime(Lcom/android/camera/async/Lifetime;)V
.end method

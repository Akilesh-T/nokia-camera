.class public final Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;
.super Ljava/lang/Object;
.source "ResourceConstructedImpl.java"

# interfaces
.implements Lcom/android/camera/captureintent/resource/ResourceConstructed;


# instance fields
.field private final mAppController:Lcom/android/camera/app/AppController;

.field private mBurstFacade:Lcom/android/camera/burst/BurstFacade;

.field private mCamcorderProfile:Landroid/media/CamcorderProfile;

.field private final mCameraFacingSetting:Lcom/android/camera/settings/CameraFacingSetting;

.field private final mCameraHandler:Landroid/os/Handler;

.field private final mCameraThread:Landroid/os/HandlerThread;

.field private final mCaptureDataKeeper:Lcom/android/camera/captureintent/CaptureDataKeeper;

.field private final mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field private final mContext:Landroid/content/Context;

.field private final mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

.field private final mIntent:Landroid/content/Intent;

.field private final mLocationManager:Lcom/android/camera/app/LocationManager;

.field private final mMainThread:Lcom/android/camera/async/MainThread;

.field private final mModuleUI:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

.field private final mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

.field private final mOneCameraProvider:Lcom/android/camera/app/OneCameraProvider;

.field private final mOrientationManager:Lcom/android/camera/app/OrientationManager;

.field private mPersistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

.field private final mPowerStateManager:Lcom/android/camera/PowerStateManager;

.field private final mResolutionSetting:Lcom/android/camera/settings/ResolutionSetting;

.field private final mSettingScopeNamespace:Ljava/lang/String;

.field private final mSettingsManager:Lcom/android/camera/settings/SettingsManager;

.field private final mSoundPlayer:Lcom/android/camera/SoundPlayer;

.field private final mStateMachine:Lcom/android/camera/captureintent/stateful/StateMachine;


# direct methods
.method private constructor <init>(Landroid/content/Intent;Lcom/android/camera/captureintent/CaptureIntentModuleUI;Ljava/lang/String;Lcom/android/camera/async/MainThread;Landroid/content/Context;Lcom/android/camera/app/OneCameraProvider;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/app/LocationManager;Lcom/android/camera/app/OrientationManager;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/PowerStateManager;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/settings/CameraFacingSetting;Lcom/android/camera/settings/ResolutionSetting;Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/captureintent/CaptureDataKeeper;Lcom/android/camera/captureintent/stateful/StateMachine;Lcom/android/camera/FatalErrorHandler;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "moduleUI"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;
    .param p3, "settingScopeNamespace"    # Ljava/lang/String;
    .param p4, "mainThread"    # Lcom/android/camera/async/MainThread;
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "oneCameraProvider"    # Lcom/android/camera/app/OneCameraProvider;
    .param p7, "hardwareManager"    # Lcom/android/camera/one/OneCameraManager;
    .param p8, "locationManager"    # Lcom/android/camera/app/LocationManager;
    .param p9, "orientationManager"    # Lcom/android/camera/app/OrientationManager;
    .param p10, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p11, "powerStateManager"    # Lcom/android/camera/PowerStateManager;
    .param p12, "burstFacade"    # Lcom/android/camera/burst/BurstFacade;
    .param p13, "cameraFacingSetting"    # Lcom/android/camera/settings/CameraFacingSetting;
    .param p14, "resolutionSetting"    # Lcom/android/camera/settings/ResolutionSetting;
    .param p15, "appController"    # Lcom/android/camera/app/AppController;
    .param p16, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .param p17, "captureDataKeeper"    # Lcom/android/camera/captureintent/CaptureDataKeeper;
    .param p18, "stateMachine"    # Lcom/android/camera/captureintent/stateful/StateMachine;
    .param p19, "fatalErrorHandler"    # Lcom/android/camera/FatalErrorHandler;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mIntent:Landroid/content/Intent;

    .line 128
    iput-object p2, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mModuleUI:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    .line 129
    iput-object p3, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mSettingScopeNamespace:Ljava/lang/String;

    .line 130
    iput-object p4, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 131
    iput-object p5, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mContext:Landroid/content/Context;

    .line 132
    iput-object p6, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mOneCameraProvider:Lcom/android/camera/app/OneCameraProvider;

    .line 133
    iput-object p7, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 134
    iput-object p8, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mLocationManager:Lcom/android/camera/app/LocationManager;

    .line 135
    iput-object p9, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mOrientationManager:Lcom/android/camera/app/OrientationManager;

    .line 136
    iput-object p10, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 137
    iput-object p11, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mPowerStateManager:Lcom/android/camera/PowerStateManager;

    .line 138
    iput-object p12, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mBurstFacade:Lcom/android/camera/burst/BurstFacade;

    .line 139
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mCameraFacingSetting:Lcom/android/camera/settings/CameraFacingSetting;

    .line 140
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mResolutionSetting:Lcom/android/camera/settings/ResolutionSetting;

    .line 141
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    .line 142
    new-instance v1, Lcom/android/camera/SoundPlayer;

    iget-object v2, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 143
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mAppController:Lcom/android/camera/app/AppController;

    .line 144
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 145
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mCaptureDataKeeper:Lcom/android/camera/captureintent/CaptureDataKeeper;

    .line 146
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mStateMachine:Lcom/android/camera/captureintent/stateful/StateMachine;

    .line 148
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ImageCaptureIntentModule.CameraHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mCameraThread:Landroid/os/HandlerThread;

    .line 149
    iget-object v1, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 150
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mCameraHandler:Landroid/os/Handler;

    .line 151
    return-void
.end method

.method public static create(Landroid/content/Intent;Lcom/android/camera/captureintent/CaptureIntentModuleUI;Ljava/lang/String;Lcom/android/camera/async/MainThread;Landroid/content/Context;Lcom/android/camera/app/OneCameraProvider;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/app/LocationManager;Lcom/android/camera/app/OrientationManager;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/PowerStateManager;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/captureintent/CaptureDataKeeper;Lcom/android/camera/captureintent/stateful/StateMachine;Lcom/android/camera/FatalErrorHandler;)Lcom/android/camera/async/RefCountBase;
    .locals 24
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "moduleUI"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;
    .param p2, "settingScopeNamespace"    # Ljava/lang/String;
    .param p3, "mainThread"    # Lcom/android/camera/async/MainThread;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "oneCameraProvider"    # Lcom/android/camera/app/OneCameraProvider;
    .param p6, "oneCameraManager"    # Lcom/android/camera/one/OneCameraManager;
    .param p7, "locationManager"    # Lcom/android/camera/app/LocationManager;
    .param p8, "orientationManager"    # Lcom/android/camera/app/OrientationManager;
    .param p9, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p10, "powerStateManager"    # Lcom/android/camera/PowerStateManager;
    .param p11, "burstFacade"    # Lcom/android/camera/burst/BurstFacade;
    .param p12, "appController"    # Lcom/android/camera/app/AppController;
    .param p13, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .param p14, "captureDataKeeper"    # Lcom/android/camera/captureintent/CaptureDataKeeper;
    .param p15, "stateMachine"    # Lcom/android/camera/captureintent/stateful/StateMachine;
    .param p16, "fatalErrorHandler"    # Lcom/android/camera/FatalErrorHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/android/camera/captureintent/CaptureIntentModuleUI;",
            "Ljava/lang/String;",
            "Lcom/android/camera/async/MainThread;",
            "Landroid/content/Context;",
            "Lcom/android/camera/app/OneCameraProvider;",
            "Lcom/android/camera/one/OneCameraManager;",
            "Lcom/android/camera/app/LocationManager;",
            "Lcom/android/camera/app/OrientationManager;",
            "Lcom/android/camera/settings/SettingsManager;",
            "Lcom/android/camera/PowerStateManager;",
            "Lcom/android/camera/burst/BurstFacade;",
            "Lcom/android/camera/app/AppController;",
            "Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;",
            "Lcom/android/camera/captureintent/CaptureDataKeeper;",
            "Lcom/android/camera/captureintent/stateful/StateMachine;",
            "Lcom/android/camera/FatalErrorHandler;",
            ")",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v16, Lcom/android/camera/settings/CameraFacingSetting;

    .line 98
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v16

    move-object/from16 v1, p9

    move-object/from16 v2, p2

    invoke-direct {v0, v3, v1, v2}, Lcom/android/camera/settings/CameraFacingSetting;-><init>(Landroid/content/res/Resources;Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V

    .line 99
    .local v16, "cameraFacingSetting":Lcom/android/camera/settings/CameraFacingSetting;
    new-instance v17, Lcom/android/camera/settings/ResolutionSetting;

    .line 100
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v17

    move-object/from16 v1, p9

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/settings/ResolutionSetting;-><init>(Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/one/OneCameraManager;Landroid/content/ContentResolver;)V

    .line 101
    .local v17, "resolutionSetting":Lcom/android/camera/settings/ResolutionSetting;
    new-instance v23, Lcom/android/camera/async/RefCountBase;

    new-instance v3, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    move-object/from16 v20, p14

    move-object/from16 v21, p15

    move-object/from16 v22, p16

    invoke-direct/range {v3 .. v22}, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;-><init>(Landroid/content/Intent;Lcom/android/camera/captureintent/CaptureIntentModuleUI;Ljava/lang/String;Lcom/android/camera/async/MainThread;Landroid/content/Context;Lcom/android/camera/app/OneCameraProvider;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/app/LocationManager;Lcom/android/camera/app/OrientationManager;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/PowerStateManager;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/settings/CameraFacingSetting;Lcom/android/camera/settings/ResolutionSetting;Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/captureintent/CaptureDataKeeper;Lcom/android/camera/captureintent/stateful/StateMachine;Lcom/android/camera/FatalErrorHandler;)V

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Lcom/android/camera/async/RefCountBase;-><init>(Lcom/android/camera/async/SafeCloseable;)V

    return-object v23
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/camera/SoundPlayer;->release()V

    .line 156
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 157
    return-void
.end method

.method public getAppController()Lcom/android/camera/app/AppController;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method public getBurstFacade()Lcom/android/camera/burst/BurstFacade;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mBurstFacade:Lcom/android/camera/burst/BurstFacade;

    return-object v0
.end method

.method public getCamcorderProfile()Landroid/media/CamcorderProfile;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method public getCameraFacingSetting()Lcom/android/camera/settings/CameraFacingSetting;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mCameraFacingSetting:Lcom/android/camera/settings/CameraFacingSetting;

    return-object v0
.end method

.method public getCameraHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getCaptureDataKeeper()Lcom/android/camera/captureintent/CaptureDataKeeper;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mCaptureDataKeeper:Lcom/android/camera/captureintent/CaptureDataKeeper;

    return-object v0
.end method

.method public getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLocationManager()Lcom/android/camera/app/LocationManager;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mLocationManager:Lcom/android/camera/app/LocationManager;

    return-object v0
.end method

.method public getMainThread()Lcom/android/camera/async/MainThread;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mMainThread:Lcom/android/camera/async/MainThread;

    return-object v0
.end method

.method public getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mModuleUI:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    return-object v0
.end method

.method public getOneCameraManager()Lcom/android/camera/one/OneCameraManager;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    return-object v0
.end method

.method public getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mOneCameraProvider:Lcom/android/camera/app/OneCameraProvider;

    return-object v0
.end method

.method public getOrientationManager()Lcom/android/camera/app/OrientationManager;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mOrientationManager:Lcom/android/camera/app/OrientationManager;

    return-object v0
.end method

.method public getPersistentInputSurfaceLifetime()Lcom/android/camera/async/Lifetime;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mPersistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    return-object v0
.end method

.method public getPowerStateManager()Lcom/android/camera/PowerStateManager;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mPowerStateManager:Lcom/android/camera/PowerStateManager;

    return-object v0
.end method

.method public getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mResolutionSetting:Lcom/android/camera/settings/ResolutionSetting;

    return-object v0
.end method

.method public getSettingScopeNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mSettingScopeNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingsManager()Lcom/android/camera/settings/SettingsManager;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    return-object v0
.end method

.method public getSoundPlayer()Lcom/android/camera/SoundPlayer;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    return-object v0
.end method

.method public getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mStateMachine:Lcom/android/camera/captureintent/stateful/StateMachine;

    return-object v0
.end method

.method public setBurstFacade(Lcom/android/camera/burst/BurstFacade;)V
    .locals 0
    .param p1, "burstFacade"    # Lcom/android/camera/burst/BurstFacade;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mBurstFacade:Lcom/android/camera/burst/BurstFacade;

    .line 222
    return-void
.end method

.method public setCamcorderProfile(Landroid/media/CamcorderProfile;)V
    .locals 0
    .param p1, "camcorderProfile"    # Landroid/media/CamcorderProfile;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    .line 272
    return-void
.end method

.method public setPersistentInputSurfaceLifetime(Lcom/android/camera/async/Lifetime;)V
    .locals 0
    .param p1, "persistentInputSurfaceLifetime"    # Lcom/android/camera/async/Lifetime;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/camera/captureintent/resource/ResourceConstructedImpl;->mPersistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    .line 262
    return-void
.end method

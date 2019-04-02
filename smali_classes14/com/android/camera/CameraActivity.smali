.class public Lcom/android/camera/CameraActivity;
.super Lcom/android/camera/util/QuickActivity;
.source "CameraActivity.java"

# interfaces
.implements Lcom/android/camera/app/AppController;
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
.implements Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;
.implements Lcom/android/camera/PowerStateManager$PowerStateListener;
.implements Lcom/android/camera/PhoneStateManager$PhoneStateChangeListener;
.implements Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;
.implements Lcom/android/camera/app/CameraAppUI$OnFilmStripReadyListener;
.implements Lcom/android/camera/app/CameraAppUI$OnModeListViewReadyListener;
.implements Lcom/android/camera/app/OneCameraController$OneCameraDemandChecker;
.implements Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;
.implements Lcom/android/camera/StorageStateManager$StorageStateChangeListener;
.implements Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraActivity$SubCameraCallback;,
        Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;,
        Lcom/android/camera/CameraActivity$MainHandler;
    }
.end annotation


# static fields
.field public static final ACTION_FACTORY_RESET:Ljava/lang/String; = "com.evenwell.camera2.RESET_CAEMRA_SETTING"

.field public static final ACTION_IMAGE_CAPTURE_SECURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE_SECURE"

.field private static final CATEGORY_VOICE:Ljava/lang/String; = "android.intent.category.VOICE"

.field private static final EXTRA_REFERRER_NAME:Ljava/lang/String; = "android.intent.extra.REFERRER_NAME"

.field private static final FILMSTRIP_PRELOAD_AHEAD_ITEMS:I = 0xa

.field private static final GOOGLE_ASSISTANT_FACEBOOK_ACTION:Ljava/lang/String; = "com.hmdglobal.action.CAMERA_BOTH_CAMERA_STREAMING_FACEBOOK"

.field private static final GOOGLE_ASSISTANT_MOTION_ACTION:Ljava/lang/String; = "com.hmdglobal.action.CAMERA_MOTION_PICTURE"

.field private static final GOOGLE_ASSISTANT_NAME:Ljava/lang/String; = "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

.field private static final GOOGLE_ASSISTANT_PROMODE_ACTION:Ljava/lang/String; = "com.hmdglobal.action.CAMERA_PROCAMERA"

.field private static final GOOGLE_ASSISTANT_YOUTUBE_ACTION:Ljava/lang/String; = "com.hmdglobal.action.CAMERA_BOTH_CAMERA_STREAMING_YOUTUBE"

.field private static final INTENT_ACTION_STILL_IMAGE_CAMERA_SECURE:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA_SECURE"

.field private static final LIGHTS_OUT_DELAY_MS:I = 0xfa0

.field private static final MSG_CLEAR_SCREEN_ON_FLAG:I = 0x2

.field private static final NO_OLD_LIGHT:F = -2.0f

.field private static final PERMISSIONS_ACTIVITY_REQUEST_CODE:I = 0x1

.field private static final PERMISSIONS_RESULT_CODE_FAILED:I = 0x2

.field private static final PERMISSIONS_RESULT_CODE_OK:I = 0x1

.field private static final REQUEST_CRITICAL_PERMISSION_IN_CAPTURE:I = 0x7

.field public static final REQUEST_LOCATION_IN_CAPTURE:I = 0x2

.field private static final REQUEST_MINOR_PERMISSION_IN_CAPTURE:I = 0x1

.field private static final SCREEN_DELAY_MS:J = 0x1d4c0L

.field public static final SECURE_CAMERA_EXTRA:Ljava/lang/String; = "secure_camera"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final THUMBNAIL_DIAMETER_MAX:I = 0x100

.field private static final THUMBNAIL_RATIO:F = 1.0f


# instance fields
.field private isTutorialShowing:Z

.field private longPress:Z

.field private mAboveFilmstripControlLayout:Landroid/widget/FrameLayout;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarMenu:Landroid/view/Menu;

.field private mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

.field private mActiveSubCameraDeviceTracker:Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

.field private mActivityLifetime:Lcom/android/camera/async/Lifetime;

.field private mAppContext:Landroid/content/Context;

.field private mAutoRotateScreen:Z

.field private mButtonManager:Lcom/android/camera/ButtonManager;

.field private mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

.field private mCameraController:Lcom/android/camera/app/CameraController;

.field private final mCameraExceptionCallback:Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;

.field private mCameraFatalError:Z

.field private mCurrentCmaeraId:I

.field private mCurrentModeIndex:I

.field private mCurrentModule:Lcom/android/camera/CameraModule;

.field private mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

.field private final mDelayCloseCameraRunnable:Ljava/lang/Runnable;

.field private mDoResumeDelayTask:Ljava/lang/Runnable;

.field private mEffectChooseManager:Lcom/android/camera/effect/EffectChooseManager;

.field private mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

.field private mFeatureConfig:Lcom/android/camera/one/config/OneCameraFeatureConfig;

.field private mFilmstripController:Lcom/android/camera/filmstrip/FilmstripController;

.field private mFilmstripCoversPreview:Z

.field private final mFilmstripItemListener:Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;

.field private final mFilmstripListener:Lcom/android/camera/filmstrip/FilmstripContentPanel$Listener;

.field private mFilmstripVisible:Z

.field private mFirstRunDialog:Lcom/android/camera/app/FirstRunDialog;

.field private mGalleryIntent:Landroid/content/Intent;

.field private mGoogleLensAvailable:Z

.field private mHasAquirePermissions:Z

.field private mHasContentInitialized:Z

.field private mHasCriticalPermissions:Z

.field private mIsActivityRunning:Z

.field private mIsLaunchFromCreate:Z

.field private mIsUndoingDeletion:Z

.field private mKeepAliveInSecure:Z

.field private mKeepScreenOn:Z

.field private mLastLayoutOrientation:I

.field private mLeavingCamera:Z

.field private mLeavingForReviewingPicture:Z

.field private final mLightsOutRunnable:Ljava/lang/Runnable;

.field private mLocalImagesObserver:Lcom/android/camera/data/FilmstripContentObserver;

.field private mLocalVideosObserver:Lcom/android/camera/data/FilmstripContentObserver;

.field private mLocationManager:Lcom/android/camera/app/LocationManager;

.field private mLockedMediaFileUri:Landroid/net/Uri;

.field private mLockedSecureCamera:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mMediaStoreIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMemoryManager:Lcom/android/camera/app/MemoryManager;

.field private mModeListVisible:Z

.field private mModuleManager:Lcom/android/camera/app/ModuleManagerImpl;

.field private mMotionManager:Lcom/android/camera/app/MotionManager;

.field private final mMyFilmstripBottomControlListener:Lcom/android/camera/app/CameraAppUI$BottomPanel$Listener;

.field private mNeedRegistedObserver:Z

.field private final mNfcPushUris:[Landroid/net/Uri;

.field private mOldlight:F

.field private mOnCreateTime:J

.field private mOneCameraController:Lcom/android/camera/app/OneCameraController;

.field private mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationManager:Lcom/android/camera/app/OrientationManagerImpl;

.field private mPaused:Z

.field private mPendingDeletion:Z

.field private mPhoneStateManager:Lcom/android/camera/PhoneStateManager;

.field private mPhotoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

.field private mPowerStateManager:Lcom/android/camera/PowerStateManager;

.field private mPreloader:Lcom/android/camera/widget/Preloader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/widget/Preloader",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfiler:Lcom/android/camera/stats/profiler/Profiler;

.field private mResetToPreviewOnResume:Z

.field private mResolutionSetting:Lcom/android/camera/settings/ResolutionSetting;

.field private mResultCodeForTesting:I

.field private mResultDataForTesting:Landroid/content/Intent;

.field private mSceneRecognitionManager:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

.field private mSecureCamera:Z

.field private final mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

.field private mSettingsManager:Lcom/android/camera/settings/SettingsManager;

.field private mShowingDialogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mSoundPlayer:Lcom/android/camera/SoundPlayer;

.field private mStorageHint:Lcom/android/camera/OnScreenHint;

.field private mStorageSpaceBytes:J

.field private mStorageSpaceCheckTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorageSpaceLock:Ljava/lang/Object;

.field private mStorageStateManager:Lcom/android/camera/StorageStateManager;

.field private mUndoDeletionBar:Landroid/view/ViewGroup;

.field private mVideoItemFactory:Lcom/android/camera/data/VideoItemFactory;

.field private mWatermarkManager:Lcom/android/camera/WatermarkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 209
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CameraActivity"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 200
    invoke-direct {p0}, Lcom/android/camera/util/QuickActivity;-><init>()V

    .line 253
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mCameraFatalError:Z

    .line 258
    iput-boolean v4, p0, Lcom/android/camera/CameraActivity;->mResetToPreviewOnResume:Z

    .line 276
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mModeListVisible:Z

    .line 277
    iput v3, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    .line 285
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mFilmstripCoversPreview:Z

    .line 289
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceLock:Ljava/lang/Object;

    .line 290
    const-wide/32 v0, 0x2faf080

    iput-wide v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    .line 294
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mLeavingCamera:Z

    .line 295
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mLeavingForReviewingPicture:Z

    .line 305
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mIsUndoingDeletion:Z

    .line 306
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mIsActivityRunning:Z

    .line 310
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mIsLaunchFromCreate:Z

    .line 311
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mHasAquirePermissions:Z

    .line 312
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mHasContentInitialized:Z

    .line 314
    new-array v0, v4, [Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mNfcPushUris:[Landroid/net/Uri;

    .line 318
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mNeedRegistedObserver:Z

    .line 320
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    .line 340
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mGoogleLensAvailable:Z

    .line 343
    new-instance v0, Lcom/android/camera/CameraActivity$1;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$1;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mLightsOutRunnable:Ljava/lang/Runnable;

    .line 351
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 354
    iput v3, p0, Lcom/android/camera/CameraActivity;->mOrientation:I

    .line 357
    iput v2, p0, Lcom/android/camera/CameraActivity;->mOrientationCompensation:I

    .line 362
    const/high16 v0, -0x40000000    # -2.0f

    iput v0, p0, Lcom/android/camera/CameraActivity;->mOldlight:F

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mShowingDialogList:Ljava/util/List;

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mMediaStoreIds:Ljava/util/List;

    .line 371
    iput-object v5, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceCheckTask:Landroid/os/AsyncTask;

    .line 383
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->isTutorialShowing:Z

    .line 385
    new-instance v0, Lcom/android/camera/CameraActivity$2;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$2;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mDelayCloseCameraRunnable:Ljava/lang/Runnable;

    .line 409
    new-instance v0, Lcom/android/camera/CameraActivity$3;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$3;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 424
    new-instance v0, Lcom/android/camera/CameraActivity$4;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$4;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mMyFilmstripBottomControlListener:Lcom/android/camera/app/CameraAppUI$BottomPanel$Listener;

    .line 962
    new-instance v0, Lcom/android/camera/CameraActivity$8;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$8;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmstripListener:Lcom/android/camera/filmstrip/FilmstripContentPanel$Listener;

    .line 1125
    new-instance v0, Lcom/android/camera/CameraActivity$9;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$9;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmstripItemListener:Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;

    .line 1261
    new-instance v0, Lcom/android/camera/CameraActivity$11;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$11;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .line 2222
    new-instance v0, Lcom/android/camera/CameraActivity$15;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$15;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraExceptionCallback:Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;

    .line 3288
    iput-object v5, p0, Lcom/android/camera/CameraActivity;->mDoResumeDelayTask:Ljava/lang/Runnable;

    .line 3642
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->longPress:Z

    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->fillTemporarySessions()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/camera/CameraActivity;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Landroid/widget/FrameLayout;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mAboveFilmstripControlLayout:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/CameraActivity;Landroid/support/v4/view/AsyncLayoutInflater;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Landroid/support/v4/view/AsyncLayoutInflater;

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->preloadFilmstripItems(Landroid/support/v4/view/AsyncLayoutInflater;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/FilmstripContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/FilmstripContentObserver;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/camera/CameraActivity;Lcom/android/camera/data/FilmstripContentObserver;)Lcom/android/camera/data/FilmstripContentObserver;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Lcom/android/camera/data/FilmstripContentObserver;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/FilmstripContentObserver;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/FilmstripContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/FilmstripContentObserver;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/camera/CameraActivity;Lcom/android/camera/data/FilmstripContentObserver;)Lcom/android/camera/data/FilmstripContentObserver;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Lcom/android/camera/data/FilmstripContentObserver;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/FilmstripContentObserver;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/camera/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mNeedRegistedObserver:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/camera/CameraActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/camera/CameraActivity;->mNeedRegistedObserver:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/camera/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/camera/CameraActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/camera/CameraActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/android/camera/CameraActivity;->mOnCreateTime:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->setupNfcBeamPush()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/CameraAppUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/CameraActivity;)Landroid/app/ActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/camera/CameraActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/camera/CameraActivity;->mFilmstripCoversPreview:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->updatePreviewVisibility()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mFilmstripVisible:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/camera/CameraActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/camera/CameraActivity;->mFilmstripVisible:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/camera/CameraActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->currentUserInterfaceMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/CameraActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->setFilmstripUiVisibility(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/CameraActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->updateUiByData(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/CameraActivity;)Lcom/android/camera/widget/Preloader;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPreloader:Lcom/android/camera/widget/Preloader;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/CameraActivity;)[Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mNfcPushUris:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/CameraActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMediaStoreIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/filmstrip/FilmstripController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/PhotoItemFactory;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPhotoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/CameraActivity;Lcom/android/camera/filmstrip/FilmstripController;)Lcom/android/camera/filmstrip/FilmstripController;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Lcom/android/camera/filmstrip/FilmstripController;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mFilmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/VideoItemFactory;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mVideoItemFactory:Lcom/android/camera/data/VideoItemFactory;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/CameraModule;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/CameraActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->updateSessionProgress(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/CameraActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->updateSessionProgressText(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/CameraActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget v0, p0, Lcom/android/camera/CameraActivity;->mOrientation:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/camera/CameraActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/camera/CameraActivity;Landroid/graphics/Bitmap;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 200
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/CameraActivity;->indicateCapture(Landroid/graphics/Bitmap;IZ)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/camera/CameraActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->showProcessError(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/camera/CameraActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget v0, p0, Lcom/android/camera/CameraActivity;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/CameraActivity;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->fileNameFromAdapterAtIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/FatalErrorHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/camera/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/camera/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mCameraFatalError:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/camera/CameraActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/camera/CameraActivity;->mCameraFatalError:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/stats/profiler/Profiler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/camera/CameraActivity;)Lcom/android/camera/one/config/OneCameraFeatureConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFeatureConfig:Lcom/android/camera/one/config/OneCameraFeatureConfig;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/camera/CameraActivity;Lcom/android/camera/one/config/OneCameraFeatureConfig;)Lcom/android/camera/one/config/OneCameraFeatureConfig;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Lcom/android/camera/one/config/OneCameraFeatureConfig;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mFeatureConfig:Lcom/android/camera/one/config/OneCameraFeatureConfig;

    return-object p1
.end method

.method static synthetic access$4502(Lcom/android/camera/CameraActivity;Lcom/android/camera/device/ActiveCameraDeviceTracker;)Lcom/android/camera/device/ActiveCameraDeviceTracker;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Lcom/android/camera/device/ActiveCameraDeviceTracker;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/camera/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->isMainIntent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/camera/CameraActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/settings/SettingsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/camera/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->isVideoCaptureIntent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/CameraActivity;I)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->fileAgeFromAdapterAtIndex(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/OrientationManagerImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mOrientationManager:Lcom/android/camera/app/OrientationManagerImpl;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/camera/CameraActivity;Lcom/android/camera/app/OrientationManagerImpl;)Lcom/android/camera/app/OrientationManagerImpl;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Lcom/android/camera/app/OrientationManagerImpl;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mOrientationManager:Lcom/android/camera/app/OrientationManagerImpl;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/camera/CameraActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/ModuleManagerImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mModuleManager:Lcom/android/camera/app/ModuleManagerImpl;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/android/camera/CameraActivity;Lcom/android/camera/app/ModuleManagerImpl;)Lcom/android/camera/app/ModuleManagerImpl;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Lcom/android/camera/app/ModuleManagerImpl;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mModuleManager:Lcom/android/camera/app/ModuleManagerImpl;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/FirstRunDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFirstRunDialog:Lcom/android/camera/app/FirstRunDialog;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->resume()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/camera/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->startGallery()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/camera/CameraActivity;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->updateThumbnailWhenLock(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$5702(Lcom/android/camera/CameraActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mDoResumeDelayTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/StorageStateManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStorageStateManager:Lcom/android/camera/StorageStateManager;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/android/camera/CameraActivity;Lcom/android/camera/StorageStateManager;)Lcom/android/camera/StorageStateManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Lcom/android/camera/StorageStateManager;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mStorageStateManager:Lcom/android/camera/StorageStateManager;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/android/camera/CameraActivity;)Lcom/android/camera/PowerStateManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPowerStateManager:Lcom/android/camera/PowerStateManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/CameraActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->removeItemAt(I)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/PhoneStateManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPhoneStateManager:Lcom/android/camera/PhoneStateManager;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mLocationManager:Lcom/android/camera/app/LocationManager;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/android/camera/CameraActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mGalleryIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/android/camera/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/android/camera/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lcom/android/camera/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mStartupOnCreate:Z

    return v0
.end method

.method static synthetic access$6600(Lcom/android/camera/CameraActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/android/camera/CameraActivity;->mExecutionStartNanoTime:J

    return-wide v0
.end method

.method static synthetic access$6700(Lcom/android/camera/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mLockedSecureCamera:Z

    return v0
.end method

.method static synthetic access$6900(Lcom/android/camera/CameraActivity;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/camera/CameraActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    return-wide v0
.end method

.method static synthetic access$7002(Lcom/android/camera/CameraActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # J

    .prologue
    .line 200
    iput-wide p1, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    return-wide p1
.end method

.method static synthetic access$7102(Lcom/android/camera/CameraActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceCheckTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$7200(Lcom/android/camera/CameraActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->hideUndoDeletionBar(Z)V

    return-void
.end method

.method static synthetic access$7302(Lcom/android/camera/CameraActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/camera/CameraActivity;->mIsUndoingDeletion:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/android/camera/CameraActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/CameraActivity;Lcom/android/camera/data/LocalFilmstripDataAdapter;)Lcom/android/camera/data/LocalFilmstripDataAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Lcom/android/camera/data/LocalFilmstripDataAdapter;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/CameraActivity;Lcom/android/camera/data/FilmstripItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->updateBottomControlsByData(Lcom/android/camera/data/FilmstripItem;)V

    return-void
.end method

.method private checkPermissions()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 2916
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isMOrHigher()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2917
    sget-object v4, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "not running on M, skipping permission checks"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2918
    iput-boolean v3, p0, Lcom/android/camera/CameraActivity;->mHasCriticalPermissions:Z

    .line 2946
    :cond_0
    :goto_0
    return-void

    .line 2922
    :cond_1
    const-string v4, "android.permission.CAMERA"

    invoke-virtual {p0, v4}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "android.permission.RECORD_AUDIO"

    .line 2923
    invoke-virtual {p0, v4}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    .line 2924
    invoke-virtual {p0, v4}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2925
    invoke-virtual {p0, v4}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    .line 2926
    iput-boolean v3, p0, Lcom/android/camera/CameraActivity;->mHasCriticalPermissions:Z

    .line 2932
    :goto_1
    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v4}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    move v0, v3

    .line 2933
    .local v0, "hasRequestLocation":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "request_permission"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 2934
    .local v2, "isRequest":Z
    iget-boolean v4, p0, Lcom/android/camera/CameraActivity;->mHasCriticalPermissions:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 2935
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/camera/PermissionsActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2936
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2937
    const-string v4, "is_capture_intent"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2938
    iget-boolean v4, p0, Lcom/android/camera/CameraActivity;->mHasCriticalPermissions:Z

    if-eqz v4, :cond_5

    move v4, v3

    :goto_2
    invoke-virtual {p0, v1, v4}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2939
    iput-boolean v3, p0, Lcom/android/camera/CameraActivity;->mHasAquirePermissions:Z

    goto :goto_0

    .line 2928
    .end local v0    # "hasRequestLocation":Z
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isRequest":Z
    :cond_4
    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mHasCriticalPermissions:Z

    .line 2929
    invoke-static {}, Lcom/android/camera/device/WarmUpCameraController;->instance()Lcom/android/camera/device/WarmUpCameraController;

    move-result-object v4

    iput-boolean v3, v4, Lcom/android/camera/device/WarmUpCameraController;->mIgnoreNextWarmStart:Z

    goto :goto_1

    .line 2938
    .restart local v0    # "hasRequestLocation":Z
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "isRequest":Z
    :cond_5
    const/4 v4, 0x7

    goto :goto_2

    .line 2941
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2942
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 2943
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->finish()V

    goto :goto_0
.end method

.method private closeModule(Lcom/android/camera/CameraModule;)V
    .locals 1
    .param p1, "module"    # Lcom/android/camera/CameraModule;

    .prologue
    .line 4345
    invoke-virtual {p1}, Lcom/android/camera/CameraModule;->pause()V

    .line 4346
    invoke-virtual {p1}, Lcom/android/camera/CameraModule;->destroy()V

    .line 4347
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->clearModuleUI()V

    .line 4348
    return-void
.end method

.method private currentUserInterfaceMode()I
    .locals 4

    .prologue
    .line 4305
    const/16 v0, 0x2710

    .line 4306
    .local v0, "mode":I
    iget v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 4307
    const/16 v0, 0x2710

    .line 4309
    :cond_0
    iget v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 4310
    const/16 v0, 0x2710

    .line 4312
    :cond_1
    iget v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 4313
    const/16 v0, 0x2710

    .line 4315
    :cond_2
    iget v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 4316
    const/16 v0, 0x2710

    .line 4318
    :cond_3
    iget v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 4319
    const/16 v0, 0x2710

    .line 4321
    :cond_4
    iget v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 4322
    const/4 v0, 0x3

    .line 4324
    :cond_5
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mFilmstripVisible:Z

    if-eqz v1, :cond_6

    .line 4325
    const/16 v0, 0x2710

    .line 4327
    :cond_6
    return v0
.end method

.method private fileAgeFromAdapterAtIndex(I)F
    .locals 8
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 952
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    if-nez v3, :cond_1

    .line 959
    :cond_0
    :goto_0
    return v2

    .line 953
    :cond_1
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v3, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 954
    .local v0, "filmstripItem":Lcom/android/camera/data/FilmstripItem;
    if-eqz v0, :cond_0

    .line 958
    new-instance v1, Ljava/io/File;

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 959
    .local v1, "localFile":Ljava/io/File;
    const v2, 0x3a83126f    # 0.001f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-float v3, v4

    mul-float/2addr v2, v3

    goto :goto_0
.end method

.method private fileNameFromAdapterAtIndex(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 941
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    if-nez v2, :cond_0

    const-string v2, ""

    .line 948
    :goto_0
    return-object v2

    .line 942
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v2, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 943
    .local v0, "filmstripItem":Lcom/android/camera/data/FilmstripItem;
    if-nez v0, :cond_1

    .line 944
    const-string v2, ""

    goto :goto_0

    .line 947
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 948
    .local v1, "localFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private fillTemporarySessions()V
    .locals 2

    .prologue
    .line 3341
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v0, :cond_1

    .line 3349
    :cond_0
    :goto_0
    return-void

    .line 3346
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    if-eqz v0, :cond_0

    .line 3347
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSessionManager;->fillTemporarySession(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    goto :goto_0
.end method

.method private finishActivityWithIntentResult(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "resultIntent"    # Landroid/content/Intent;

    .prologue
    .line 4586
    iput p1, p0, Lcom/android/camera/CameraActivity;->mResultCodeForTesting:I

    .line 4587
    iput-object p2, p0, Lcom/android/camera/CameraActivity;->mResultDataForTesting:Landroid/content/Intent;

    .line 4588
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 4589
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 4590
    return-void
.end method

.method private getModeIndex()I
    .locals 13

    .prologue
    const v12, 0x7f0b0012

    const v7, 0x7f0b000f

    const v11, 0x7f0803c4

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2539
    const/4 v2, -0x1

    .line 2541
    .local v2, "modeIndex":I
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2542
    .local v1, "intentAction":Ljava/lang/String;
    const-string v4, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2543
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2545
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2546
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 2547
    const-string v4, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2548
    .local v3, "value":Ljava/lang/Object;
    const-string v4, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2551
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_live_broadcast_choose_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080309

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2552
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5, v10, v9}, Lcom/android/camera/GoogleAssistantManager;->setAndParseIntent(Landroid/content/Intent;ZZ)V

    .line 2553
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/GoogleAssistantManager;->useDualSight()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2554
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2555
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_camera_screen_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 2560
    :cond_1
    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2561
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto :goto_0

    .line 2562
    :cond_2
    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 2563
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2565
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto :goto_0

    .line 2566
    :cond_4
    const-string v4, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 2567
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 2568
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2571
    :cond_5
    iget v4, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2582
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2583
    .restart local v0    # "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 2584
    const-string v4, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2585
    .restart local v3    # "value":Ljava/lang/Object;
    const-string v4, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2588
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5, v9, v9}, Lcom/android/camera/GoogleAssistantManager;->setAndParseIntent(Landroid/content/Intent;ZZ)V

    .line 2589
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/GoogleAssistantManager;->useDualSight()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2590
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2591
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_camera_screen_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2571
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_6
    iget v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    goto :goto_1

    .line 2593
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2594
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_motion"

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080312

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2601
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_8
    const-string v4, "com.hmdglobal.action.CAMERA_BOTH_CAMERA_STREAMING_FACEBOOK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2602
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2603
    sget-boolean v4, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$LiveBroadcast;->ENABLE_FACEBOOK:Z

    if-eqz v4, :cond_0

    .line 2604
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0803fe

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v10, v9, v6}, Lcom/android/camera/GoogleAssistantManager;->setAndParseIntent(Landroid/content/Intent;ZZLjava/lang/String;)V

    .line 2605
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_camera_screen_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2606
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/GoogleAssistantManager;->needExecuteGoogleAssistantAction()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_live_broadcast_choose_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0803fe

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2608
    :cond_9
    const-string v4, "com.hmdglobal.action.CAMERA_BOTH_CAMERA_STREAMING_YOUTUBE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2609
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2610
    sget-boolean v4, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$LiveBroadcast;->ENABLE_YOUTUBE:Z

    if-eqz v4, :cond_0

    .line 2611
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080400

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v10, v9, v6}, Lcom/android/camera/GoogleAssistantManager;->setAndParseIntent(Landroid/content/Intent;ZZLjava/lang/String;)V

    .line 2612
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_camera_screen_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2613
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/GoogleAssistantManager;->needExecuteGoogleAssistantAction()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_live_broadcast_choose_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080400

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2615
    :cond_a
    const-string v4, "com.hmdglobal.action.CAMERA_MOTION_PICTURE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2616
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2617
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5, v9, v9}, Lcom/android/camera/GoogleAssistantManager;->setAndParseIntent(Landroid/content/Intent;ZZ)V

    .line 2618
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_motion"

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080313

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2619
    :cond_b
    const-string v4, "com.hmdglobal.action.CAMERA_PROCAMERA"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2620
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2621
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5, v10, v9}, Lcom/android/camera/GoogleAssistantManager;->setAndParseIntent(Landroid/content/Intent;ZZ)V

    goto/16 :goto_0

    .line 2626
    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "camera.startup_module"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2627
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-ne v2, v4, :cond_d

    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mFeatureConfig:Lcom/android/camera/one/config/OneCameraFeatureConfig;

    .line 2628
    invoke-static {v4}, Lcom/android/camera/util/GcamHelper;->hasGcamAsSeparateModule(Lcom/android/camera/one/config/OneCameraFeatureConfig;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_d
    if-gez v2, :cond_0

    .line 2629
    :cond_e
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto/16 :goto_0
.end method

.method private getPreviewVisibility()I
    .locals 1

    .prologue
    .line 2659
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mFilmstripCoversPreview:Z

    if-eqz v0, :cond_0

    .line 2660
    const/4 v0, 0x2

    .line 2664
    :goto_0
    return v0

    .line 2661
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mModeListVisible:Z

    if-eqz v0, :cond_1

    .line 2662
    const/4 v0, 0x1

    goto :goto_0

    .line 2664
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideSessionProgress()V
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getFilmstripBottomControls()Lcom/android/camera/app/CameraAppUI$BottomPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getFilmstripBottomControls()Lcom/android/camera/app/CameraAppUI$BottomPanel;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraAppUI$BottomPanel;->hideProgress()V

    .line 1192
    :cond_0
    return-void
.end method

.method private hideUndoDeletionBar(Z)V
    .locals 4
    .param p1, "withAnimation"    # Z

    .prologue
    .line 4408
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Hiding undo deletion bar"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 4409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    .line 4410
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4411
    if-eqz p1, :cond_1

    .line 4412
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CameraActivity$31;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraActivity$31;-><init>(Lcom/android/camera/CameraActivity;)V

    .line 4413
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 4433
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4438
    :cond_0
    :goto_0
    return-void

    .line 4435
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private indicateCapture(Landroid/graphics/Bitmap;IZ)V
    .locals 3
    .param p1, "indicator"    # Landroid/graphics/Bitmap;
    .param p2, "rotationDegrees"    # I
    .param p3, "needAnim"    # Z

    .prologue
    .line 2011
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mFilmstripVisible:Z

    if-eqz v1, :cond_1

    .line 2031
    :cond_0
    :goto_0
    return-void

    .line 2017
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2019
    .local v0, "photosphereModuleId":I
    iget v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    if-eq v1, v0, :cond_0

    .line 2023
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/CameraActivity$13;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/android/camera/CameraActivity$13;-><init>(Lcom/android/camera/CameraActivity;ZLandroid/graphics/Bitmap;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private initWindowAndContent(Lcom/android/camera/stats/profiler/Profile;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/camera/stats/profiler/Profile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v2, -0x80000000

    .line 4900
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mHasContentInitialized:Z

    if-eqz v0, :cond_0

    .line 4944
    :goto_0
    return-void

    .line 4901
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mHasContentInitialized:Z

    .line 4902
    invoke-interface {p1}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 4903
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 4908
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLOrHigher()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4909
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 4911
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 4912
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0e000e

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 4917
    :cond_1
    const-string v0, "requestFeature done"

    invoke-interface {p1, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 4919
    invoke-interface {p1}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 4920
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->setContentView(I)V

    .line 4921
    const-string v0, "setContentView()"

    invoke-interface {p1, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 4929
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4931
    invoke-interface {p1}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 4932
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/SystemUIUtil;->hideSystemUI(Landroid/view/Window;)V

    .line 4933
    const-string v0, "hideSystemUI done"

    invoke-interface {p1, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 4935
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    .line 4937
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLOrHigher()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4938
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4943
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_0

    .line 4940
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private isCaptureIntent()Z
    .locals 2

    .prologue
    .line 2181
    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    .line 2182
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 2183
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2184
    :cond_0
    const/4 v0, 0x1

    .line 2186
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 2191
    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 2192
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2193
    :cond_0
    const/4 v0, 0x1

    .line 2195
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMainIntent()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2208
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2209
    .local v0, "intentAction":Ljava/lang/String;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 2210
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2211
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "secure_camera"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2212
    :cond_0
    const/4 v1, 0x1

    .line 2214
    :cond_1
    return v1
.end method

.method private isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 2200
    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2201
    const/4 v0, 0x1

    .line 2203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepScreenOnForAWhile()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 4593
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mKeepScreenOn:Z

    if-eqz v0, :cond_0

    .line 4599
    :goto_0
    return-void

    .line 4596
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 4597
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4598
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private openModule(Lcom/android/camera/CameraModule;)V
    .locals 3
    .param p1, "module"    # Lcom/android/camera/CameraModule;

    .prologue
    .line 4331
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v1

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/camera/CameraModule;->init(Lcom/android/camera/CameraActivity;ZZ)V

    .line 4332
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraModule;->hardResetSettings(Lcom/android/camera/settings/SettingsManager;)V

    .line 4334
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideAccessibilityZoomUI()V

    .line 4335
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    if-nez v0, :cond_0

    .line 4336
    invoke-virtual {p1}, Lcom/android/camera/CameraModule;->resume()V

    .line 4337
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->currentUserInterfaceMode()I

    move-result v1

    const/16 v2, 0x2710

    .line 4338
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4337
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/stats/UsageStatistics;->changeScreen(ILjava/lang/Integer;)V

    .line 4339
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->updatePreviewVisibility()V

    .line 4340
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->showThumbnailIfAvailable()V

    .line 4342
    :cond_0
    return-void
.end method

.method private performDeletion()V
    .locals 1

    .prologue
    .line 4351
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    if-nez v0, :cond_1

    .line 4357
    :cond_0
    :goto_0
    return-void

    .line 4354
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    if-eqz v0, :cond_0

    .line 4355
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/CameraActivity;->hideUndoDeletionBar(Z)V

    .line 4356
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->executeDeletion()Z

    goto :goto_0
.end method

.method private preloadFilmstripItems(Landroid/support/v4/view/AsyncLayoutInflater;)V
    .locals 8
    .param p1, "asyncLayoutInflater"    # Landroid/support/v4/view/AsyncLayoutInflater;

    .prologue
    .line 2949
    invoke-static {}, Lcom/bumptech/glide/Glide;->isSetup()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2950
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 2951
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Lcom/bumptech/glide/GlideBuilder;

    invoke-direct {v3, v1}, Lcom/bumptech/glide/GlideBuilder;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/bumptech/glide/load/DecodeFormat;->ALWAYS_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    .line 2952
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/GlideBuilder;->setDecodeFormat(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/GlideBuilder;

    move-result-object v3

    new-instance v4, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;-><init>(I)V

    .line 2953
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/GlideBuilder;->setResizeService(Ljava/util/concurrent/ExecutorService;)Lcom/bumptech/glide/GlideBuilder;

    move-result-object v3

    .line 2951
    invoke-static {v3}, Lcom/bumptech/glide/Glide;->setup(Lcom/bumptech/glide/GlideBuilder;)V

    .line 2955
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/camera/CameraActivity$19;

    invoke-direct {v4, p0, v1}, Lcom/android/camera/CameraActivity$19;-><init>(Lcom/android/camera/CameraActivity;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2970
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    if-nez v3, :cond_2

    .line 2971
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2972
    .local v0, "appContentResolver":Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/camera/data/GlideFilmstripManager;

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/camera/data/GlideFilmstripManager;-><init>(Landroid/content/Context;)V

    .line 2973
    .local v2, "glideManager":Lcom/android/camera/data/GlideFilmstripManager;
    new-instance v3, Lcom/android/camera/data/PhotoItemFactory;

    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mAppContext:Landroid/content/Context;

    new-instance v5, Lcom/android/camera/data/PhotoDataFactory;

    invoke-direct {v5}, Lcom/android/camera/data/PhotoDataFactory;-><init>()V

    invoke-direct {v3, v4, v2, v0, v5}, Lcom/android/camera/data/PhotoItemFactory;-><init>(Landroid/content/Context;Lcom/android/camera/data/GlideFilmstripManager;Landroid/content/ContentResolver;Lcom/android/camera/data/PhotoDataFactory;)V

    iput-object v3, p0, Lcom/android/camera/CameraActivity;->mPhotoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

    .line 2974
    new-instance v3, Lcom/android/camera/data/VideoItemFactory;

    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mAppContext:Landroid/content/Context;

    new-instance v5, Lcom/android/camera/data/VideoDataFactory;

    invoke-direct {v5}, Lcom/android/camera/data/VideoDataFactory;-><init>()V

    invoke-direct {v3, v4, v2, v0, v5}, Lcom/android/camera/data/VideoItemFactory;-><init>(Landroid/content/Context;Lcom/android/camera/data/GlideFilmstripManager;Landroid/content/ContentResolver;Lcom/android/camera/data/VideoDataFactory;)V

    iput-object v3, p0, Lcom/android/camera/CameraActivity;->mVideoItemFactory:Lcom/android/camera/data/VideoItemFactory;

    .line 2976
    new-instance v3, Lcom/android/camera/data/CameraFilmstripDataAdapter;

    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mAppContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mPhotoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mVideoItemFactory:Lcom/android/camera/data/VideoItemFactory;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/camera/data/CameraFilmstripDataAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/PhotoItemFactory;Lcom/android/camera/data/VideoItemFactory;)V

    iput-object v3, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    .line 2978
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mFilmstripItemListener:Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;

    invoke-interface {v3, v4}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->setLocalDataListener(Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;)V

    .line 2980
    new-instance v3, Lcom/android/camera/widget/Preloader;

    const/16 v4, 0xa

    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/camera/widget/Preloader;-><init>(ILcom/android/camera/widget/Preloader$ItemSource;Lcom/android/camera/widget/Preloader$ItemLoader;)V

    iput-object v3, p0, Lcom/android/camera/CameraActivity;->mPreloader:Lcom/android/camera/widget/Preloader;

    .line 2981
    iget-boolean v3, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-nez v3, :cond_3

    .line 2982
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mFilmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    if-eqz v3, :cond_1

    .line 2983
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mFilmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v3, v4}, Lcom/android/camera/filmstrip/FilmstripController;->setDataAdapter(Lcom/android/camera/filmstrip/FilmstripDataAdapter;)V

    .line 2985
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2986
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    new-instance v4, Lcom/android/camera/CameraActivity$20;

    invoke-direct {v4, p0}, Lcom/android/camera/CameraActivity$20;-><init>(Lcom/android/camera/CameraActivity;)V

    iget-boolean v5, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    iget-wide v6, p0, Lcom/android/camera/CameraActivity;->mOnCreateTime:J

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->requestLoad(Lcom/android/camera/util/Callback;ZJ)V

    .line 3047
    .end local v0    # "appContentResolver":Landroid/content/ContentResolver;
    .end local v2    # "glideManager":Lcom/android/camera/data/GlideFilmstripManager;
    :cond_2
    :goto_0
    return-void

    .line 2997
    .restart local v0    # "appContentResolver":Landroid/content/ContentResolver;
    .restart local v2    # "glideManager":Lcom/android/camera/data/GlideFilmstripManager;
    :cond_3
    const v3, 0x7f040085

    const/4 v4, 0x0

    new-instance v5, Lcom/android/camera/CameraActivity$21;

    invoke-direct {v5, p0}, Lcom/android/camera/CameraActivity$21;-><init>(Lcom/android/camera/CameraActivity;)V

    invoke-virtual {p1, v3, v4, v5}, Landroid/support/v4/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    goto :goto_0
.end method

.method private registMediaObserver()V
    .locals 2

    .prologue
    .line 3291
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/FilmstripContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/FilmstripContentObserver;

    if-nez v0, :cond_1

    .line 3338
    :cond_0
    :goto_0
    return-void

    .line 3292
    :cond_1
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/CameraActivity$24;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraActivity$24;-><init>(Lcom/android/camera/CameraActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private removeItemAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x1

    .line 2144
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    if-nez v0, :cond_1

    .line 2157
    :cond_0
    :goto_0
    return-void

    .line 2145
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->removeAt(I)V

    .line 2146
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 2147
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->showUndoDeletionBar()V

    goto :goto_0

    .line 2151
    :cond_2
    iput-boolean v1, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    .line 2152
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->performDeletion()V

    .line 2153
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mFilmstripVisible:Z

    if-eqz v0, :cond_0

    .line 2154
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getFilmstripContentPanel()Lcom/android/camera/filmstrip/FilmstripContentPanel;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripContentPanel;->animateHide()Z

    goto :goto_0
.end method

.method private resetBrightnessLevel()V
    .locals 2

    .prologue
    .line 1925
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1926
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1927
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1928
    return-void
.end method

.method private resetExposureCompensationToDefault(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 2
    .param p1, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 636
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    .line 637
    .local v0, "cameraSettings":Lcom/android/ex/camera2/portability/CameraSettings;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 638
    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 639
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 4602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mKeepScreenOn:Z

    .line 4603
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4604
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 4605
    return-void
.end method

.method private resume()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 3075
    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v8, "CameraActivity.resume"

    invoke-interface {v5, v8}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v3

    .line 3076
    .local v3, "profile":Lcom/android/camera/stats/profiler/Profile;
    const/4 v5, 0x2

    invoke-static {v5}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 3077
    sget-object v5, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Build info: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3078
    sget-object v5, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "App version: 91.9.1180.51"

    invoke-static {v5, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3079
    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v8, "PhotoModule"

    invoke-static {v8}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "pref_camera_id_key"

    invoke-virtual {v5, v8, v9}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3081
    .local v0, "cameraId":I
    iget v5, p0, Lcom/android/camera/CameraActivity;->mCurrentCmaeraId:I

    if-eq v0, v5, :cond_0

    .line 3082
    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v8, "PhotoModule"

    invoke-static {v8}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "pref_camera_id_key"

    iget v10, p0, Lcom/android/camera/CameraActivity;->mCurrentCmaeraId:I

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3084
    :cond_0
    invoke-interface {v3}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 3085
    iget-object v8, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    iget-boolean v5, p0, Lcom/android/camera/CameraActivity;->mIsLaunchFromCreate:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/camera/CameraActivity;->mResetToPreviewOnResume:Z

    if-nez v5, :cond_8

    :cond_1
    move v5, v7

    :goto_0
    invoke-virtual {v8, v5}, Lcom/android/camera/app/CameraAppUI;->resume(Z)V

    .line 3086
    const-string v5, "ResetToPreviewOnResume"

    invoke-interface {v3, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3087
    iget-boolean v5, p0, Lcom/android/camera/CameraActivity;->mIsLaunchFromCreate:Z

    if-nez v5, :cond_2

    .line 3088
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->buildModeList()V

    .line 3089
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->getPreviewVisibility()I

    move-result v2

    .line 3090
    .local v2, "previewVisibility":I
    invoke-direct {p0, v2}, Lcom/android/camera/CameraActivity;->updatePreviewRendering(I)V

    .line 3092
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 3093
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    iget-object v8, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v5, v8}, Lcom/android/camera/settings/SettingsManager;->checkListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 3094
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/camera/settings/SettingsManager;->checkListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 3097
    :cond_3
    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/camera/CameraModule;->hardResetSettings(Lcom/android/camera/settings/SettingsManager;)V

    .line 3099
    invoke-interface {v3}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 3100
    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {v5}, Lcom/android/camera/CameraModule;->resume()V

    .line 3101
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->currentUserInterfaceMode()I

    move-result v8

    const/16 v9, 0x2710

    .line 3102
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 3101
    invoke-virtual {v5, v8, v9}, Lcom/android/camera/stats/UsageStatistics;->changeScreen(ILjava/lang/Integer;)V

    .line 3103
    invoke-virtual {p0, v7}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 3104
    const-string v5, "mCurrentModule.resume"

    invoke-interface {v3, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3106
    new-instance v5, Lcom/android/camera/CameraActivity$22;

    invoke-direct {v5, p0}, Lcom/android/camera/CameraActivity$22;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v5, p0, Lcom/android/camera/CameraActivity;->mDoResumeDelayTask:Ljava/lang/Runnable;

    .line 3211
    iget-boolean v5, p0, Lcom/android/camera/CameraActivity;->mIsLaunchFromCreate:Z

    if-nez v5, :cond_4

    .line 3212
    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mDoResumeDelayTask:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 3215
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/camera/CameraActivity;->mLastLayoutOrientation:I

    .line 3230
    iget-boolean v5, p0, Lcom/android/camera/CameraActivity;->mResetToPreviewOnResume:Z

    if-nez v5, :cond_5

    .line 3231
    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    if-eqz v5, :cond_5

    .line 3232
    iget-object v8, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mFilmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mFilmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    invoke-interface {v5}, Lcom/android/camera/filmstrip/FilmstripController;->getCurrentAdapterIndex()I

    move-result v5

    :goto_1
    invoke-interface {v8, v5}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v1

    .line 3233
    .local v1, "item":Lcom/android/camera/data/FilmstripItem;
    if-eqz v1, :cond_5

    .line 3234
    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->refresh(Landroid/net/Uri;)V

    .line 3240
    .end local v1    # "item":Lcom/android/camera/data/FilmstripItem;
    :cond_5
    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v5}, Lcom/android/camera/app/CameraAppUI;->getFilmstripBottomControls()Lcom/android/camera/app/CameraAppUI$BottomPanel;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 3241
    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v5}, Lcom/android/camera/app/CameraAppUI;->getFilmstripBottomControls()Lcom/android/camera/app/CameraAppUI$BottomPanel;

    move-result-object v5

    invoke-interface {v5, v7}, Lcom/android/camera/app/CameraAppUI$BottomPanel;->setShareEnabled(Z)V

    .line 3246
    :cond_6
    iput-boolean v7, p0, Lcom/android/camera/CameraActivity;->mResetToPreviewOnResume:Z

    .line 3248
    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/FilmstripContentObserver;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/FilmstripContentObserver;

    if-eqz v5, :cond_b

    .line 3249
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->registMediaObserver()V

    .line 3254
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->keepScreenOnForAWhile()V

    .line 3257
    const v5, 0x7f0f009c

    invoke-virtual {p0, v5}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 3278
    .local v4, "rootView":Landroid/view/View;
    const/high16 v5, -0x40000000    # -2.0f

    iput v5, p0, Lcom/android/camera/CameraActivity;->mOldlight:F

    .line 3280
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLOrHigher()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3282
    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 3285
    :cond_7
    invoke-interface {v3}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 3286
    return-void

    .end local v2    # "previewVisibility":I
    .end local v4    # "rootView":Landroid/view/View;
    :cond_8
    move v5, v6

    .line 3085
    goto/16 :goto_0

    .line 3232
    .restart local v2    # "previewVisibility":I
    :cond_9
    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v5}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getCount()I

    move-result v5

    if-lez v5, :cond_a

    move v5, v6

    goto :goto_1

    :cond_a
    const/4 v5, -0x1

    goto :goto_1

    .line 3251
    :cond_b
    iput-boolean v7, p0, Lcom/android/camera/CameraActivity;->mNeedRegistedObserver:Z

    goto :goto_2
.end method

.method private setFilmstripUiVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getFilmstripBottomControls()Lcom/android/camera/app/CameraAppUI$BottomPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getFilmstripBottomControls()Lcom/android/camera/app/CameraAppUI$BottomPanel;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/app/CameraAppUI$BottomPanel;->setVisible(Z)V

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1176
    if-eqz p1, :cond_2

    .line 1177
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 1178
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showBottomControls()V

    .line 1184
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/CameraActivity;->mFilmstripCoversPreview:Z

    .line 1185
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->updatePreviewVisibility()V

    .line 1186
    return-void

    .line 1180
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 1181
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideBottomControls()V

    goto :goto_0
.end method

.method private setModuleFromModeIndex(I)V
    .locals 6
    .param p1, "modeIndex"    # I

    .prologue
    .line 4092
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mModuleManager:Lcom/android/camera/app/ModuleManagerImpl;

    invoke-virtual {v3, p1}, Lcom/android/camera/app/ModuleManagerImpl;->getModuleAgent(I)Lcom/android/camera/app/ModuleManager$ModuleAgent;

    move-result-object v0

    .line 4093
    .local v0, "agent":Lcom/android/camera/app/ModuleManager$ModuleAgent;
    if-nez v0, :cond_0

    .line 4127
    :goto_0
    return-void

    .line 4098
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne p1, v3, :cond_1

    sget-boolean v3, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    if-eqz v3, :cond_1

    .line 4100
    iget v3, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    invoke-virtual {p0, v3}, Lcom/android/camera/CameraActivity;->setLastModuleId(I)V

    .line 4103
    :cond_1
    iget v3, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mModuleManager:Lcom/android/camera/app/ModuleManagerImpl;

    iget v4, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    invoke-virtual {v3, v4}, Lcom/android/camera/app/ModuleManagerImpl;->getModuleAgent(I)Lcom/android/camera/app/ModuleManager$ModuleAgent;

    move-result-object v2

    .line 4110
    .local v2, "previousAgent":Lcom/android/camera/app/ModuleManager$ModuleAgent;
    :goto_1
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/android/camera/app/ModuleManager$ModuleAgent;->requestAppForCamera()Z

    move-result v3

    invoke-interface {v0}, Lcom/android/camera/app/ModuleManager$ModuleAgent;->requestAppForCamera()Z

    move-result v4

    if-eq v3, v4, :cond_6

    .line 4112
    :cond_2
    const/4 v1, 0x1

    .line 4113
    .local v1, "needCloseCamera":Z
    :goto_2
    sget-object v3, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needCloseCamera = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 4115
    if-eqz v1, :cond_4

    .line 4116
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 4117
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraController;->forceCloseExistWhenNextOpen()V

    .line 4120
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getOneCameraController()Lcom/android/camera/app/OneCameraController;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 4121
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getOneCameraController()Lcom/android/camera/app/OneCameraController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/OneCameraController;->forceCloseExistWhenNextOpen()V

    .line 4125
    :cond_4
    invoke-interface {v0}, Lcom/android/camera/app/ModuleManager$ModuleAgent;->getModuleId()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    .line 4126
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v0, p0, v3}, Lcom/android/camera/app/ModuleManager$ModuleAgent;->createModule(Lcom/android/camera/app/AppController;Landroid/content/Intent;)Lcom/android/camera/module/ModuleController;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraModule;

    iput-object v3, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    goto :goto_0

    .line 4103
    .end local v1    # "needCloseCamera":Z
    .end local v2    # "previousAgent":Lcom/android/camera/app/ModuleManager$ModuleAgent;
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 4111
    .restart local v2    # "previousAgent":Lcom/android/camera/app/ModuleManager$ModuleAgent;
    :cond_6
    invoke-interface {v0}, Lcom/android/camera/app/ModuleManager$ModuleAgent;->closeExistCamera()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_7

    .line 4112
    invoke-interface {v2}, Lcom/android/camera/app/ModuleManager$ModuleAgent;->closeExistCamera()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_7
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private setNfcBeamPushUriFromData(Lcom/android/camera/data/FilmstripItem;)V
    .locals 4
    .param p1, "data"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    const/4 v3, 0x0

    .line 4660
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 4661
    .local v0, "uri":Landroid/net/Uri;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, v1, :cond_0

    .line 4662
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mNfcPushUris:[Landroid/net/Uri;

    aput-object v0, v1, v3

    .line 4666
    :goto_0
    return-void

    .line 4664
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mNfcPushUris:[Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v2, v1, v3

    goto :goto_0
.end method

.method private setRotationAnimation()V
    .locals 3

    .prologue
    .line 2669
    const/4 v0, 0x0

    .line 2670
    .local v0, "rotationAnimation":I
    const/4 v0, 0x1

    .line 2671
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2672
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2673
    .local v2, "winParams":Landroid/view/WindowManager$LayoutParams;
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 2674
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2675
    return-void
.end method

.method private setupNfcBeamPush()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1225
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1244
    :cond_0
    :goto_0
    return-void

    .line 1226
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1227
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 1231
    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->HAS_SET_BEAM_PUSH_URIS:Z

    if-nez v1, :cond_2

    .line 1233
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/app/Activity;

    invoke-virtual {v0, v2, p0, v1}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    goto :goto_0

    .line 1237
    :cond_2
    invoke-virtual {v0, v2, p0}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    .line 1238
    new-instance v1, Lcom/android/camera/CameraActivity$10;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraActivity$10;-><init>(Lcom/android/camera/CameraActivity;)V

    invoke-virtual {v0, v1, p0}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private showDetailsDialog(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/16 v6, 0x2710

    .line 4762
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    if-nez v3, :cond_1

    .line 4776
    :cond_0
    :goto_0
    return-void

    .line 4763
    :cond_1
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v3, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 4764
    .local v0, "data":Lcom/android/camera/data/FilmstripItem;
    if-eqz v0, :cond_0

    .line 4767
    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getMediaDetails()Lcom/google/common/base/Optional;

    move-result-object v2

    .line 4768
    .local v2, "details":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/data/MediaDetails;>;"
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4771
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/MediaDetails;

    invoke-static {p0, v3}, Lcom/android/camera/ui/DetailsDialog;->create(Landroid/content/Context;Lcom/android/camera/data/MediaDetails;)Landroid/app/Dialog;

    move-result-object v1

    .line 4772
    .local v1, "detailDialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 4773
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v3

    .line 4774
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->fileNameFromAdapterAtIndex(I)Ljava/lang/String;

    move-result-object v4

    .line 4775
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->fileAgeFromAdapterAtIndex(I)F

    move-result v5

    .line 4773
    invoke-virtual {v3, v4, v6, v6, v5}, Lcom/android/camera/stats/UsageStatistics;->mediaInteraction(Ljava/lang/String;IIF)V

    goto :goto_0
.end method

.method private showProcessError(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getFilmstripBottomControls()Lcom/android/camera/app/CameraAppUI$BottomPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getFilmstripBottomControls()Lcom/android/camera/app/CameraAppUI$BottomPanel;

    move-result-object v1

    if-lez p1, :cond_1

    .line 1207
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1206
    :goto_0
    invoke-interface {v1, v0}, Lcom/android/camera/app/CameraAppUI$BottomPanel;->showProgressError(Ljava/lang/CharSequence;)V

    .line 1209
    :cond_0
    return-void

    .line 1207
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private showSessionProgress(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 1195
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->getFilmstripBottomControls()Lcom/android/camera/app/CameraAppUI$BottomPanel;

    move-result-object v0

    .line 1196
    .local v0, "controls":Lcom/android/camera/app/CameraAppUI$BottomPanel;
    if-eqz v0, :cond_0

    .line 1197
    if-lez p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraAppUI$BottomPanel;->setProgressText(Ljava/lang/CharSequence;)V

    .line 1198
    invoke-interface {v0}, Lcom/android/camera/app/CameraAppUI$BottomPanel;->hideControls()V

    .line 1199
    invoke-interface {v0}, Lcom/android/camera/app/CameraAppUI$BottomPanel;->hideProgressError()V

    .line 1200
    invoke-interface {v0}, Lcom/android/camera/app/CameraAppUI$BottomPanel;->showProgress()V

    .line 1202
    :cond_0
    return-void

    .line 1197
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method private startGallery()Z
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 4611
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mGalleryIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 4612
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Start Gallery Fail - mGalleryIntent is null"

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    move v0, v13

    .line 4656
    :goto_0
    return v0

    .line 4615
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    if-nez v0, :cond_1

    .line 4616
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Start Gallery Fail - mDataAdapter is null"

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    move v0, v13

    .line 4617
    goto :goto_0

    .line 4620
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mGalleryIntent:Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 4621
    .local v1, "startGalleryIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mGalleryIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4622
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripController;->getCurrentAdapterIndex()I

    move-result v9

    .line 4623
    .local v9, "currentIndex":I
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0, v9}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v8

    .line 4624
    .local v8, "currentFilmstripItem":Lcom/android/camera/data/FilmstripItem;
    if-eqz v8, :cond_5

    .line 4626
    invoke-interface {v8}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 4627
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/camera/Storage;->isSessionUri(Landroid/net/Uri;)Z

    move-result v11

    .line 4628
    .local v11, "isSessionUri":Z
    invoke-static {v2}, Lcom/android/camera/Storage;->isVideoSessionUri(Landroid/net/Uri;)Z

    move-result v12

    .line 4629
    .local v12, "isVideoSessionUri":Z
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Photos] isSessionUri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isVideoSessionUri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currentFilmstripItem.getData().getUri():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 4631
    if-nez v11, :cond_4

    if-nez v12, :cond_4

    .line 4634
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mAppContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    iget-wide v4, p0, Lcom/android/camera/CameraActivity;->mOnCreateTime:J

    .line 4635
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getBrightnessLevel()F

    move-result v6

    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mMediaStoreIds:Ljava/util/List;

    .line 4634
    invoke-static/range {v0 .. v7}, Lcom/android/camera/util/GalleryHelper;->setContentUri(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;ZJFLjava/util/List;)V

    .line 4636
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start Gallery : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 4649
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mLeavingForReviewingPicture:Z

    .line 4650
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->launchActivityByIntent(Landroid/content/Intent;)V

    .line 4651
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mKeepAliveInSecure:Z

    move v0, v14

    .line 4656
    goto/16 :goto_0

    .line 4622
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v8    # "currentFilmstripItem":Lcom/android/camera/data/FilmstripItem;
    .end local v9    # "currentIndex":I
    .end local v11    # "isSessionUri":Z
    .end local v12    # "isVideoSessionUri":Z
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    move v9, v13

    goto/16 :goto_1

    :cond_3
    const/4 v9, -0x1

    goto/16 :goto_1

    .line 4638
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v8    # "currentFilmstripItem":Lcom/android/camera/data/FilmstripItem;
    .restart local v9    # "currentIndex":I
    .restart local v11    # "isSessionUri":Z
    .restart local v12    # "isVideoSessionUri":Z
    :cond_4
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start Gallery Fail - Session not complete : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 4639
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    const v3, 0x7f08010f

    invoke-virtual {p0, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4640
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v4

    invoke-direct {v0, p0, v3, v4}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    move v0, v13

    .line 4641
    goto/16 :goto_0

    .line 4644
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v11    # "isSessionUri":Z
    .end local v12    # "isVideoSessionUri":Z
    :cond_5
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Start Gallery Fail - Empty FilmstripItem"

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 4645
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    const v3, 0x7f08010f

    invoke-virtual {p0, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4646
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v4

    invoke-direct {v0, p0, v3, v4}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v13

    .line 4647
    goto/16 :goto_0

    .line 4652
    .end local v1    # "startGalleryIntent":Landroid/content/Intent;
    .end local v8    # "currentFilmstripItem":Lcom/android/camera/data/FilmstripItem;
    .end local v9    # "currentIndex":I
    :catch_0
    move-exception v10

    .line 4653
    .local v10, "e":Landroid/content/ActivityNotFoundException;
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Failed to launch gallery activity, closing"

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    move v0, v13

    .line 4654
    goto/16 :goto_0
.end method

.method private updateActionBarMenu(Lcom/android/camera/data/FilmstripItem;)V
    .locals 4
    .param p1, "data"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 4782
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    if-nez v2, :cond_1

    .line 4793
    :cond_0
    :goto_0
    return-void

    .line 4786
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v3, 0x7f0f024a

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 4787
    .local v0, "detailsMenuItem":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 4791
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemAttributes;->hasDetailedCaptureInfo()Z

    move-result v1

    .line 4792
    .local v1, "showDetails":Z
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateBottomControlsByData(Lcom/android/camera/data/FilmstripItem;)V
    .locals 8
    .param p1, "currentData"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 4705
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    .line 4706
    invoke-virtual {v7}, Lcom/android/camera/app/CameraAppUI;->getFilmstripBottomControls()Lcom/android/camera/app/CameraAppUI$BottomPanel;

    move-result-object v1

    .line 4707
    .local v1, "filmstripBottomPanel":Lcom/android/camera/app/CameraAppUI$BottomPanel;
    if-eqz v1, :cond_0

    .line 4708
    invoke-interface {v1}, Lcom/android/camera/app/CameraAppUI$BottomPanel;->showControls()V

    .line 4710
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/FilmstripItemAttributes;->canEdit()Z

    move-result v7

    .line 4709
    invoke-interface {v1, v7}, Lcom/android/camera/app/CameraAppUI$BottomPanel;->setEditButtonVisibility(Z)V

    .line 4712
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/FilmstripItemAttributes;->canShare()Z

    move-result v7

    .line 4711
    invoke-interface {v1, v7}, Lcom/android/camera/app/CameraAppUI$BottomPanel;->setShareButtonVisibility(Z)V

    .line 4714
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/FilmstripItemAttributes;->canDelete()Z

    move-result v7

    .line 4713
    invoke-interface {v1, v7}, Lcom/android/camera/app/CameraAppUI$BottomPanel;->setDeleteButtonVisibility(Z)V

    .line 4719
    :cond_0
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 4720
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v7

    .line 4721
    invoke-interface {v7}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v4

    .line 4723
    .local v4, "sessionManager":Lcom/android/camera/session/CaptureSessionManager;
    invoke-interface {v4, v0}, Lcom/android/camera/session/CaptureSessionManager;->hasErrorMessage(Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4724
    invoke-interface {v4, v0}, Lcom/android/camera/session/CaptureSessionManager;->getErrorMessageId(Landroid/net/Uri;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/camera/CameraActivity;->showProcessError(I)V

    .line 4750
    :goto_0
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getMetadata()Lcom/android/camera/data/Metadata;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/Metadata;->isHasRgbzData()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4751
    const/4 v6, 0x2

    .line 4756
    .local v6, "viewButtonVisibility":I
    :goto_1
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Lcom/android/camera/app/CameraAppUI$BottomPanel;->setTinyPlanetEnabled(Z)V

    .line 4758
    invoke-interface {v1, v6}, Lcom/android/camera/app/CameraAppUI$BottomPanel;->setViewerButtonVisibility(I)V

    .line 4759
    return-void

    .line 4726
    .end local v6    # "viewButtonVisibility":I
    :cond_1
    if-eqz v1, :cond_2

    .line 4727
    invoke-interface {v1}, Lcom/android/camera/app/CameraAppUI$BottomPanel;->hideProgressError()V

    .line 4729
    :cond_2
    invoke-interface {v4, v0}, Lcom/android/camera/session/CaptureSessionManager;->getSession(Landroid/net/Uri;)Lcom/android/camera/session/CaptureSession;

    move-result-object v3

    .line 4731
    .local v3, "session":Lcom/android/camera/session/CaptureSession;
    if-eqz v3, :cond_4

    .line 4732
    invoke-interface {v3}, Lcom/android/camera/session/CaptureSession;->getProgress()I

    move-result v5

    .line 4734
    .local v5, "sessionProgress":I
    if-gez v5, :cond_3

    .line 4735
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->hideSessionProgress()V

    goto :goto_0

    .line 4737
    :cond_3
    invoke-interface {v3}, Lcom/android/camera/session/CaptureSession;->getProgressMessageId()I

    move-result v2

    .line 4738
    .local v2, "progressMessageId":I
    invoke-direct {p0, v2}, Lcom/android/camera/CameraActivity;->showSessionProgress(I)V

    .line 4739
    invoke-direct {p0, v5}, Lcom/android/camera/CameraActivity;->updateSessionProgress(I)V

    goto :goto_0

    .line 4742
    .end local v2    # "progressMessageId":I
    .end local v5    # "sessionProgress":I
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->hideSessionProgress()V

    goto :goto_0

    .line 4753
    .end local v3    # "session":Lcom/android/camera/session/CaptureSession;
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "viewButtonVisibility":I
    goto :goto_1
.end method

.method private updatePreviewRendering(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 2651
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2652
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->pausePreviewRendering()V

    .line 2656
    :goto_0
    return-void

    .line 2654
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->resumePreviewRendering()V

    goto :goto_0
.end method

.method private updatePreviewVisibility()V
    .locals 2

    .prologue
    .line 2640
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-nez v1, :cond_0

    .line 2648
    :goto_0
    return-void

    .line 2644
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->getPreviewVisibility()I

    move-result v0

    .line 2645
    .local v0, "visibility":I
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/app/CameraAppUI;->onPreviewVisiblityChanged(I)V

    .line 2646
    invoke-direct {p0, v0}, Lcom/android/camera/CameraActivity;->updatePreviewRendering(I)V

    .line 2647
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraModule;->onPreviewVisibilityChanged(I)V

    goto :goto_0
.end method

.method private updateSessionProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getFilmstripBottomControls()Lcom/android/camera/app/CameraAppUI$BottomPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getFilmstripBottomControls()Lcom/android/camera/app/CameraAppUI$BottomPanel;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/app/CameraAppUI$BottomPanel;->setProgress(I)V

    .line 1215
    :cond_0
    return-void
.end method

.method private updateSessionProgressText(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getFilmstripBottomControls()Lcom/android/camera/app/CameraAppUI$BottomPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getFilmstripBottomControls()Lcom/android/camera/app/CameraAppUI$BottomPanel;

    move-result-object v1

    if-lez p1, :cond_1

    .line 1220
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1219
    :goto_0
    invoke-interface {v1, v0}, Lcom/android/camera/app/CameraAppUI$BottomPanel;->setProgressText(Ljava/lang/CharSequence;)V

    .line 1222
    :cond_0
    return-void

    .line 1220
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private updateThumbnailWhenLock(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    .line 3053
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mLockedMediaFileUri:Landroid/net/Uri;

    .line 3054
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mLockedMediaFileUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 3055
    iput-boolean v1, p0, Lcom/android/camera/CameraActivity;->mLockedSecureCamera:Z

    .line 3056
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideCaptureIndicator()V

    .line 3057
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->setLockScreenThumbnail()V

    .line 3062
    :goto_0
    return-void

    .line 3060
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideCaptureIndicator()V

    .line 3061
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->showDefaultThumbnail(Z)V

    goto :goto_0
.end method

.method private updateUiByData(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 4672
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v1, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 4673
    .local v0, "currentData":Lcom/android/camera/data/FilmstripItem;
    if-nez v0, :cond_1

    .line 4674
    sget-object v1, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Current data ID not found."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 4675
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->hideSessionProgress()V

    .line 4698
    :cond_0
    :goto_0
    return-void

    .line 4678
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/CameraActivity;->updateActionBarMenu(Lcom/android/camera/data/FilmstripItem;)V

    .line 4681
    invoke-direct {p0, v0}, Lcom/android/camera/CameraActivity;->updateBottomControlsByData(Lcom/android/camera/data/FilmstripItem;)V

    .line 4683
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4686
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->getFilmstripBottomControls()Lcom/android/camera/app/CameraAppUI$BottomPanel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4687
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->getFilmstripBottomControls()Lcom/android/camera/app/CameraAppUI$BottomPanel;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraAppUI$BottomPanel;->hideControls()V

    goto :goto_0

    .line 4692
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/camera/CameraActivity;->setNfcBeamPushUriFromData(Lcom/android/camera/data/FilmstripItem;)V

    .line 4694
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    if-eqz v1, :cond_0

    .line 4695
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v1, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->isMetadataUpdatedAt(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4696
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v1, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->updateMetadataAt(I)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->addPreviewAreaChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1778
    return-void
.end method

.method public buildModeList()V
    .locals 4

    .prologue
    .line 4978
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->getModeIndex()I

    move-result v0

    .line 4979
    .local v0, "currentMode":I
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 4980
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 4984
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mModuleManager:Lcom/android/camera/app/ModuleManagerImpl;

    invoke-virtual {v2}, Lcom/android/camera/app/ModuleManagerImpl;->getSupportedModeIndexList()Ljava/util/List;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/camera/app/CameraAppUI;->buildModeList(Ljava/util/List;ZI)V

    .line 4985
    return-void

    .line 4981
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4982
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0
.end method

.method public cancelPostCaptureAnimation()V
    .locals 0

    .prologue
    .line 1978
    return-void
.end method

.method public cancelPreCaptureAnimation()V
    .locals 0

    .prologue
    .line 1963
    return-void
.end method

.method public couldChangeButtonState()Z
    .locals 1

    .prologue
    .line 3482
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/CameraModule;->couldChangeButtonState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createDialog()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 1665
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x103000a

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2687
    invoke-super {p0, p1}, Lcom/android/camera/util/QuickActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2688
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 2693
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mIsUndoingDeletion:Z

    if-nez v1, :cond_0

    .line 2694
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->performDeletion()V

    .line 2697
    :cond_0
    return v0
.end method

.method public enableKeepScreenOn(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2115
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2126
    :goto_0
    return-void

    .line 2119
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/CameraActivity;->mKeepScreenOn:Z

    .line 2120
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mKeepScreenOn:Z

    if-eqz v0, :cond_1

    .line 2121
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2122
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 2124
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->keepScreenOnForAWhile()V

    goto :goto_0
.end method

.method public finishActivityWithIntentCanceled()V
    .locals 2

    .prologue
    .line 4582
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraActivity;->finishActivityWithIntentResult(ILandroid/content/Intent;)V

    .line 4583
    return-void
.end method

.method public finishActivityWithIntentCompleted(Landroid/content/Intent;)V
    .locals 1
    .param p1, "resultIntent"    # Landroid/content/Intent;

    .prologue
    .line 4577
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/CameraActivity;->finishActivityWithIntentResult(ILandroid/content/Intent;)V

    .line 4578
    return-void
.end method

.method public freezeScreenUntilPreviewReady()V
    .locals 2

    .prologue
    .line 4064
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/CameraActivity$28;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraActivity$28;-><init>(Lcom/android/camera/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 4076
    return-void
.end method

.method public getActivity()Lcom/android/camera/CameraActivity;
    .locals 0

    .prologue
    .line 824
    return-object p0
.end method

.method public getAllCameraScopeList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1717
    .local v0, "allCameraScopeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isHAL3Enabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1718
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getOneCameraController()Lcom/android/camera/app/OneCameraController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/OneCameraController;->getNumberOfCameras()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1719
    invoke-static {v2}, Lcom/android/camera/device/CameraId;->fromLegacyId(I)Lcom/android/camera/device/CameraId;

    move-result-object v1

    .line 1720
    .local v1, "cameraId":Lcom/android/camera/device/CameraId;
    invoke-virtual {v1}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1718
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1723
    .end local v1    # "cameraId":Lcom/android/camera/device/CameraId;
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraController;->getNumberOfCameras()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1724
    invoke-static {v2}, Lcom/android/camera/device/CameraId;->fromLegacyId(I)Lcom/android/camera/device/CameraId;

    move-result-object v1

    .line 1725
    .restart local v1    # "cameraId":Lcom/android/camera/device/CameraId;
    invoke-virtual {v1}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1723
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1729
    .end local v1    # "cameraId":Lcom/android/camera/device/CameraId;
    :cond_1
    return-object v0
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getAutoFocusTime()J
    .locals 2

    .prologue
    .line 4467
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mAutoFocusTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getBitMapFromPreview(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->getBitMapFromPreview(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBrightnessControlValue()F
    .locals 4

    .prologue
    .line 1949
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mAppContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    .line 1952
    :goto_0
    return v0

    .line 1950
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080330

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1951
    .local v0, "ret":F
    sget-object v1, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBrightnessControlValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBrightnessLevel()F
    .locals 9

    .prologue
    const/high16 v8, 0x437f0000    # 255.0f

    .line 1932
    const/high16 v0, 0x437f0000    # 255.0f

    .line 1933
    .local v0, "MAX_BRIGHTNESS":F
    const/4 v1, 0x0

    .line 1934
    .local v1, "MIN_BRIGHTNESS":F
    const/high16 v3, -0x40800000    # -1.0f

    .line 1936
    .local v3, "brightnessLevel":F
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 1938
    .local v2, "brightness":I
    sget-object v5, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SCREEN_BRIGHTNESS : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1939
    int-to-float v5, v2

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    int-to-float v5, v2

    cmpg-float v5, v5, v8

    if-gtz v5, :cond_0

    .line 1940
    int-to-float v5, v2

    div-float v3, v5, v8

    .line 1945
    .end local v2    # "brightness":I
    :cond_0
    :goto_0
    return v3

    .line 1942
    :catch_0
    move-exception v4

    .line 1943
    .local v4, "e":Landroid/provider/Settings$SettingNotFoundException;
    sget-object v5, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "Can\'t get screen brightness in setting"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getButtonManager()Lcom/android/camera/ButtonManager;
    .locals 1

    .prologue
    .line 4218
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mButtonManager:Lcom/android/camera/ButtonManager;

    if-nez v0, :cond_0

    .line 4219
    new-instance v0, Lcom/android/camera/ButtonManager;

    invoke-direct {v0, p0}, Lcom/android/camera/ButtonManager;-><init>(Lcom/android/camera/app/AppController;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mButtonManager:Lcom/android/camera/ButtonManager;

    .line 4221
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mButtonManager:Lcom/android/camera/ButtonManager;

    return-object v0
.end method

.method public getCameraAppUI()Lcom/android/camera/app/CameraAppUI;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    return-object v0
.end method

.method public getCameraController()Lcom/android/camera/app/CameraController;
    .locals 8

    .prologue
    .line 4506
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraController:Lcom/android/camera/app/CameraController;

    if-nez v0, :cond_0

    .line 4508
    :try_start_0
    new-instance v0, Lcom/android/camera/app/CameraController;

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mAppContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mAppContext:Landroid/content/Context;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .line 4509
    invoke-static {v2, v4}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->initAndroidCameraAgent(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/app/CameraController;-><init>(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent;Lcom/android/ex/camera2/portability/CameraAgent;Lcom/android/camera/device/ActiveCameraDeviceTracker;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraController:Lcom/android/camera/app/CameraController;

    .line 4513
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CameraController.get"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 4514
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraController:Lcom/android/camera/app/CameraController;

    new-instance v1, Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraExceptionCallback:Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;-><init>(Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraController;->setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 4521
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraController:Lcom/android/camera/app/CameraController;

    return-object v0

    .line 4516
    :catch_0
    move-exception v7

    .line 4517
    .local v7, "e":Ljava/lang/AssertionError;
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Creating camera controller failed."

    invoke-static {v0, v1, v7}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4518
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_0
.end method

.method public getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;
    .locals 1

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFeatureConfig:Lcom/android/camera/one/config/OneCameraFeatureConfig;

    return-object v0
.end method

.method public getCameraOpenErrorCallback()Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
    .locals 1

    .prologue
    .line 4502
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v0

    return-object v0
.end method

.method public getCameraOpener()Lcom/android/camera/one/OneCameraOpener;
    .locals 1

    .prologue
    .line 2140
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getOneCameraController()Lcom/android/camera/app/OneCameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/OneCameraController;->getOneCameraOpener()Lcom/android/camera/one/OneCameraOpener;

    move-result-object v0

    return-object v0
.end method

.method public getCameraProvider()Lcom/android/camera/app/CameraProvider;
    .locals 1

    .prologue
    .line 2130
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v0

    return-object v0
.end method

.method public getCameraScope()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1698
    const/4 v0, 0x0

    .line 1700
    .local v0, "cameraId":Lcom/android/camera/device/CameraId;
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isHAL3Enabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/CameraModule;->isUsingHAL3()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1701
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getOneCameraController()Lcom/android/camera/app/OneCameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getOneCameraController()Lcom/android/camera/app/OneCameraController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/OneCameraController;->getCurrentCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v0

    .line 1706
    :goto_0
    if-nez v0, :cond_3

    .line 1707
    sget-object v1, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Retrieving Camera Setting Scope with -1"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1708
    const-string v1, "-1"

    invoke-static {v1}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1711
    :goto_1
    return-object v1

    :cond_0
    move-object v0, v1

    .line 1701
    goto :goto_0

    .line 1703
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraController;->getCurrentCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v0

    :goto_2
    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_2

    .line 1711
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getCaptureStartTime()J
    .locals 2

    .prologue
    .line 4492
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentModule()Lcom/android/camera/CameraModule;
    .locals 1

    .prologue
    .line 4548
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    return-object v0
.end method

.method public getCurrentModuleController()Lcom/android/camera/module/ModuleController;
    .locals 1

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    return-object v0
.end method

.method public getCurrentModuleIndex()I
    .locals 1

    .prologue
    .line 1682
    iget v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    return v0
.end method

.method public getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;
    .locals 1

    .prologue
    .line 4154
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mEffectChooseManager:Lcom/android/camera/effect/EffectChooseManager;

    return-object v0
.end method

.method public getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;
    .locals 1

    .prologue
    .line 4200
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    return-object v0
.end method

.method public getFirstPreviewTime()J
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    .line 4457
    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v4, v4, Lcom/android/camera/PhotoModule;

    if-eqz v4, :cond_0

    .line 4458
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/CameraAppUI;->getCoverHiddenTime()J

    move-result-wide v0

    .line 4459
    .local v0, "coverHiddenTime":J
    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 4460
    iget-wide v2, p0, Lcom/android/camera/CameraActivity;->mOnCreateTime:J

    sub-long v2, v0, v2

    .line 4463
    .end local v0    # "coverHiddenTime":J
    :cond_0
    return-wide v2
.end method

.method public getFullscreenRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getFullscreenRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getJpegCallbackFinishTime()J
    .locals 2

    .prologue
    .line 4487
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getLiveBroadcastManager()Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    .locals 1

    .prologue
    .line 4139
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getLiveBroadcastManager()Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    move-result-object v0

    return-object v0
.end method

.method public getLocationManager()Lcom/android/camera/app/LocationManager;
    .locals 1

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mLocationManager:Lcom/android/camera/app/LocationManager;

    return-object v0
.end method

.method public getMemoryManager()Lcom/android/camera/app/MemoryManager;
    .locals 1

    .prologue
    .line 4187
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMemoryManager:Lcom/android/camera/app/MemoryManager;

    if-nez v0, :cond_0

    .line 4188
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mMemoryManager:Lcom/android/camera/app/MemoryManager;

    .line 4190
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMemoryManager:Lcom/android/camera/app/MemoryManager;

    return-object v0
.end method

.method public getModuleId(I)I
    .locals 2
    .param p1, "modeIndex"    # I

    .prologue
    .line 4080
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mModuleManager:Lcom/android/camera/app/ModuleManagerImpl;

    invoke-virtual {v1, p1}, Lcom/android/camera/app/ModuleManagerImpl;->getModuleAgent(I)Lcom/android/camera/app/ModuleManager$ModuleAgent;

    move-result-object v0

    .line 4081
    .local v0, "agent":Lcom/android/camera/app/ModuleManager$ModuleAgent;
    if-nez v0, :cond_0

    .line 4082
    const/4 v1, -0x1

    .line 4084
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lcom/android/camera/app/ModuleManager$ModuleAgent;->getModuleId()I

    move-result v1

    goto :goto_0
.end method

.method public getModuleLayoutRoot()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getModuleRootView()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getModuleManager()Lcom/android/camera/app/ModuleManager;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mModuleManager:Lcom/android/camera/app/ModuleManagerImpl;

    return-object v0
.end method

.method public getModuleScope()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1687
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mModuleManager:Lcom/android/camera/app/ModuleManagerImpl;

    iget v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/app/ModuleManagerImpl;->getModuleAgent(I)Lcom/android/camera/app/ModuleManager$ModuleAgent;

    move-result-object v0

    .line 1688
    .local v0, "agent":Lcom/android/camera/app/ModuleManager$ModuleAgent;
    invoke-interface {v0}, Lcom/android/camera/app/ModuleManager$ModuleAgent;->getScopeNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMotionManager()Lcom/android/camera/app/MotionManager;
    .locals 1

    .prologue
    .line 4180
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMotionManager:Lcom/android/camera/app/MotionManager;

    if-nez v0, :cond_0

    .line 4181
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getMotionManager()Lcom/android/camera/app/MotionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mMotionManager:Lcom/android/camera/app/MotionManager;

    .line 4183
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMotionManager:Lcom/android/camera/app/MotionManager;

    return-object v0
.end method

.method public getOnFilmStripReadyListener()Lcom/android/camera/app/CameraAppUI$OnFilmStripReadyListener;
    .locals 0

    .prologue
    .line 819
    return-object p0
.end method

.method public getOnModeListViewReadyListener()Lcom/android/camera/app/CameraAppUI$OnModeListViewReadyListener;
    .locals 0

    .prologue
    .line 829
    return-object p0
.end method

.method public getOneCameraController()Lcom/android/camera/app/OneCameraController;
    .locals 8

    .prologue
    .line 4525
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mOneCameraController:Lcom/android/camera/app/OneCameraController;

    if-nez v0, :cond_0

    .line 4527
    :try_start_0
    new-instance v0, Lcom/android/camera/app/OneCameraController;

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mFeatureConfig:Lcom/android/camera/one/config/OneCameraFeatureConfig;

    .line 4531
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/app/OneCameraController;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/app/OneCameraController$OneCameraDemandChecker;Lcom/android/camera/one/config/OneCameraFeatureConfig;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/device/ActiveCameraDeviceTracker;Lcom/android/camera/FatalErrorHandler;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mOneCameraController:Lcom/android/camera/app/OneCameraController;

    .line 4534
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "OneCameraController.get"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 4535
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mOneCameraController:Lcom/android/camera/app/OneCameraController;

    new-instance v1, Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraExceptionCallback:Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;-><init>(Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/app/OneCameraController;->setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 4543
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mOneCameraController:Lcom/android/camera/app/OneCameraController;

    return-object v0

    .line 4537
    :catch_0
    move-exception v7

    .line 4538
    .local v7, "e":Ljava/lang/AssertionError;
    invoke-virtual {v7}, Ljava/lang/AssertionError;->printStackTrace()V

    .line 4539
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Creating OneCamera controller failed."

    invoke-static {v0, v1, v7}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4540
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_0
.end method

.method public getOneCameraManager()Lcom/android/camera/one/OneCameraManager;
    .locals 3

    .prologue
    .line 4167
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    if-nez v1, :cond_0

    .line 4169
    :try_start_0
    invoke-static {}, Lcom/android/camera/one/OneCameraModule;->provideOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4176
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    return-object v1

    .line 4170
    :catch_0
    move-exception v0

    .line 4172
    .local v0, "e":Lcom/android/camera/one/OneCameraException;
    sget-object v1, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Creating camera manager failed."

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4173
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    invoke-interface {v1}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_0
.end method

.method public getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;
    .locals 1

    .prologue
    .line 2135
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getOneCameraController()Lcom/android/camera/app/OneCameraController;

    move-result-object v0

    return-object v0
.end method

.method public getOrientationManager()Lcom/android/camera/app/OrientationManager;
    .locals 2

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mOrientationManager:Lcom/android/camera/app/OrientationManagerImpl;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1983
    new-instance v0, Lcom/android/camera/app/OrientationManagerImpl;

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/app/OrientationManagerImpl;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mOrientationManager:Lcom/android/camera/app/OrientationManagerImpl;

    .line 1985
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mOrientationManager:Lcom/android/camera/app/OrientationManagerImpl;

    return-object v0
.end method

.method public getPhoneStateManager()Lcom/android/camera/PhoneStateManager;
    .locals 1

    .prologue
    .line 4231
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPhoneStateManager:Lcom/android/camera/PhoneStateManager;

    return-object v0
.end method

.method public getPictureDisplayedToJpegCallbackTime()J
    .locals 2

    .prologue
    .line 4482
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getPowerStateManager()Lcom/android/camera/PowerStateManager;
    .locals 1

    .prologue
    .line 4226
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPowerStateManager:Lcom/android/camera/PowerStateManager;

    return-object v0
.end method

.method public getPreferredChildModeIndex(I)I
    .locals 3
    .param p1, "modeIndex"    # I

    .prologue
    .line 3921
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 3922
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/settings/Keys;->isHdrPlusOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v0

    .line 3923
    .local v0, "hdrPlusOn":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mFeatureConfig:Lcom/android/camera/one/config/OneCameraFeatureConfig;

    invoke-static {v1}, Lcom/android/camera/util/GcamHelper;->hasGcamAsSeparateModule(Lcom/android/camera/one/config/OneCameraFeatureConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3924
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 3927
    .end local v0    # "hdrPlusOn":Z
    :cond_0
    return p1
.end method

.method public getPreviewBuffer()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 1761
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQuickSwitchToLastModuleId(I)I
    .locals 1
    .param p1, "currentModuleIndex"    # I

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mModuleManager:Lcom/android/camera/app/ModuleManagerImpl;

    invoke-virtual {v0, p1}, Lcom/android/camera/app/ModuleManagerImpl;->getQuickSwitchToLastModuleId(I)I

    move-result v0

    return v0
.end method

.method public getQuickSwitchToModuleId(I)I
    .locals 3
    .param p1, "currentModuleIndex"    # I

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mModuleManager:Lcom/android/camera/app/ModuleManagerImpl;

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/camera/app/ModuleManagerImpl;->getQuickSwitchToModuleId(ILcom/android/camera/settings/SettingsManager;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getQuickSwitchToProModuleId(I)I
    .locals 2
    .param p1, "currentModuleIndex"    # I

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mModuleManager:Lcom/android/camera/app/ModuleManagerImpl;

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/app/ModuleManagerImpl;->getQuickSwitchToProModuleId(ILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;
    .locals 4

    .prologue
    .line 4159
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mResolutionSetting:Lcom/android/camera/settings/ResolutionSetting;

    if-nez v0, :cond_0

    .line 4160
    new-instance v0, Lcom/android/camera/settings/ResolutionSetting;

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/settings/ResolutionSetting;-><init>(Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/one/OneCameraManager;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mResolutionSetting:Lcom/android/camera/settings/ResolutionSetting;

    .line 4162
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mResolutionSetting:Lcom/android/camera/settings/ResolutionSetting;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 3903
    iget v0, p0, Lcom/android/camera/CameraActivity;->mResultCodeForTesting:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 3907
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mResultDataForTesting:Landroid/content/Intent;

    return-object v0
.end method

.method public getSceneRecognitionManager()Lcom/android/camera/scenerecognition/SceneRecognitionManager;
    .locals 1

    .prologue
    .line 4149
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSceneRecognitionManager:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    return-object v0
.end method

.method public getServices()Lcom/android/camera/app/CameraServices;
    .locals 1

    .prologue
    .line 4195
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v0

    return-object v0
.end method

.method public getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    return-object v0
.end method

.method public getSettingsManager()Lcom/android/camera/settings/SettingsManager;
    .locals 1

    .prologue
    .line 4131
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    if-nez v0, :cond_0

    .line 4132
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 4134
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    return-object v0
.end method

.method public getShutterLag()J
    .locals 2

    .prologue
    .line 4472
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mShutterLag:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getShutterToPictureDisplayedTime()J
    .locals 2

    .prologue
    .line 4477
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mShutterToPictureDisplayedTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getSoundPlayer()Lcom/android/camera/SoundPlayer;
    .locals 2

    .prologue
    .line 4236
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-nez v0, :cond_0

    .line 4237
    new-instance v0, Lcom/android/camera/SoundPlayer;

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 4239
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    return-object v0
.end method

.method public getStorageSpaceBytes()J
    .locals 3

    .prologue
    .line 3765
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceCheckTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    .line 3767
    :goto_0
    return-wide v0

    .line 3766
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3767
    :try_start_0
    iget-wide v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    monitor-exit v2

    goto :goto_0

    .line 3768
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSubCameraScope()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3420
    const/4 v0, 0x0

    .line 3422
    .local v0, "cameraId":Lcom/android/camera/device/CameraId;
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isHAL3Enabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/CameraModule;->isUsingHAL3()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3423
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getOneCameraController()Lcom/android/camera/app/OneCameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getOneCameraController()Lcom/android/camera/app/OneCameraController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/OneCameraController;->getCurrentCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v0

    .line 3428
    :goto_0
    if-nez v0, :cond_3

    .line 3429
    sget-object v1, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Retrieving Camera Setting Scope with -1"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3430
    const-string v1, "-1"

    invoke-static {v1}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3433
    :goto_1
    return-object v1

    :cond_0
    move-object v0, v1

    .line 3423
    goto :goto_0

    .line 3425
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraController;->getCurrentCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v0

    :goto_2
    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_2

    .line 3433
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getSupportedModeNames()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4204
    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mModuleManager:Lcom/android/camera/app/ModuleManagerImpl;

    invoke-virtual {v4}, Lcom/android/camera/app/ModuleManagerImpl;->getSupportedModeIndexList()Ljava/util/List;

    move-result-object v0

    .line 4205
    .local v0, "indices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4207
    .local v3, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4208
    .local v1, "modeIndex":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/android/camera/util/CameraUtil;->getCameraModeText(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 4209
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4210
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4213
    .end local v1    # "modeIndex":Ljava/lang/Integer;
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public getWatermarkManager()Lcom/android/camera/WatermarkManager;
    .locals 1

    .prologue
    .line 4144
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mWatermarkManager:Lcom/android/camera/WatermarkManager;

    return-object v0
.end method

.method public gotoGallery()V
    .locals 3

    .prologue
    const/16 v2, 0x2710

    .line 1154
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mLeavingCamera:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1159
    :cond_0
    :goto_0
    return-void

    .line 1155
    :cond_1
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    .line 1156
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1155
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/stats/UsageStatistics;->changeScreen(ILjava/lang/Integer;)V

    .line 1157
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->startGallery()Z

    goto :goto_0
.end method

.method public gotoGalleryWhenLockScreen()V
    .locals 3

    .prologue
    .line 3066
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3067
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "camera_current_uri"

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mLockedMediaFileUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3068
    const-class v1, Lcom/android/camera/KeyguardCameraActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3069
    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 3070
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 3071
    return-void
.end method

.method public initSubCameraControllerIfNeed()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3464
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3477
    :goto_0
    return v0

    .line 3466
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraController;->hasInitedSubCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3467
    invoke-static {}, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->instance()Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mActiveSubCameraDeviceTracker:Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

    .line 3468
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mAppContext:Landroid/content/Context;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .line 3469
    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->initAndroidSubCameraAgent(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    new-instance v2, Lcom/android/camera/CameraActivity$SubCameraCallback;

    invoke-direct {v2, p0, v4}, Lcom/android/camera/CameraActivity$SubCameraCallback;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CameraActivity$1;)V

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mActiveSubCameraDeviceTracker:Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

    .line 3468
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/camera/app/CameraController;->initSubCameraController(Lcom/android/ex/camera2/portability/CameraAgent;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;Lcom/android/ex/camera2/portability/CameraAgent;Lcom/android/camera/device/ActiveSubCameraDeviceTracker;)V

    .line 3477
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public invalidThumbnail()V
    .locals 1

    .prologue
    .line 4953
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    if-nez v0, :cond_0

    .line 4955
    :goto_0
    return-void

    .line 4954
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->clear()V

    goto :goto_0
.end method

.method public isAppDestroyed()Z
    .locals 1

    .prologue
    .line 4948
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public isAutoRotateScreen()Z
    .locals 1

    .prologue
    .line 3726
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mAutoRotateScreen:Z

    return v0
.end method

.method public isGoogleLensAvailable()Z
    .locals 1

    .prologue
    .line 898
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mGoogleLensAvailable:Z

    return v0
.end method

.method public isOneCameraOnDemand()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 909
    iget v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 910
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mModuleManager:Lcom/android/camera/app/ModuleManagerImpl;

    iget v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/app/ModuleManagerImpl;->getModuleAgent(I)Lcom/android/camera/app/ModuleManager$ModuleAgent;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/ModuleManager$ModuleAgent;->requestAppForCamera()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 3916
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 4497
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/VideoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/VideoModule;

    .line 4498
    invoke-virtual {v0}, Lcom/android/camera/VideoModule;->isRecording()Z

    move-result v0

    .line 4497
    :goto_0
    return v0

    .line 4498
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/VideoHal3Module;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/VideoHal3Module;

    invoke-virtual {v0}, Lcom/android/camera/VideoHal3Module;->isRecording()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecureCamera()Z
    .locals 1

    .prologue
    .line 3911
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    return v0
.end method

.method public isShutterEnabled()Z
    .locals 1

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v0

    return v0
.end method

.method public isShutterPressed()Z
    .locals 1

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonPressed()Z

    move-result v0

    return v0
.end method

.method public isSwitchButtonEnabled()Z
    .locals 1

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->isSwitchButtonEnabled()Z

    move-result v0

    return v0
.end method

.method public isVolumeKeyLongPressed()Z
    .locals 1

    .prologue
    .line 1856
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->longPress:Z

    return v0
.end method

.method public launchActivityByIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1674
    invoke-static {}, Lcom/android/camera/cpuboost/CpuBooster;->instance()Lcom/android/camera/cpuboost/BoostEngine;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/android/camera/cpuboost/BoostEngine;->boostInTime(I)Z

    .line 1675
    const/high16 v0, 0x10000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1676
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 1677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mLeavingCamera:Z

    .line 1678
    return-void
.end method

.method public launchEditor(Lcom/android/camera/data/FilmstripItem;)V
    .locals 6
    .param p1, "data"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 4250
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4251
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/FilmstripItemData;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    .line 4252
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 4254
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->launchActivityByIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4259
    :goto_0
    return-void

    .line 4255
    :catch_0
    move-exception v0

    .line 4256
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080075

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4257
    .local v2, "msgEditWith":Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera/CameraActivity;->launchActivityByIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public launchTinyPlanetEditor(Lcom/android/camera/data/FilmstripItem;)V
    .locals 4
    .param p1, "data"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 4292
    new-instance v1, Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-direct {v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;-><init>()V

    .line 4293
    .local v1, "fragment":Lcom/android/camera/tinyplanet/TinyPlanetFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4294
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "uri"

    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4295
    const-string v2, "title"

    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4296
    invoke-virtual {v1, v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->setArguments(Landroid/os/Bundle;)V

    .line 4297
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "tiny_planet"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 4298
    return-void
.end method

.method public lockOrientation()V
    .locals 1

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mOrientationManager:Lcom/android/camera/app/OrientationManagerImpl;

    if-eqz v0, :cond_0

    .line 1996
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mOrientationManager:Lcom/android/camera/app/OrientationManagerImpl;

    invoke-virtual {v0}, Lcom/android/camera/app/OrientationManagerImpl;->lockOrientation()V

    .line 1998
    :cond_0
    return-void
.end method

.method public notifyModeListState(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 3410
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraModule;->notifyModeListState(Z)V

    .line 3411
    :cond_0
    return-void
.end method

.method public notifyNewMedia(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2035
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/CameraActivity;->notifyNewMedia(Landroid/net/Uri;Z)V

    .line 2036
    return-void
.end method

.method public notifyNewMedia(Landroid/net/Uri;Z)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "needThumbnail"    # Z

    .prologue
    .line 2040
    sget-object v3, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyNewMedia : uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", needThumbnail = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2043
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 2044
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2045
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 2046
    .local v1, "mimeType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2047
    .local v2, "newData":Lcom/android/camera/data/FilmstripItem;
    invoke-static {v1}, Lcom/android/camera/data/FilmstripItemUtils;->isMimeTypeVideo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2048
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v3, v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Lcom/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2049
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mVideoItemFactory:Lcom/android/camera/data/VideoItemFactory;

    if-nez v3, :cond_1

    .line 2111
    :cond_0
    :goto_0
    return-void

    .line 2050
    :cond_1
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mVideoItemFactory:Lcom/android/camera/data/VideoItemFactory;

    invoke-virtual {v3, p1}, Lcom/android/camera/data/VideoItemFactory;->queryContentUri(Landroid/net/Uri;)Lcom/android/camera/data/VideoItem;

    move-result-object v2

    .line 2051
    if-nez v2, :cond_4

    .line 2052
    sget-object v3, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find video data in content resolver:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 2055
    :cond_2
    invoke-static {v1}, Lcom/android/camera/data/FilmstripItemUtils;->isMimeTypeImage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2056
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/camera/util/CameraUtil;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2057
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mPhotoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

    if-eqz v3, :cond_0

    .line 2058
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mPhotoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

    invoke-virtual {v3, p1}, Lcom/android/camera/data/PhotoItemFactory;->queryContentUri(Landroid/net/Uri;)Lcom/android/camera/data/PhotoItem;

    move-result-object v2

    .line 2059
    if-nez v2, :cond_4

    .line 2060
    sget-object v3, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find photo data in content resolver:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 2064
    :cond_3
    sget-object v3, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown new media with MIME type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 2070
    :cond_4
    new-instance v3, Lcom/android/camera/CameraActivity$14;

    invoke-direct {v3, p0, p2}, Lcom/android/camera/CameraActivity$14;-><init>(Lcom/android/camera/CameraActivity;Z)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/android/camera/data/FilmstripItem;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    .line 2110
    invoke-virtual {v3, v4, v5}, Lcom/android/camera/CameraActivity$14;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public notifySwipeStateChanged(I)V
    .locals 1
    .param p1, "swipeState"    # I

    .prologue
    .line 3457
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v0, :cond_0

    .line 3458
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraModule;->notifySwipeStateChanged(I)V

    .line 3460
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 4869
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/util/QuickActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4870
    sparse-switch p1, :sswitch_data_0

    .line 4889
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/camera/CameraModule;->onActivityResult(IILandroid/content/Intent;)V

    .line 4892
    :cond_1
    :goto_1
    return-void

    .line 4873
    :sswitch_0
    if-ne p2, v2, :cond_3

    .line 4874
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraActivity;->onCreateTasks(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 4876
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4877
    .local v1, "resultIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 4878
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->finish()V

    goto :goto_1

    .line 4883
    .end local v1    # "resultIntent":Landroid/content/Intent;
    :sswitch_1
    if-ne p2, v2, :cond_0

    .line 4884
    const-string v2, "LOCATION"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4885
    .local v0, "location":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mWatermarkManager:Lcom/android/camera/WatermarkManager;

    if-eqz v2, :cond_0

    .line 4886
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mWatermarkManager:Lcom/android/camera/WatermarkManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/WatermarkManager;->setLocationInfoData(Ljava/lang/String;Z)V

    goto :goto_0

    .line 4870
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public onAvailabilityStatusFetched(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 889
    sget-object v1, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAvailabilityStatusFetched = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 890
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mGoogleLensAvailable:Z

    .line 891
    .local v0, "previousStatus":Z
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/CameraActivity;->mGoogleLensAvailable:Z

    .line 892
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mGoogleLensAvailable:Z

    if-eq v0, v1, :cond_0

    .line 893
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->onFlashBottomBarUI()V

    .line 895
    :cond_0
    return-void

    .line 891
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 3716
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3717
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/CameraModule;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3718
    invoke-super {p0}, Lcom/android/camera/util/QuickActivity;->onBackPressed()V

    .line 3721
    :cond_0
    return-void
.end method

.method public onCameraDisabled(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 643
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera disabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onCameraDisabledFailure()V

    .line 645
    return-void
.end method

.method public onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 4
    .param p1, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const/4 v3, 0x0

    .line 599
    sget-object v1, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onCameraOpened"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 600
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    if-eqz v1, :cond_1

    .line 604
    sget-object v1, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "received onCameraOpened but activity is paused, closing Camera"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/app/CameraController;->closeCamera(Z)V

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mModuleManager:Lcom/android/camera/app/ModuleManagerImpl;

    iget v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/app/ModuleManagerImpl;->getModuleAgent(I)Lcom/android/camera/app/ModuleManager$ModuleAgent;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/ModuleManager$ModuleAgent;->requestAppForCamera()Z

    move-result v1

    if-nez v1, :cond_3

    .line 613
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 614
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/app/CameraController;->closeCamera(Z)V

    .line 616
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Camera opened but the module shouldn\'t be requesting"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 619
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v1, :cond_4

    .line 621
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {v1, p1}, Lcom/android/camera/CameraModule;->onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :goto_1
    sget-object v1, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "invoking onChangeCamera"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 631
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v1, v3}, Lcom/android/camera/app/CameraAppUI;->onChangeCamera(Z)V

    goto :goto_0

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, "ex":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Error connecting to camera"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 624
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    invoke-interface {v1}, Lcom/android/camera/FatalErrorHandler;->onCameraOpenFailure()V

    goto :goto_1

    .line 627
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_4
    sget-object v1, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "mCurrentModule null, not invoking onCameraAvailable"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 3620
    invoke-super {p0, p1}, Lcom/android/camera/util/QuickActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3621
    sget-object v1, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onConfigurationChanged"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3623
    invoke-static {p0}, Lcom/android/camera/util/OrientationUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 3624
    .local v0, "orientation":I
    sget-object v1, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EditDialog onConfigurationChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3625
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    if-eqz v1, :cond_0

    .line 3626
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/app/CameraAppUI;->onConfigurationChanged(I)V

    .line 3627
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 4272
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 4263
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/util/QuickActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 4265
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3750
    invoke-super {p0, p1}, Lcom/android/camera/util/QuickActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreateTasks(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 2269
    iget-object v11, p0, Lcom/android/camera/CameraActivity;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v12, "CameraActivity.onCreateTasks"

    invoke-interface {v11, v12}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v7

    .line 2270
    .local v7, "profile":Lcom/android/camera/stats/profiler/Profile;
    const/4 v11, 0x0

    invoke-static {v11}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 2271
    new-instance v11, Lcom/android/camera/async/Lifetime;

    invoke-direct {v11}, Lcom/android/camera/async/Lifetime;-><init>()V

    iput-object v11, p0, Lcom/android/camera/CameraActivity;->mActivityLifetime:Lcom/android/camera/async/Lifetime;

    .line 2273
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x18

    if-lt v11, v12, :cond_1

    .line 2274
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isInMultiWindowMode()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2275
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2276
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 2277
    .local v8, "resultIntent":Landroid/content/Intent;
    const/4 v11, 0x0

    invoke-virtual {p0, v11, v8}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 2278
    const v11, 0x7f08026d

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 2279
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 2532
    .end local v8    # "resultIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2283
    :cond_1
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/camera/CameraActivity;->mIsLaunchFromCreate:Z

    .line 2284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/camera/CameraActivity;->mOnCreateTime:J

    .line 2285
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/CameraActivity;->mAppContext:Landroid/content/Context;

    .line 2286
    new-instance v11, Lcom/android/camera/CameraActivity$MainHandler;

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, p0, v12}, Lcom/android/camera/CameraActivity$MainHandler;-><init>(Lcom/android/camera/CameraActivity;Landroid/os/Looper;)V

    iput-object v11, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    .line 2287
    new-instance v11, Lcom/android/camera/FatalErrorHandlerImpl;

    invoke-direct {v11, p0, p0}, Lcom/android/camera/FatalErrorHandlerImpl;-><init>(Landroid/app/Activity;Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;)V

    iput-object v11, p0, Lcom/android/camera/CameraActivity;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    .line 2289
    invoke-interface {v7}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 2290
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->checkPermissions()V

    .line 2291
    iget-boolean v11, p0, Lcom/android/camera/CameraActivity;->mHasCriticalPermissions:Z

    if-nez v11, :cond_2

    .line 2292
    sget-object v11, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onCreate: Missing critical permissions. : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2293
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2294
    invoke-direct {p0, v7}, Lcom/android/camera/CameraActivity;->initWindowAndContent(Lcom/android/camera/stats/profiler/Profile;)V

    goto :goto_0

    .line 2298
    :cond_2
    const-string v11, "checkPermissions"

    invoke-interface {v7, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2300
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    .line 2301
    .local v2, "conditionVariable":Landroid/os/ConditionVariable;
    new-instance v11, Lcom/android/camera/CameraActivity$16;

    invoke-direct {v11, p0, v2}, Lcom/android/camera/CameraActivity$16;-><init>(Lcom/android/camera/CameraActivity;Landroid/os/ConditionVariable;)V

    sget-object v12, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Void;

    .line 2427
    invoke-virtual {v11, v12, v13}, Lcom/android/camera/CameraActivity$16;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2429
    invoke-direct {p0, v7}, Lcom/android/camera/CameraActivity;->initWindowAndContent(Lcom/android/camera/stats/profiler/Profile;)V

    .line 2430
    sget-object v11, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v12, "initWindowAndContent done"

    invoke-static {v11, v12}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2432
    const-wide/16 v0, 0xbb8

    .line 2433
    .local v0, "BLOCKED_TIMEOUT":J
    invoke-interface {v7}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 2434
    const-wide/16 v12, 0xbb8

    invoke-virtual {v2, v12, v13}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v11

    if-nez v11, :cond_6

    const/4 v9, 0x1

    .line 2435
    .local v9, "timeout":Z
    :goto_1
    const-string v11, "conditionVariable.block"

    invoke-interface {v7, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2436
    if-eqz v9, :cond_3

    .line 2437
    sget-object v11, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v12, "onCreateTasks - Async timeout."

    invoke-static {v11, v12}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2438
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/app/CameraController;->resyncCamera()V

    .line 2439
    iget-object v11, p0, Lcom/android/camera/CameraActivity;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    invoke-interface {v11}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 2442
    :cond_3
    iget-object v11, p0, Lcom/android/camera/CameraActivity;->mModuleManager:Lcom/android/camera/app/ModuleManagerImpl;

    if-nez v11, :cond_4

    .line 2443
    new-instance v11, Lcom/android/camera/app/ModuleManagerImpl;

    invoke-direct {v11}, Lcom/android/camera/app/ModuleManagerImpl;-><init>()V

    iput-object v11, p0, Lcom/android/camera/CameraActivity;->mModuleManager:Lcom/android/camera/app/ModuleManagerImpl;

    .line 2446
    :cond_4
    new-instance v11, Lcom/android/camera/app/LocationManager;

    iget-object v12, p0, Lcom/android/camera/CameraActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/android/camera/app/LocationManager;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/camera/CameraActivity;->mLocationManager:Lcom/android/camera/app/LocationManager;

    .line 2447
    const-string v11, "LocationManager init"

    invoke-interface {v7, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2449
    new-instance v12, Lcom/android/camera/app/CameraAppUI;

    const v11, 0x7f0f009c

    .line 2450
    invoke-virtual {p0, v11}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/camera/ui/MainActivityLayout;

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v13

    invoke-direct {v12, p0, v11, v13}, Lcom/android/camera/app/CameraAppUI;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/ui/MainActivityLayout;Z)V

    iput-object v12, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    .line 2451
    const-string v11, "CameraAppUI init"

    invoke-interface {v7, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2453
    iget-object v11, p0, Lcom/android/camera/CameraActivity;->mAppContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/camera/CameraActivity;->mModuleManager:Lcom/android/camera/app/ModuleManagerImpl;

    iget-object v13, p0, Lcom/android/camera/CameraActivity;->mFeatureConfig:Lcom/android/camera/one/config/OneCameraFeatureConfig;

    invoke-static {v11, v12, v13, p0}, Lcom/android/camera/module/ModulesInfo;->setupMajorModules(Landroid/content/Context;Lcom/android/camera/app/ModuleManager;Lcom/android/camera/one/config/OneCameraFeatureConfig;Lcom/android/camera/app/AppController;)V

    .line 2454
    const-string v11, "setupMajorModules"

    invoke-interface {v7, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2456
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->getModeIndex()I

    move-result v11

    invoke-direct {p0, v11}, Lcom/android/camera/CameraActivity;->setModuleFromModeIndex(I)V

    .line 2457
    const-string v11, "setModuleFromModeIndex"

    invoke-interface {v7, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2459
    invoke-interface {v7}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 2460
    new-instance v11, Lcom/android/camera/WatermarkManager;

    invoke-direct {v11, p0}, Lcom/android/camera/WatermarkManager;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v11, p0, Lcom/android/camera/CameraActivity;->mWatermarkManager:Lcom/android/camera/WatermarkManager;

    .line 2461
    new-instance v11, Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-direct {v11, p0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v11, p0, Lcom/android/camera/CameraActivity;->mSceneRecognitionManager:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .line 2462
    new-instance v11, Lcom/android/camera/effect/EffectChooseManager;

    invoke-direct {v11, p0}, Lcom/android/camera/effect/EffectChooseManager;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v11, p0, Lcom/android/camera/CameraActivity;->mEffectChooseManager:Lcom/android/camera/effect/EffectChooseManager;

    .line 2463
    new-instance v11, Lcom/android/camera/PowerStateManager;

    iget-object v12, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v11, p0, v12}, Lcom/android/camera/PowerStateManager;-><init>(Lcom/android/camera/CameraActivity;Landroid/os/Handler;)V

    iput-object v11, p0, Lcom/android/camera/CameraActivity;->mPowerStateManager:Lcom/android/camera/PowerStateManager;

    .line 2464
    iget-object v11, p0, Lcom/android/camera/CameraActivity;->mPowerStateManager:Lcom/android/camera/PowerStateManager;

    invoke-virtual {v11, p0}, Lcom/android/camera/PowerStateManager;->addListener(Lcom/android/camera/PowerStateManager$PowerStateListener;)V

    .line 2465
    new-instance v11, Lcom/android/camera/PhoneStateManager;

    iget-object v12, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v11, p0, v12}, Lcom/android/camera/PhoneStateManager;-><init>(Lcom/android/camera/CameraActivity;Landroid/os/Handler;)V

    iput-object v11, p0, Lcom/android/camera/CameraActivity;->mPhoneStateManager:Lcom/android/camera/PhoneStateManager;

    .line 2466
    iget-object v11, p0, Lcom/android/camera/CameraActivity;->mPhoneStateManager:Lcom/android/camera/PhoneStateManager;

    invoke-virtual {v11, p0}, Lcom/android/camera/PhoneStateManager;->addListener(Lcom/android/camera/PhoneStateManager$PhoneStateChangeListener;)V

    .line 2467
    const-string v11, "Init Manager"

    invoke-interface {v7, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2469
    invoke-interface {v7}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 2470
    iget-object v11, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v11}, Lcom/android/camera/app/CameraAppUI;->prepareModuleUI()V

    .line 2471
    const-string v11, "Init Current Module UI"

    invoke-interface {v7, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2475
    new-instance v11, Lcom/android/camera/CameraActivity$17;

    invoke-direct {v11, p0}, Lcom/android/camera/CameraActivity$17;-><init>(Lcom/android/camera/CameraActivity;)V

    sget-object v12, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Void;

    .line 2490
    invoke-virtual {v11, v12, v13}, Lcom/android/camera/CameraActivity$17;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2492
    invoke-interface {v7}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 2493
    iget-object v11, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v12

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v13

    invoke-virtual {v11, p0, v12, v13}, Lcom/android/camera/CameraModule;->init(Lcom/android/camera/CameraActivity;ZZ)V

    .line 2494
    const-string v11, "Init CurrentModule"

    invoke-interface {v7, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2496
    iget-boolean v11, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v11, :cond_5

    .line 2499
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    .line 2500
    .local v10, "win":Landroid/view/Window;
    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 2501
    .local v6, "params":Landroid/view/WindowManager$LayoutParams;
    iget v11, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v12, 0x80000

    or-int/2addr v11, v12

    iput v11, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2502
    invoke-virtual {v10, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2506
    new-instance v4, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.SCREEN_OFF"

    invoke-direct {v4, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2507
    .local v4, "filter_screen_off":Landroid/content/IntentFilter;
    iget-object v11, p0, Lcom/android/camera/CameraActivity;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v11, v4}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2514
    new-instance v5, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.USER_PRESENT"

    invoke-direct {v5, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2515
    .local v5, "filter_user_unlock":Landroid/content/IntentFilter;
    iget-object v11, p0, Lcom/android/camera/CameraActivity;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v11, v5}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2518
    new-instance v3, Landroid/content/IntentFilter;

    const-string v11, "com.evenwell.camera2.RESET_CAEMRA_SETTING"

    invoke-direct {v3, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2519
    .local v3, "filter_factory_reset":Landroid/content/IntentFilter;
    iget-object v11, p0, Lcom/android/camera/CameraActivity;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v11, v3}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2531
    .end local v3    # "filter_factory_reset":Landroid/content/IntentFilter;
    .end local v4    # "filter_screen_off":Landroid/content/IntentFilter;
    .end local v5    # "filter_user_unlock":Landroid/content/IntentFilter;
    .end local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v10    # "win":Landroid/view/Window;
    :cond_5
    invoke-interface {v7}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    goto/16 :goto_0

    .line 2434
    .end local v9    # "timeout":Z
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method public onDestroyTasks()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3542
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onDestroyTasks"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3543
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v0, :cond_0

    .line 3544
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3548
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    .line 3550
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mActivityLifetime:Lcom/android/camera/async/Lifetime;

    if-eqz v0, :cond_1

    .line 3551
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mActivityLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/android/camera/async/Lifetime;->close()V

    .line 3552
    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mActivityLifetime:Lcom/android/camera/async/Lifetime;

    .line 3555
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3556
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/settings/SettingsManager;->removeAllListeners()V

    .line 3558
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3559
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraController;->removeCallbackReceiver()V

    .line 3560
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraController;->setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V

    .line 3562
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getOneCameraController()Lcom/android/camera/app/OneCameraController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3563
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getOneCameraController()Lcom/android/camera/app/OneCameraController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/OneCameraController;->setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V

    .line 3564
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getOneCameraController()Lcom/android/camera/app/OneCameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/OneCameraController;->destroy()V

    .line 3565
    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mOneCameraController:Lcom/android/camera/app/OneCameraController;

    .line 3567
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/FilmstripContentObserver;

    if-eqz v0, :cond_5

    .line 3568
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/FilmstripContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3570
    :cond_5
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/FilmstripContentObserver;

    if-eqz v0, :cond_6

    .line 3571
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/FilmstripContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3573
    :cond_6
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    if-eqz v0, :cond_7

    .line 3574
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSessionManager;->removeSessionListener(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 3576
    :cond_7
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v0, :cond_8

    .line 3577
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/CameraModule;->destroy()V

    .line 3578
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->clearModuleUI()V

    .line 3579
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    .line 3581
    :cond_8
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_9

    .line 3582
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/camera/SoundPlayer;->release()V

    .line 3583
    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 3585
    :cond_9
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    if-eqz v0, :cond_a

    .line 3586
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->onDestroy()V

    .line 3591
    :cond_a
    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraController:Lcom/android/camera/app/CameraController;

    .line 3592
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPowerStateManager:Lcom/android/camera/PowerStateManager;

    if-eqz v0, :cond_b

    .line 3593
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPowerStateManager:Lcom/android/camera/PowerStateManager;

    invoke-virtual {v0}, Lcom/android/camera/PowerStateManager;->removeAllListener()V

    .line 3594
    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mPowerStateManager:Lcom/android/camera/PowerStateManager;

    .line 3596
    :cond_b
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPhoneStateManager:Lcom/android/camera/PhoneStateManager;

    if-eqz v0, :cond_c

    .line 3597
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPhoneStateManager:Lcom/android/camera/PhoneStateManager;

    invoke-virtual {v0}, Lcom/android/camera/PhoneStateManager;->removeAllListener()V

    .line 3598
    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mPhoneStateManager:Lcom/android/camera/PhoneStateManager;

    .line 3600
    :cond_c
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStorageStateManager:Lcom/android/camera/StorageStateManager;

    if-eqz v0, :cond_d

    .line 3601
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStorageStateManager:Lcom/android/camera/StorageStateManager;

    invoke-virtual {v0}, Lcom/android/camera/StorageStateManager;->removeAllListener()V

    .line 3602
    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mStorageStateManager:Lcom/android/camera/StorageStateManager;

    .line 3605
    :cond_d
    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 3606
    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mOrientationManager:Lcom/android/camera/app/OrientationManagerImpl;

    .line 3607
    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mWatermarkManager:Lcom/android/camera/WatermarkManager;

    .line 3608
    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mSceneRecognitionManager:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .line 3609
    invoke-static {}, Lcom/android/camera/watermark/WatermarkImageSaver;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3610
    invoke-static {}, Lcom/android/camera/watermark/WatermarkImageSaver;->getInstance()Lcom/android/camera/watermark/WatermarkImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/watermark/WatermarkImageSaver;->finish()V

    .line 3612
    :cond_e
    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mEffectChooseManager:Lcom/android/camera/effect/EffectChooseManager;

    .line 3613
    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mButtonManager:Lcom/android/camera/ButtonManager;

    .line 3614
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->recycle(Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)V

    .line 3615
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->AUTO:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->recycle(Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)V

    .line 3616
    return-void
.end method

.method public onDeviceOpenFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 649
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera open failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onCameraOpenFailure()V

    .line 651
    return-void
.end method

.method public onDeviceOpenedAlready(ILjava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 655
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera open already: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 657
    return-void
.end method

.method public onDialogShowed(Landroid/app/AlertDialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 4797
    if-nez p1, :cond_0

    .line 4799
    :goto_0
    return-void

    .line 4798
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mShowingDialogList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onFilmStripReady()V
    .locals 5

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 815
    :goto_0
    return-void

    .line 730
    :cond_0
    sget-object v2, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "onFilmStripReady"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 731
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "onFilmStripReady"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 732
    .local v1, "profile":Lcom/android/camera/stats/profiler/Profile;
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater;

    invoke-direct {v0, p0}, Landroid/support/v4/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 734
    .local v0, "asyncLayoutInflater":Landroid/support/v4/view/AsyncLayoutInflater;
    new-instance v2, Lcom/android/camera/CameraActivity$7;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/camera/CameraActivity$7;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/stats/profiler/Profile;Landroid/support/v4/view/AsyncLayoutInflater;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    .line 814
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/CameraActivity$7;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onFirstPreviewArrived()V
    .locals 3

    .prologue
    .line 4964
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    if-eqz v1, :cond_1

    .line 4976
    :cond_0
    :goto_0
    return-void

    .line 4965
    :cond_1
    sget-object v1, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onFirstPreviewArrived"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 4967
    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil;->USE_GOOGLE_LENS:Z

    if-eqz v1, :cond_2

    .line 4968
    new-instance v0, Lcom/google/lens/sdk/LensApi;

    invoke-direct {v0, p0}, Lcom/google/lens/sdk/LensApi;-><init>(Landroid/content/Context;)V

    .line 4969
    .local v0, "lens":Lcom/google/lens/sdk/LensApi;
    invoke-virtual {v0, p0}, Lcom/google/lens/sdk/LensApi;->checkLensAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V

    .line 4973
    .end local v0    # "lens":Lcom/google/lens/sdk/LensApi;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mDoResumeDelayTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 4974
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mDoResumeDelayTask:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 3660
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mFilmstripVisible:Z

    if-nez v1, :cond_3

    .line 3661
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/CameraModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3673
    :cond_0
    :goto_0
    return v0

    .line 3665
    :cond_1
    const/16 v1, 0x54

    if-eq p1, v1, :cond_2

    const/16 v1, 0x52

    if-ne p1, v1, :cond_3

    .line 3667
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3673
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/camera/util/QuickActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 3646
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mFilmstripVisible:Z

    if-nez v1, :cond_2

    .line 3647
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/CameraModule;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3648
    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    .line 3650
    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->longPress:Z

    .line 3655
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/util/QuickActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x16

    const/16 v4, 0x15

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3678
    iget-boolean v3, p0, Lcom/android/camera/CameraActivity;->mFilmstripVisible:Z

    if-nez v3, :cond_5

    .line 3681
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/CameraModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3682
    const/16 v3, 0x19

    if-eq p1, v3, :cond_0

    const/16 v3, 0x18

    if-ne p1, v3, :cond_1

    .line 3684
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->longPress:Z

    .line 3711
    :cond_1
    :goto_0
    return v1

    .line 3687
    :cond_2
    const/16 v2, 0x52

    if-eq p1, v2, :cond_3

    if-ne p1, v4, :cond_4

    .line 3690
    :cond_3
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->openModeList()V

    goto :goto_0

    .line 3692
    :cond_4
    if-ne p1, v5, :cond_9

    .line 3693
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->showFilmstrip()V

    goto :goto_0

    .line 3697
    :cond_5
    if-ne p1, v5, :cond_7

    .line 3698
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mFilmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    if-nez v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 3699
    :cond_6
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mFilmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    invoke-interface {v2}, Lcom/android/camera/filmstrip/FilmstripController;->goToNextItem()Z

    goto :goto_0

    .line 3701
    :cond_7
    if-ne p1, v4, :cond_9

    .line 3702
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mFilmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    if-nez v3, :cond_8

    move v1, v2

    goto :goto_0

    .line 3703
    :cond_8
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mFilmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    invoke-interface {v2}, Lcom/android/camera/filmstrip/FilmstripController;->goToPreviousItem()Z

    move-result v0

    .line 3704
    .local v0, "wentToPrevious":Z
    if-nez v0, :cond_1

    .line 3706
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->hideFilmstrip()V

    goto :goto_0

    .line 3711
    .end local v0    # "wentToPrevious":Z
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/camera/util/QuickActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onLocationSelected(DD)V
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 4053
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/camera/watermark/WatermarkLocationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4054
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "LATITUDE"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 4055
    const-string v1, "LONGITUDE"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 4056
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v1, :cond_0

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4057
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4059
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    iput-boolean v1, p0, Lcom/android/camera/CameraActivity;->mKeepAliveInSecure:Z

    .line 4060
    return-void
.end method

.method public onModeListViewReady()V
    .locals 0

    .prologue
    .line 884
    return-void
.end method

.method public onModeSelected(I)V
    .locals 12
    .param p1, "modeIndex"    # I

    .prologue
    const v10, 0x7f0b000f

    const/4 v5, 0x0

    .line 3938
    iget v7, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    if-ne v7, p1, :cond_0

    .line 3939
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v9}, Lcom/android/camera/app/CameraAppUI;->getIsHideFlash()Z

    move-result v9

    invoke-virtual {v7, v8, v5, v9}, Lcom/android/camera/app/CameraAppUI;->animateTopButton(ZZZ)V

    .line 4026
    :goto_0
    return-void

    .line 3942
    :cond_0
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v7

    const-string v8, "onModeSelected"

    invoke-virtual {v7, v8}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    .line 3944
    .local v2, "guard":Lcom/android/camera/stats/profiler/Profile;
    sget-object v7, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onModeSelected = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3945
    const/4 v7, 0x3

    invoke-static {v7}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 3947
    invoke-static {}, Lcom/android/camera/cpuboost/CpuBooster;->instance()Lcom/android/camera/cpuboost/BoostEngine;

    move-result-object v7

    const/16 v8, 0x7d0

    invoke-virtual {v7, v8}, Lcom/android/camera/cpuboost/BoostEngine;->boostInTime(I)Z

    .line 3948
    const-string v7, "boost done"

    invoke-interface {v2, v7}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3951
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    if-eq p1, v7, :cond_1

    .line 3952
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    if-ne p1, v7, :cond_2

    .line 3953
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v7

    const-string v8, "default_scope"

    const-string v9, "pref_camera_module_last_used_index"

    invoke-virtual {v7, v8, v9, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3956
    const-string v7, "set KEY_CAMERA_MODULE_LAST_USED"

    invoke-interface {v2, v7}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3959
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    if-eq p1, v7, :cond_3

    .line 3960
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0017

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    if-ne p1, v7, :cond_4

    .line 3961
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v7

    const-string v8, "default_scope"

    const-string v9, "pref_camera_screen_key"

    invoke-virtual {v7, v8, v9}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 3962
    const-string v7, "setToDefault KEY_CAMERA_SCREEN"

    invoke-interface {v2, v7}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3965
    :cond_4
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {v7, p0}, Lcom/android/camera/CameraModule;->useLogicCamera(Lcom/android/camera/app/AppController;)Z

    move-result v5

    .line 3966
    .local v5, "useLogicCamBefore":Z
    :cond_5
    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 3967
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-direct {p0, v7}, Lcom/android/camera/CameraActivity;->closeModule(Lcom/android/camera/CameraModule;)V

    .line 3968
    const-string v7, "closeModule"

    invoke-interface {v2, v7}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3971
    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 3972
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity;->getPreferredChildModeIndex(I)I

    move-result p1

    .line 3973
    const-string v7, "getPreferredChildModeIndex"

    invoke-interface {v2, v7}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3974
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->setModuleFromModeIndex(I)V

    .line 3975
    const-string v7, "setModuleFromModeIndex"

    invoke-interface {v2, v7}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3977
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {v7, p0}, Lcom/android/camera/CameraModule;->useLogicCamera(Lcom/android/camera/app/AppController;)Z

    move-result v6

    .line 3979
    .local v6, "useLogicCamNow":Z
    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 3980
    const-string v7, "PhotoModule"

    invoke-static {v7}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3981
    .local v3, "moduleScope":Ljava/lang/String;
    const-string v7, "getModuleScope"

    invoke-interface {v2, v7}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3983
    if-eq v5, v6, :cond_8

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isHAL3Enabled()Z

    move-result v7

    if-nez v7, :cond_8

    .line 3984
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v8, "Reset KEY_CAMERA_ID"

    invoke-interface {v7, v8}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v4

    .line 3985
    .local v4, "profile":Lcom/android/camera/stats/profiler/Profile;
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v7

    const-string v8, "pref_camera_id_key"

    invoke-virtual {v7, v3, v8}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3987
    .local v0, "currentCameraId":Ljava/lang/String;
    sget-object v7, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentCameraId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3988
    if-eqz v6, :cond_7

    .line 3989
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v7

    const-string v8, "pref_camera_id_key"

    const v9, 0x7f0803eb

    .line 3990
    invoke-virtual {p0, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3991
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d000b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 3989
    invoke-virtual {v7, v8, v9, v10}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3998
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v7

    const-string v8, "pref_camera_id_key"

    invoke-virtual {v7, v3, v8, v0}, Lcom/android/camera/settings/SettingsManager;->isPossibleValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 3999
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v7

    const-string v8, "pref_camera_id_key"

    invoke-virtual {v7, v3, v8}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 4000
    sget-object v7, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not possible camera id, reset to default : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v9

    const-string v10, "pref_camera_id_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/settings/SettingsManager;->getStringDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 4002
    :cond_6
    invoke-interface {v4}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 4013
    .end local v0    # "currentCameraId":Ljava/lang/String;
    .end local v4    # "profile":Lcom/android/camera/stats/profiler/Profile;
    :goto_2
    const-string v7, "reset camera id done"

    invoke-interface {v2, v7}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 4015
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    iget-object v8, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {v7, v8, p1}, Lcom/android/camera/app/CameraAppUI;->resetBottomControls(Lcom/android/camera/module/ModuleController;I)V

    .line 4016
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    iget-object v8, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {v7, v8}, Lcom/android/camera/app/CameraAppUI;->addShutterListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 4017
    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 4018
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-direct {p0, v7}, Lcom/android/camera/CameraActivity;->openModule(Lcom/android/camera/CameraModule;)V

    .line 4019
    const-string v7, "openModule"

    invoke-interface {v2, v7}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 4022
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v7

    const-string v8, "default_scope"

    const-string v9, "camera.startup_module"

    invoke-virtual {v7, v8, v9, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4024
    const-string v7, "set KEY_STARTUP_MODULE_INDEX"

    invoke-interface {v2, v7}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 4025
    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    goto/16 :goto_0

    .line 3993
    .restart local v0    # "currentCameraId":Ljava/lang/String;
    .restart local v4    # "profile":Lcom/android/camera/stats/profiler/Profile;
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v7

    const-string v8, "pref_camera_id_key"

    const v9, 0x7f080301

    .line 3994
    invoke-virtual {p0, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3995
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0010

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 3993
    invoke-virtual {v7, v8, v9, v10}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4006
    .end local v0    # "currentCameraId":Ljava/lang/String;
    .end local v4    # "profile":Lcom/android/camera/stats/profiler/Profile;
    :cond_8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getModuleScope()Ljava/lang/String;

    move-result-object v8

    const-string v9, "pref_camera_id_key"

    invoke-virtual {v7, v8, v9}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 4008
    :catch_0
    move-exception v1

    .line 4009
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getModuleScope()Ljava/lang/String;

    move-result-object v8

    const-string v9, "pref_camera_id_key"

    invoke-virtual {v7, v8, v9}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 4010
    sget-object v7, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not possible camera id, reset to default : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v9

    const-string v10, "pref_camera_id_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/settings/SettingsManager;->getStringDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onNewIntentTasks(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2264
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->getModeIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->onModeSelected(I)V

    .line 2265
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2162
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 2176
    invoke-super {p0, p1}, Lcom/android/camera/util/QuickActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 2164
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->onBackPressed()V

    move v0, v1

    .line 2165
    goto :goto_0

    .line 2167
    :sswitch_1
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mFilmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    if-eqz v2, :cond_0

    .line 2168
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    if-eqz v2, :cond_0

    .line 2169
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mFilmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripController;->getCurrentAdapterIndex()I

    move-result v0

    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/CameraActivity;->showDetailsDialog(I)V

    move v0, v1

    .line 2170
    goto :goto_0

    .line 2169
    :cond_2
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v2}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    .line 2173
    :sswitch_2
    new-instance v0, Lcom/android/camera/util/GoogleHelpHelper;

    invoke-direct {v0, p0}, Lcom/android/camera/util/GoogleHelpHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/android/camera/util/GoogleHelpHelper;->launchGoogleHelp()V

    move v0, v1

    .line 2174
    goto :goto_0

    .line 2162
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0f024a -> :sswitch_1
        0x7f0f024b -> :sswitch_2
    .end sparse-switch
.end method

.method public onOrientationChanged(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)V
    .locals 4
    .param p1, "orientationManager"    # Lcom/android/camera/app/OrientationManager;
    .param p2, "orientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .prologue
    const/4 v3, 0x1

    .line 690
    iget v0, p0, Lcom/android/camera/CameraActivity;->mOrientationCompensation:I

    invoke-virtual {p2}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 691
    invoke-virtual {p2}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v0

    iput v0, p0, Lcom/android/camera/CameraActivity;->mOrientationCompensation:I

    .line 692
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged - mOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/CameraActivity;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mOrientationCompensation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/CameraActivity;->mOrientationCompensation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/CameraActivity;->mOrientationCompensation:I

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/app/CameraAppUI;->setOrientation(IZ)V

    .line 694
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    iget v1, p0, Lcom/android/camera/CameraActivity;->mOrientationCompensation:I

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/CameraModule;->setOrientation(IZ)V

    .line 696
    :cond_0
    return-void
.end method

.method public onPauseTasks()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2702
    invoke-static {v7}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 2704
    iput-boolean v7, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    .line 2705
    iput-boolean v6, p0, Lcom/android/camera/CameraActivity;->mLeavingCamera:Z

    .line 2706
    iget-boolean v2, p0, Lcom/android/camera/CameraActivity;->mHasCriticalPermissions:Z

    if-nez v2, :cond_0

    .line 2707
    sget-object v2, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "onPauseTasks: Missing critical permissions."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2839
    :goto_0
    return-void

    .line 2711
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "CameraActivity.onPause"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 2713
    .local v1, "profile":Lcom/android/camera/stats/profiler/Profile;
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mDoResumeDelayTask:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 2714
    iput-object v8, p0, Lcom/android/camera/CameraActivity;->mDoResumeDelayTask:Ljava/lang/Runnable;

    .line 2723
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2724
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "camera.startup_module"

    iget v5, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2728
    :cond_2
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "PhotoModule"

    invoke-static {v3}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/CameraActivity;->mCurrentCmaeraId:I

    .line 2729
    iput-boolean v6, p0, Lcom/android/camera/CameraActivity;->mIsLaunchFromCreate:Z

    .line 2730
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->hideCaptureIndicator()V

    .line 2731
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mFirstRunDialog:Lcom/android/camera/app/FirstRunDialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mFirstRunDialog:Lcom/android/camera/app/FirstRunDialog;

    invoke-virtual {v2}, Lcom/android/camera/app/FirstRunDialog;->dismiss()V

    .line 2733
    :cond_3
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mShowingDialogList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 2734
    .local v0, "dialog":Landroid/app/AlertDialog;
    if-eqz v0, :cond_4

    .line 2735
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1

    .line 2738
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_5
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mShowingDialogList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2740
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v2, :cond_6

    .line 2741
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v2}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 2742
    iput-object v8, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 2745
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v2, v6}, Lcom/android/camera/app/CameraAppUI;->setDisableAllUserInteractions(Z)V

    .line 2748
    :cond_6
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceCheckTask:Landroid/os/AsyncTask;

    if-eqz v2, :cond_7

    .line 2749
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceCheckTask:Landroid/os/AsyncTask;

    invoke-virtual {v2, v7}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 2750
    iput-object v8, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceCheckTask:Landroid/os/AsyncTask;

    .line 2754
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->performDeletion()V

    .line 2755
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 2756
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/CameraModule;->pause()V

    .line 2757
    const-string v2, "mCurrentModule.pause()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2758
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->pause()V

    .line 2759
    const-string v2, "mCameraAppUI.pause()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2761
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mOrientationManager:Lcom/android/camera/app/OrientationManagerImpl;

    invoke-virtual {v2, p0}, Lcom/android/camera/app/OrientationManagerImpl;->removeOnOrientationChangeListener(Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;)V

    .line 2762
    const-string v2, "removeOnOrientationChangeListener"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2764
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mOrientationManager:Lcom/android/camera/app/OrientationManagerImpl;

    invoke-virtual {v2}, Lcom/android/camera/app/OrientationManagerImpl;->pause()V

    .line 2765
    const-string v2, "mOrientationManager.pause()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2766
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mPowerStateManager:Lcom/android/camera/PowerStateManager;

    invoke-virtual {v2}, Lcom/android/camera/PowerStateManager;->pause()V

    .line 2767
    const-string v2, "mPowerStateManager.pause()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2768
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mPhoneStateManager:Lcom/android/camera/PhoneStateManager;

    invoke-virtual {v2}, Lcom/android/camera/PhoneStateManager;->pause()V

    .line 2769
    const-string v2, "mPhoneStateManager.pause()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2770
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mStorageStateManager:Lcom/android/camera/StorageStateManager;

    if-eqz v2, :cond_8

    .line 2771
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mStorageStateManager:Lcom/android/camera/StorageStateManager;

    invoke-virtual {v2}, Lcom/android/camera/StorageStateManager;->pause()V

    .line 2772
    const-string v2, "mStorageStateManager.pause()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2775
    :cond_8
    iput-boolean v6, p0, Lcom/android/camera/CameraActivity;->mNeedRegistedObserver:Z

    .line 2776
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/FilmstripContentObserver;

    if-eqz v2, :cond_9

    .line 2777
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/FilmstripContentObserver;

    invoke-virtual {v2, v8}, Lcom/android/camera/data/FilmstripContentObserver;->setForegroundChangeListener(Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;)V

    .line 2778
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/FilmstripContentObserver;

    invoke-virtual {v2, v7}, Lcom/android/camera/data/FilmstripContentObserver;->setActivityPaused(Z)V

    .line 2779
    const-string v2, "mLocalImagesObserver.setActivityPaused()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2781
    :cond_9
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/FilmstripContentObserver;

    if-eqz v2, :cond_a

    .line 2782
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/FilmstripContentObserver;

    invoke-virtual {v2, v8}, Lcom/android/camera/data/FilmstripContentObserver;->setForegroundChangeListener(Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;)V

    .line 2783
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/FilmstripContentObserver;

    invoke-virtual {v2, v7}, Lcom/android/camera/data/FilmstripContentObserver;->setActivityPaused(Z)V

    .line 2784
    const-string v2, "mLocalVideosObserver.setActivityPaused()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2786
    :cond_a
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mPreloader:Lcom/android/camera/widget/Preloader;

    if-eqz v2, :cond_b

    .line 2787
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mPreloader:Lcom/android/camera/widget/Preloader;

    invoke-virtual {v2}, Lcom/android/camera/widget/Preloader;->cancelAllLoads()V

    .line 2788
    const-string v2, "mPreloader.cancelAllLoads()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2790
    :cond_b
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->resetScreenOn()V

    .line 2791
    const-string v2, "resetScreenOn"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2792
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->resetBrightnessLevel()V

    .line 2793
    const-string v2, "resetBrightnessLevel"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2798
    invoke-virtual {p0, v6}, Lcom/android/camera/CameraActivity;->stopFlashAnimationAfterTakePicture(Z)V

    .line 2799
    const-string v2, "stopFlashAnimationAfterTakePicture"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2802
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mLocationManager:Lcom/android/camera/app/LocationManager;

    invoke-virtual {v2, v6}, Lcom/android/camera/app/LocationManager;->recordLocation(Z)V

    .line 2803
    const-string v2, "mLocationManager.recordLocation(false)"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2805
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/stats/UsageStatistics;->backgrounded()V

    .line 2809
    iget-boolean v2, p0, Lcom/android/camera/CameraActivity;->mCameraFatalError:Z

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_d

    .line 2810
    sget-object v2, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "onPause when camera is in fatal state, call Activity.finish()"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2811
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 2832
    :goto_2
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/GoogleAssistantManager;->isCheckingAccount()Z

    move-result v2

    if-nez v2, :cond_c

    .line 2833
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/GoogleAssistantManager;->finishOperation()V

    .line 2834
    const-string v2, "GoogleAssistantManager finishOperation"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2838
    :cond_c
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    goto/16 :goto_0

    .line 2814
    :cond_d
    sget-object v2, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "onPause closing camera"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2815
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 2816
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 2817
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/camera/app/CameraController;->closeCamera(Z)V

    .line 2820
    :cond_e
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getOneCameraController()Lcom/android/camera/app/OneCameraController;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 2821
    iget-boolean v2, p0, Lcom/android/camera/CameraActivity;->mLeavingForReviewingPicture:Z

    if-eqz v2, :cond_10

    .line 2822
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mDelayCloseCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 2827
    :cond_f
    :goto_3
    iput-boolean v6, p0, Lcom/android/camera/CameraActivity;->mLeavingForReviewingPicture:Z

    .line 2828
    const-string v2, "closeCamera done"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    goto :goto_2

    .line 2824
    :cond_10
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getOneCameraController()Lcom/android/camera/app/OneCameraController;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/camera/app/OneCameraController;->closeCamera(Z)V

    goto :goto_3
.end method

.method public onPhoneStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    if-eqz v0, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraModule;->onPhoneStateChange(I)V

    goto :goto_0
.end method

.method public onPowerStateChanged(Z)V
    .locals 6
    .param p1, "isLowPower"    # Z

    .prologue
    const v5, 0x7f080300

    .line 667
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    if-eqz v1, :cond_0

    .line 678
    :goto_0
    return-void

    .line 668
    :cond_0
    if-eqz p1, :cond_1

    .line 669
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 670
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getAllCameraScopeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 671
    .local v0, "cameraScope":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "pref_camera_flashmode_key"

    invoke-virtual {p0, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "pref_camera_video_flashmode_key"

    invoke-virtual {p0, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 676
    .end local v0    # "cameraScope":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {v1, p1}, Lcom/android/camera/CameraModule;->onPowerStateChange(Z)V

    .line 677
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->applyPowerState()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3755
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLOrHigher()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3758
    const v0, 0x7f0f024b

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 3761
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/util/QuickActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreviewReadyToStart()V
    .locals 1

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->onPreviewReadyToStart()V

    .line 1767
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->onPreviewStarted()V

    .line 1772
    return-void
.end method

.method public onReconnectionFailure(Lcom/android/ex/camera2/portability/CameraAgent;Ljava/lang/String;)V
    .locals 3
    .param p1, "mgr"    # Lcom/android/ex/camera2/portability/CameraAgent;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 661
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera reconnection failure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onCameraReconnectFailure()V

    .line 663
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 4896
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/CameraModule;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 4897
    :cond_0
    return-void
.end method

.method public onResumeTasks()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 2843
    iput-boolean v6, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    .line 2844
    iput-boolean v6, p0, Lcom/android/camera/CameraActivity;->mKeepAliveInSecure:Z

    .line 2845
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2846
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mDelayCloseCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2848
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mHasAquirePermissions:Z

    if-nez v0, :cond_1

    .line 2849
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->checkPermissions()V

    .line 2851
    :cond_1
    iput-boolean v6, p0, Lcom/android/camera/CameraActivity;->mHasAquirePermissions:Z

    .line 2852
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mHasCriticalPermissions:Z

    if-nez v0, :cond_2

    .line 2853
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onResume: Missing critical permissions."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2905
    :goto_0
    return-void

    .line 2856
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-nez v0, :cond_6

    .line 2857
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFirstRunDialog:Lcom/android/camera/app/FirstRunDialog;

    if-nez v0, :cond_5

    .line 2858
    new-instance v0, Lcom/android/camera/app/FirstRunDialog;

    .line 2859
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    .line 2860
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v3

    .line 2861
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    .line 2862
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v5

    .line 2863
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->isVideoCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v6, 0x1

    :cond_4
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/camera/CameraActivity$18;

    invoke-direct {v8, p0}, Lcom/android/camera/CameraActivity$18;-><init>(Lcom/android/camera/CameraActivity;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/app/FirstRunDialog;-><init>(Lcom/android/camera/app/AppController;Landroid/content/Context;Lcom/android/camera/settings/ResolutionSetting;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/one/OneCameraManager;ZLandroid/os/Handler;Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mFirstRunDialog:Lcom/android/camera/app/FirstRunDialog;

    .line 2894
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFirstRunDialog:Lcom/android/camera/app/FirstRunDialog;

    invoke-virtual {v0}, Lcom/android/camera/app/FirstRunDialog;->showIfNecessary()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2895
    :catch_0
    move-exception v9

    .line 2896
    .local v9, "e":Ljava/lang/AssertionError;
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Creating camera controller failed."

    invoke-static {v0, v1, v9}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2897
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_0

    .line 2902
    .end local v9    # "e":Ljava/lang/AssertionError;
    :cond_6
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "in secure mode, skipping first run dialog check"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2903
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->resume()V

    goto :goto_0
.end method

.method public onSettingsSelected(Ljava/lang/String;)V
    .locals 3
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 4033
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mLeavingCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    if-eqz v1, :cond_1

    .line 4046
    :cond_0
    :goto_0
    return-void

    .line 4034
    :cond_1
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/UsageStatistics;->controlUsed(I)V

    .line 4036
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/camera/settings/CameraSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4037
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v1, :cond_2

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4039
    :cond_2
    const-string v1, "modeSelected"

    iget v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4040
    if-eqz p1, :cond_3

    .line 4041
    const-string v1, "pref_screen_extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4043
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 4044
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/CameraActivity;->mLeavingCamera:Z

    .line 4045
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    iput-boolean v1, p0, Lcom/android/camera/CameraActivity;->mKeepAliveInSecure:Z

    goto :goto_0
.end method

.method public onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 5
    .param p1, "shareActionProvider"    # Landroid/widget/ShareActionProvider;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x2710

    const/4 v1, 0x0

    .line 1248
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mFilmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    if-nez v2, :cond_1

    .line 1257
    :cond_0
    :goto_0
    return v1

    .line 1249
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mFilmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    invoke-interface {v2}, Lcom/android/camera/filmstrip/FilmstripController;->getCurrentAdapterIndex()I

    move-result v0

    .line 1250
    .local v0, "currentIndex":I
    if-ltz v0, :cond_0

    .line 1253
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/camera/CameraActivity;->fileNameFromAdapterAtIndex(I)Ljava/lang/String;

    move-result-object v2

    .line 1255
    invoke-direct {p0, v0}, Lcom/android/camera/CameraActivity;->fileAgeFromAdapterAtIndex(I)F

    move-result v3

    .line 1253
    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/android/camera/stats/UsageStatistics;->mediaInteraction(Ljava/lang/String;IIF)V

    .line 1257
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onStartTasks()V
    .locals 4

    .prologue
    .line 3487
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mIsActivityRunning:Z

    .line 3488
    iget-boolean v2, p0, Lcom/android/camera/CameraActivity;->mHasCriticalPermissions:Z

    if-nez v2, :cond_0

    .line 3489
    sget-object v2, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "onStartTasks: Missing critical permissions."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3513
    :goto_0
    return-void

    .line 3492
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "CameraActivity.onStartTasks"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 3504
    .local v1, "profile":Lcom/android/camera/stats/profiler/Profile;
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 3505
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->getModeIndex()I

    move-result v0

    .line 3506
    .local v0, "modeIndex":I
    const-string v2, "getModeIndex"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3507
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModeIndex:I

    if-eq v2, v0, :cond_1

    .line 3508
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 3509
    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->onModeSelected(I)V

    .line 3510
    const-string v2, "onModeSelected"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3512
    :cond_1
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    goto :goto_0
.end method

.method protected onStopTasks()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mIsActivityRunning:Z

    .line 3518
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mHasCriticalPermissions:Z

    if-nez v0, :cond_0

    .line 3519
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onStopTasks: Missing critical permissions."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3538
    :goto_0
    return-void

    .line 3523
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3524
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraController;->hasCameraWarmUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3525
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onStopTasks - closing warmup camera"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3526
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraController;->closeCamera(Z)V

    .line 3530
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getOneCameraController()Lcom/android/camera/app/OneCameraController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3531
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getOneCameraController()Lcom/android/camera/app/OneCameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/OneCameraController;->hasCameraWarmUp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3532
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onStopTasks - closing warmup OneCamera"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3533
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getOneCameraController()Lcom/android/camera/app/OneCameraController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/OneCameraController;->closeCamera(Z)V

    .line 3537
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mLocationManager:Lcom/android/camera/app/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->disconnect()V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 2679
    invoke-super {p0}, Lcom/android/camera/util/QuickActivity;->onUserInteraction()V

    .line 2680
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2681
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->keepScreenOnForAWhile()V

    .line 2683
    :cond_0
    return-void
.end method

.method public removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->removePreviewAreaChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1784
    return-void
.end method

.method public requireUpdateStorageSpaceAndHint()V
    .locals 1

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    if-eqz v0, :cond_0

    .line 702
    :goto_0
    return-void

    .line 701
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    goto :goto_0
.end method

.method public requireUpdateThumbnail()V
    .locals 6

    .prologue
    .line 706
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    if-eqz v0, :cond_1

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    if-eqz v0, :cond_0

    .line 708
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "requireUpdateThumbnail"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 709
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mFilmstripVisible:Z

    if-nez v0, :cond_2

    .line 710
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    new-instance v1, Lcom/android/camera/CameraActivity$5;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraActivity$5;-><init>(Lcom/android/camera/CameraActivity;)V

    iget-boolean v2, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    iget-wide v4, p0, Lcom/android/camera/CameraActivity;->mOnCreateTime:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->requestLoad(Lcom/android/camera/util/Callback;ZJ)V

    goto :goto_0

    .line 718
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    new-instance v1, Lcom/android/camera/CameraActivity$6;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraActivity$6;-><init>(Lcom/android/camera/CameraActivity;)V

    iget-boolean v2, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    iget-wide v4, p0, Lcom/android/camera/CameraActivity;->mOnCreateTime:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->requestLoadNewMidia(Lcom/android/camera/util/Callback;ZJ)V

    goto :goto_0
.end method

.method public setBrightnessLevel(F)V
    .locals 4
    .param p1, "brightness_level"    # F

    .prologue
    .line 1917
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 1922
    :goto_0
    return-void

    .line 1918
    :cond_0
    sget-object v1, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBrightnessLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1919
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1920
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1921
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public setLastModuleId(I)V
    .locals 1
    .param p1, "currentModuleId"    # I

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mModuleManager:Lcom/android/camera/app/ModuleManagerImpl;

    invoke-virtual {v0, p1}, Lcom/android/camera/app/ModuleManagerImpl;->setLastModuleId(I)V

    .line 1756
    return-void
.end method

.method public setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V
    .locals 1
    .param p1, "previewStatusListener"    # Lcom/android/camera/ui/PreviewStatusListener;

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 1827
    return-void
.end method

.method protected setResultEx(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 3892
    iput p1, p0, Lcom/android/camera/CameraActivity;->mResultCodeForTesting:I

    .line 3893
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity;->setResult(I)V

    .line 3894
    return-void
.end method

.method protected setResultEx(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 3897
    iput p1, p0, Lcom/android/camera/CameraActivity;->mResultCodeForTesting:I

    .line 3898
    iput-object p2, p0, Lcom/android/camera/CameraActivity;->mResultDataForTesting:Landroid/content/Intent;

    .line 3899
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 3900
    return-void
.end method

.method public setShutterEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 1842
    return-void
.end method

.method public setShutterEventsListener(Lcom/android/camera/app/AppController$ShutterEventsListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/app/AppController$ShutterEventsListener;

    .prologue
    .line 1837
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 4448
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4453
    :cond_0
    return-void
.end method

.method public setSwitchButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 1867
    return-void
.end method

.method public setThumbnailClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 4959
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->setThumbnailClickable(Z)V

    .line 4960
    return-void
.end method

.method public setVideoShutterEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->setVideoShutterButtonEnabled(Z)V

    .line 1847
    return-void
.end method

.method public setupOneShotPreviewListener()V
    .locals 3

    .prologue
    .line 1788
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1789
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/CameraActivity$12;

    invoke-direct {v2, p0}, Lcom/android/camera/CameraActivity$12;-><init>(Lcom/android/camera/CameraActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/app/CameraController;->setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V

    .line 1799
    :cond_0
    return-void
.end method

.method public showThumbnailIfAvailable()V
    .locals 4

    .prologue
    .line 3354
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3406
    :cond_0
    :goto_0
    return-void

    .line 3355
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    if-eqz v2, :cond_0

    .line 3357
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v2, v2, Lcom/android/camera/captureintent/CaptureIntentModule;

    if-nez v2, :cond_0

    .line 3358
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mFilmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mFilmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    invoke-interface {v2}, Lcom/android/camera/filmstrip/FilmstripController;->getCurrentAdapterIndex()I

    move-result v1

    .line 3359
    .local v1, "currentIndex":I
    :goto_1
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v2, v1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 3360
    .local v0, "currentFilmstripItem":Lcom/android/camera/data/FilmstripItem;
    if-eqz v0, :cond_4

    .line 3361
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/camera/CameraActivity$25;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/CameraActivity$25;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/data/FilmstripItem;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3358
    .end local v0    # "currentFilmstripItem":Lcom/android/camera/data/FilmstripItem;
    .end local v1    # "currentIndex":I
    :cond_2
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v2}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    goto :goto_1

    .line 3394
    .restart local v0    # "currentFilmstripItem":Lcom/android/camera/data/FilmstripItem;
    .restart local v1    # "currentIndex":I
    :cond_4
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->hideCaptureIndicator()V

    .line 3395
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/app/CameraAppUI;->showDefaultThumbnail(Z)V

    .line 3396
    :cond_5
    iget-boolean v2, p0, Lcom/android/camera/CameraActivity;->mLockedSecureCamera:Z

    if-eqz v2, :cond_0

    .line 3397
    new-instance v2, Lcom/android/camera/CameraActivity$26;

    invoke-direct {v2, p0}, Lcom/android/camera/CameraActivity$26;-><init>(Lcom/android/camera/CameraActivity;)V

    invoke-virtual {p0, v2}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showTutorial(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V
    .locals 8
    .param p1, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4554
    iget-boolean v5, p0, Lcom/android/camera/CameraActivity;->isTutorialShowing:Z

    if-eqz v5, :cond_1

    .line 4573
    :cond_0
    :goto_0
    return-void

    .line 4556
    :cond_1
    const/4 v2, 0x0

    .line 4557
    .local v2, "tutorial":Lcom/android/camera/ui/AbstractTutorialOverlay;
    sget-object v5, Lcom/android/camera/CameraActivity$32;->$SwitchMap$com$android$camera$one$OneCameraCaptureSetting$CaptureMode:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 4567
    :goto_1
    if-eqz v2, :cond_0

    .line 4570
    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/camera/app/CameraAppUI;->showTutorial(Lcom/android/camera/ui/AbstractTutorialOverlay;Landroid/view/LayoutInflater;)V

    .line 4572
    iput-boolean v3, p0, Lcom/android/camera/CameraActivity;->isTutorialShowing:Z

    goto :goto_0

    .line 4560
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    const-string v6, "default_scope"

    const-string v7, "pref_camera_screen_key"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 4561
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0803c4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_2

    move v0, v3

    .line 4562
    .local v0, "isHalfNHalf":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    const-string v6, "default_scope"

    const-string v7, "pref_camera_screen_pip_tutorial_shown"

    invoke-virtual {v5, v6, v7, v4}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 4563
    .local v1, "isShowed":Z
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    new-instance v2, Lcom/android/camera/ui/tutorial/DualSightTutorial;

    .end local v2    # "tutorial":Lcom/android/camera/ui/AbstractTutorialOverlay;
    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-direct {v2, p0, v4}, Lcom/android/camera/ui/tutorial/DualSightTutorial;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/ui/AbstractTutorialOverlay$CloseListener;)V

    .restart local v2    # "tutorial":Lcom/android/camera/ui/AbstractTutorialOverlay;
    :goto_3
    goto :goto_1

    .end local v0    # "isHalfNHalf":Z
    .end local v1    # "isShowed":Z
    :cond_2
    move v0, v4

    .line 4561
    goto :goto_2

    .line 4563
    .restart local v0    # "isHalfNHalf":Z
    .restart local v1    # "isShowed":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 4557
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public showUndoDeletionBar()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 4360
    iget-boolean v2, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    if-eqz v2, :cond_0

    .line 4361
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->performDeletion()V

    .line 4363
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mAboveFilmstripControlLayout:Landroid/widget/FrameLayout;

    if-nez v2, :cond_1

    .line 4405
    :goto_0
    return-void

    .line 4364
    :cond_1
    sget-object v2, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "showing undo bar"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 4365
    iput-boolean v5, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    .line 4366
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 4367
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040098

    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mAboveFilmstripControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 4369
    .local v1, "v":Landroid/view/ViewGroup;
    const v2, 0x7f0f021b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    .line 4370
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    const v3, 0x7f0f021c

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4371
    .local v0, "button":Landroid/view/View;
    new-instance v2, Lcom/android/camera/CameraActivity$29;

    invoke-direct {v2, p0}, Lcom/android/camera/CameraActivity$29;-><init>(Lcom/android/camera/CameraActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4387
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 4390
    new-instance v2, Lcom/android/camera/CameraActivity$30;

    invoke-direct {v2, p0}, Lcom/android/camera/CameraActivity$30;-><init>(Lcom/android/camera/CameraActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4402
    .end local v0    # "button":Landroid/view/View;
    .end local v1    # "v":Landroid/view/ViewGroup;
    :cond_2
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 4403
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4404
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public startFlashAnimation(Z)V
    .locals 1
    .param p1, "shortFlash"    # Z

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->startFlashAnimation(Z)V

    .line 1877
    return-void
.end method

.method public startFlashAnimation(ZLjava/lang/Runnable;)V
    .locals 1
    .param p1, "shortFlash"    # Z
    .param p2, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/app/CameraAppUI;->startFlashAnimation(ZLjava/lang/Runnable;)V

    .line 1882
    return-void
.end method

.method public startFlashAnimationBeforeTakePicture(Ljava/lang/Runnable;)Z
    .locals 5
    .param p1, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1886
    sget-object v2, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "startFlashAnimationBeforeTakePicture"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1887
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1895
    .local v0, "mode":I
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/camera/CameraActivity;->mOldlight:F

    .line 1897
    sget-object v2, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOldlight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/CameraActivity;->mOldlight:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1899
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v2, p1}, Lcom/android/camera/app/CameraAppUI;->startFlashAnimationBeforeTakePicture(Ljava/lang/Runnable;)Z

    move-result v1

    .line 1900
    .local v1, "screenFlashTriggered":Z
    if-nez v1, :cond_0

    .line 1901
    sget-object v2, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Screen Flash Triggered Fail"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1902
    const/high16 v2, -0x40000000    # -2.0f

    iput v2, p0, Lcom/android/camera/CameraActivity;->mOldlight:F

    .line 1904
    :cond_0
    return v1
.end method

.method public startPostCaptureAnimation()V
    .locals 0

    .prologue
    .line 1968
    return-void
.end method

.method public startPostCaptureAnimation(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1973
    return-void
.end method

.method public startPreCaptureAnimation()V
    .locals 0

    .prologue
    .line 1958
    return-void
.end method

.method public stopFlashAnimationAfterTakePicture(Z)V
    .locals 3
    .param p1, "needAnim"    # Z

    .prologue
    const/high16 v2, -0x40000000    # -2.0f

    .line 1909
    iget v0, p0, Lcom/android/camera/CameraActivity;->mOldlight:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 1913
    :goto_0
    return-void

    .line 1910
    :cond_0
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "stopFlashAnimationAfterTakePicture"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1911
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    iget v1, p0, Lcom/android/camera/CameraActivity;->mOldlight:F

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/app/CameraAppUI;->stopFlashAnimationAfterTakePicture(FZ)V

    .line 1912
    iput v2, p0, Lcom/android/camera/CameraActivity;->mOldlight:F

    goto :goto_0
.end method

.method public switchCamera(Z)V
    .locals 1
    .param p1, "needAnimation"    # Z

    .prologue
    .line 4988
    if-eqz p1, :cond_0

    .line 4989
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->startSwitchCameraAnimation()V

    .line 4991
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->buildModeList()V

    .line 4992
    return-void
.end method

.method public transformModuleIndexIfNeed(I)I
    .locals 6
    .param p1, "selectedIndex"    # I

    .prologue
    .line 3438
    move v2, p1

    .line 3439
    .local v2, "transformed":I
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "pref_camera_screen_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3442
    .local v0, "cameraScreen":I
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 3443
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_3

    :cond_0
    const/4 v1, 0x1

    .line 3444
    .local v1, "isPIPOn":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 3445
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 3448
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne p1, v3, :cond_2

    .line 3449
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 3452
    :cond_2
    return v2

    .line 3443
    .end local v1    # "isPIPOn":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unlockOrientation()V
    .locals 1

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mOrientationManager:Lcom/android/camera/app/OrientationManagerImpl;

    if-eqz v0, :cond_0

    .line 2003
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mOrientationManager:Lcom/android/camera/app/OrientationManagerImpl;

    invoke-virtual {v0}, Lcom/android/camera/app/OrientationManagerImpl;->unlockOrientation()V

    .line 2005
    :cond_0
    return-void
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->updatePreviewAspectRatio(F)V

    .line 1804
    return-void
.end method

.method public updatePreviewTransform(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->updatePreviewTransform(Landroid/graphics/Matrix;)V

    .line 1819
    return-void
.end method

.method public updatePreviewTransformFullscreen(Landroid/graphics/Matrix;F)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "aspectRatio"    # F

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/app/CameraAppUI;->updatePreviewTransformFullscreen(Landroid/graphics/Matrix;F)V

    .line 1809
    return-void
.end method

.method protected updateStorageHint(J)V
    .locals 5
    .param p1, "storageSpace"    # J

    .prologue
    .line 3847
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mIsActivityRunning:Z

    if-nez v1, :cond_1

    .line 3889
    :cond_0
    :goto_0
    return-void

    .line 3851
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    if-nez v1, :cond_0

    .line 3855
    const/4 v0, 0x0

    .line 3856
    .local v0, "message":Ljava/lang/String;
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-nez v1, :cond_3

    .line 3857
    const v1, 0x7f080115

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3870
    :cond_2
    :goto_1
    if-eqz v0, :cond_8

    .line 3871
    sget-object v1, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Storage warning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3872
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-nez v1, :cond_7

    .line 3873
    invoke-static {p0, v0}, Lcom/android/camera/OnScreenHint;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 3877
    :goto_2
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->show()V

    .line 3878
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/stats/UsageStatistics;->storageWarning(J)V

    .line 3881
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/app/CameraAppUI;->setDisableAllUserInteractions(Z)V

    goto :goto_0

    .line 3858
    :cond_3
    const-wide/16 v2, -0x2

    cmp-long v1, p1, v2

    if-nez v1, :cond_4

    .line 3859
    const v1, 0x7f08020e

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3860
    :cond_4
    const-wide/16 v2, -0x3

    cmp-long v1, p1, v2

    if-nez v1, :cond_5

    .line 3861
    const/high16 v1, 0x7f080000

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3862
    :cond_5
    const-wide/32 v2, 0x2faf080

    cmp-long v1, p1, v2

    if-gtz v1, :cond_2

    .line 3864
    const v1, 0x7f0803df

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/Storage;->getStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3865
    const v1, 0x7f080117

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3867
    :cond_6
    const v1, 0x7f080116

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3875
    :cond_7
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 3882
    :cond_8
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v1, :cond_0

    .line 3883
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 3884
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 3887
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraAppUI:Lcom/android/camera/app/CameraAppUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/app/CameraAppUI;->setDisableAllUserInteractions(Z)V

    goto/16 :goto_0
.end method

.method public updateStorageSpace(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)J
    .locals 3
    .param p1, "callback"    # Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;

    .prologue
    .line 3838
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    .line 3842
    :goto_0
    return-wide v0

    .line 3839
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceCheckTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    goto :goto_0

    .line 3840
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3841
    :try_start_0
    invoke-static {p0}, Lcom/android/camera/Storage;->getAvailableSpace(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    .line 3842
    iget-wide v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    monitor-exit v2

    goto :goto_0

    .line 3843
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateStorageSpaceAndHint()V
    .locals 2

    .prologue
    .line 3833
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->updateStorageSpace(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)J

    .line 3834
    iget-wide v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageHint(J)V

    .line 3835
    return-void
.end method

.method protected updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;

    .prologue
    .line 3777
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceCheckTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 3778
    sget-object v0, Lcom/android/camera/CameraActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "updateStorageSpace : storage check already running."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3779
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    if-nez v0, :cond_0

    .line 3780
    iget-wide v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    invoke-interface {p1, v0, v1}, Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;->onStorageUpdateDone(J)V

    .line 3830
    :cond_0
    :goto_0
    return-void

    .line 3799
    :cond_1
    new-instance v0, Lcom/android/camera/CameraActivity$27;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraActivity$27;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceCheckTask:Landroid/os/AsyncTask;

    .line 3829
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceCheckTask:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public userSelectedModeAlready()Z
    .locals 1

    .prologue
    .line 3933
    const/4 v0, 0x0

    return v0
.end method

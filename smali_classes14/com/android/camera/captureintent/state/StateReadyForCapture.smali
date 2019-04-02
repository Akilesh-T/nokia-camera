.class public final Lcom/android/camera/captureintent/state/StateReadyForCapture;
.super Lcom/android/camera/captureintent/stateful/StateImpl;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;
.implements Lcom/android/camera/PowerStateManager$PowerStateListener;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

.field private final mEventCameraBusyHandler:Lcom/android/camera/captureintent/stateful/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/captureintent/stateful/EventHandler",
            "<",
            "Lcom/android/camera/captureintent/event/EventCameraBusy;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventCameraReadyHandler:Lcom/android/camera/captureintent/stateful/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/captureintent/stateful/EventHandler",
            "<",
            "Lcom/android/camera/captureintent/event/EventCameraReady;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

.field private mIsCountingDown:Z

.field private mIsDecodingPicture:Z

.field private mIsTakingPicture:Z

.field private final mPictureCallback:Lcom/android/camera/one/OneCamera$PictureCallback;

.field private final mReadyStateChangedListener:Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;

.field private final mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceCaptureTools;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenFlashController:Lcom/android/camera/one/OneCamera$ScreenFlashController;

.field private mShouldUpdateTransformOnNextSurfaceTextureUpdate:Z

.field private mShutterSoundEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "StateReadyCap"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)V
    .locals 3
    .param p1, "previousState"    # Lcom/android/camera/captureintent/stateful/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/stateful/State;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceCaptureTools;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "resourceCaptureTools":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceCaptureTools;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/stateful/StateImpl;-><init>(Lcom/android/camera/captureintent/stateful/State;)V

    .line 105
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 106
    iput-boolean v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mShutterSoundEnabled:Z

    .line 648
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForCapture$21;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$21;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

    .line 657
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForCapture$22;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$22;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mEventCameraBusyHandler:Lcom/android/camera/captureintent/stateful/EventHandler;

    .line 672
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForCapture$23;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$23;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mEventCameraReadyHandler:Lcom/android/camera/captureintent/stateful/EventHandler;

    .line 686
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForCapture$24;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$24;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mReadyStateChangedListener:Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;

    .line 702
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForCapture$25;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$25;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mPictureCallback:Lcom/android/camera/one/OneCamera$PictureCallback;

    .line 735
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForCapture$26;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$26;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mScreenFlashController:Lcom/android/camera/one/OneCamera$ScreenFlashController;

    .line 142
    iput-object p2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    .line 143
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->addRef()V

    .line 144
    iput-boolean v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mIsCountingDown:Z

    .line 145
    iput-boolean v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mIsTakingPicture:Z

    .line 146
    iput-boolean v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mIsDecodingPicture:Z

    .line 147
    iput-boolean v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mShouldUpdateTransformOnNextSurfaceTextureUpdate:Z

    .line 148
    invoke-direct {p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->registerEventHandlers()V

    .line 149
    return-void
.end method

.method private constructor <init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;)V
    .locals 3
    .param p1, "previousState"    # Lcom/android/camera/captureintent/stateful/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/stateful/State;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;",
            ">;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    .local p3, "resourceSurfaceTexture":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;>;"
    .local p4, "resourceOpenedCamera":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/stateful/StateImpl;-><init>(Lcom/android/camera/captureintent/stateful/State;)V

    .line 105
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 106
    iput-boolean v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mShutterSoundEnabled:Z

    .line 648
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForCapture$21;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$21;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

    .line 657
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForCapture$22;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$22;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mEventCameraBusyHandler:Lcom/android/camera/captureintent/stateful/EventHandler;

    .line 672
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForCapture$23;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$23;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mEventCameraReadyHandler:Lcom/android/camera/captureintent/stateful/EventHandler;

    .line 686
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForCapture$24;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$24;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mReadyStateChangedListener:Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;

    .line 702
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForCapture$25;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$25;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mPictureCallback:Lcom/android/camera/one/OneCamera$PictureCallback;

    .line 735
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForCapture$26;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$26;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mScreenFlashController:Lcom/android/camera/one/OneCamera$ScreenFlashController;

    .line 129
    invoke-static {p2, p3, p4}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->create(Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    .line 131
    iput-boolean v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mIsCountingDown:Z

    .line 132
    iput-boolean v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mIsTakingPicture:Z

    .line 133
    iput-boolean v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mIsDecodingPicture:Z

    .line 134
    iput-boolean v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mShouldUpdateTransformOnNextSurfaceTextureUpdate:Z

    .line 135
    invoke-direct {p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->registerEventHandlers()V

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/hardware/HardwareSpec;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mIsDecodingPicture:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/captureintent/state/StateReadyForCapture;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mIsDecodingPicture:Z

    return p1
.end method

.method static synthetic access$1100()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mShutterSoundEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/captureintent/state/StateReadyForCapture;Lcom/android/camera/one/OneCamera$AutoFocusState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$AutoFocusState;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->onFocusStateUpdated(Lcom/android/camera/one/OneCamera$AutoFocusState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mShouldUpdateTransformOnNextSurfaceTextureUpdate:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/captureintent/state/StateReadyForCapture;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mShouldUpdateTransformOnNextSurfaceTextureUpdate:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/captureintent/state/StateReadyForCapture;Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;
    .param p1, "x1"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->takePicture(Lcom/android/camera/ui/TouchCoordinate;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mIsCountingDown:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/captureintent/state/StateReadyForCapture;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mIsCountingDown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->cancelCountDown()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/captureintent/state/StateReadyForCapture;Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;
    .param p1, "x1"    # Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->takePictureNow(Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/camera/captureintent/state/StateReadyForCapture;Lcom/android/camera/one/OneCamera$AutoFocusState;)Lcom/android/camera/one/OneCamera$AutoFocusState;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$AutoFocusState;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mIsTakingPicture:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/captureintent/state/StateReadyForCapture;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mIsTakingPicture:Z

    return p1
.end method

.method private cancelCountDown()V
    .locals 2

    .prologue
    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mIsCountingDown:Z

    .line 213
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getMainThread()Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/state/StateReadyForCapture$3;

    invoke-direct {v1, p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$3;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 220
    return-void
.end method

.method public static from(Lcom/android/camera/captureintent/state/StateReviewingPicture;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateReadyForCapture;
    .locals 1
    .param p0, "reviewingPicture"    # Lcom/android/camera/captureintent/state/StateReviewingPicture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/state/StateReviewingPicture;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceCaptureTools;",
            ">;)",
            "Lcom/android/camera/captureintent/state/StateReadyForCapture;"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "resourceCaptureTools":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceCaptureTools;>;"
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/captureintent/state/StateReadyForCapture;-><init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)V

    return-object v0
.end method

.method public static from(Lcom/android/camera/captureintent/state/StateStartingPreview;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateReadyForCapture;
    .locals 1
    .param p0, "startingPreview"    # Lcom/android/camera/captureintent/state/StateStartingPreview;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/state/StateStartingPreview;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;",
            ">;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;",
            ">;)",
            "Lcom/android/camera/captureintent/state/StateReadyForCapture;"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    .local p2, "resourceSurfaceTexture":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;>;"
    .local p3, "resourceOpenedCamera":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;>;"
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/captureintent/state/StateReadyForCapture;-><init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;)V

    return-object v0
.end method

.method private getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 836
    new-instance v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 838
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 839
    new-instance v2, Lcom/android/camera/captureintent/state/StateReadyForCapture$28;

    invoke-direct {v2, p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$28;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    iput-object v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 851
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    if-nez v2, :cond_0

    move v1, v4

    .line 852
    .local v1, "isLowPower":Z
    :goto_0
    if-nez v1, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableFlash:Z

    .line 854
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableGridLines:Z

    .line 856
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableHdr:Z

    .line 857
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideHdr:Z

    .line 858
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hdrCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 860
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSelfTimer:Z

    .line 861
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showSelfTimer:Z

    .line 863
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    .line 864
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideLiveBroadcast:Z

    .line 865
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideEffect:Z

    .line 867
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideCameraScreen:Z

    .line 868
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDaulCamSwitcher:Z

    .line 869
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDaulCamSwitcher:Z

    .line 872
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceOpenedCamera()Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;->getCameraCharacteristics()Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    .line 873
    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->isExposureCompensationSupported()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->isExposureCompensationSupported:Z

    .line 874
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableExposureCompensation:Z

    .line 877
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showCancel:Z

    .line 878
    new-instance v2, Lcom/android/camera/captureintent/state/StateReadyForCapture$29;

    invoke-direct {v2, p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$29;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    iput-object v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cancelCallback:Landroid/view/View$OnClickListener;

    .line 884
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showDone:Z

    .line 885
    new-instance v2, Lcom/android/camera/captureintent/state/StateReadyForCapture$30;

    invoke-direct {v2, p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$30;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    iput-object v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->doneCallback:Landroid/view/View$OnClickListener;

    .line 891
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showRetake:Z

    .line 892
    new-instance v2, Lcom/android/camera/captureintent/state/StateReadyForCapture$31;

    invoke-direct {v2, p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$31;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    iput-object v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->retakeCallback:Landroid/view/View$OnClickListener;

    .line 898
    return-object v0

    .line 851
    .end local v1    # "isLowPower":Z
    :cond_0
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v1

    goto :goto_0

    .restart local v1    # "isLowPower":Z
    :cond_1
    move v2, v4

    .line 852
    goto :goto_1
.end method

.method private getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
    .locals 1

    .prologue
    .line 772
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForCapture$27;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$27;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    return-object v0
.end method

.method private onFocusStateUpdated(Lcom/android/camera/one/OneCamera$AutoFocusState;)V
    .locals 3
    .param p1, "focusState"    # Lcom/android/camera/one/OneCamera$AutoFocusState;

    .prologue
    .line 620
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getFocusController()Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    .line 621
    .local v0, "focusController":Lcom/android/camera/ui/focus/FocusController;
    sget-object v1, Lcom/android/camera/captureintent/state/StateReadyForCapture$33;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 646
    :goto_0
    return-void

    .line 623
    :pswitch_0
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 624
    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAtCenter()V

    goto :goto_0

    .line 627
    :pswitch_1
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_0

    .line 630
    :pswitch_2
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 631
    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->clearFocusIndicator()V

    goto :goto_0

    .line 634
    :pswitch_3
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_0

    .line 637
    :pswitch_4
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_0

    .line 640
    :pswitch_5
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 641
    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->clearFocusIndicator()V

    goto :goto_0

    .line 621
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private registerEventHandlers()V
    .locals 19

    .prologue
    .line 229
    new-instance v8, Lcom/android/camera/captureintent/state/StateReadyForCapture$4;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$4;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    .line 238
    .local v8, "pauseHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventPause;>;"
    const-class v17, Lcom/android/camera/captureintent/event/EventPause;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v17

    check-cast v17, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface/range {v17 .. v17}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v17

    check-cast v17, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface/range {v17 .. v17}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getMainThread()Lcom/android/camera/async/MainThread;

    move-result-object v17

    new-instance v18, Lcom/android/camera/captureintent/state/StateReadyForCapture$5;

    invoke-direct/range {v18 .. v19}, Lcom/android/camera/captureintent/state/StateReadyForCapture$5;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 249
    new-instance v6, Lcom/android/camera/captureintent/state/StateReadyForCapture$6;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$6;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    .line 270
    .local v6, "onSurfaceTextureUpdatedHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventOnSurfaceTextureUpdated;>;"
    const-class v17, Lcom/android/camera/captureintent/event/EventOnSurfaceTextureUpdated;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 273
    new-instance v7, Lcom/android/camera/captureintent/state/StateReadyForCapture$7;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$7;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    .line 282
    .local v7, "onTextureViewLayoutChangedHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventOnTextureViewLayoutChanged;>;"
    const-class v17, Lcom/android/camera/captureintent/event/EventOnTextureViewLayoutChanged;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 286
    const-class v17, Lcom/android/camera/captureintent/event/EventCameraBusy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mEventCameraBusyHandler:Lcom/android/camera/captureintent/stateful/EventHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 290
    const-class v17, Lcom/android/camera/captureintent/event/EventCameraReady;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mEventCameraReadyHandler:Lcom/android/camera/captureintent/stateful/EventHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 294
    new-instance v13, Lcom/android/camera/captureintent/state/StateReadyForCapture$8;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$8;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    .line 302
    .local v13, "tapOnShutterButtonHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventTapOnShutterButton;>;"
    const-class v17, Lcom/android/camera/captureintent/event/EventTapOnShutterButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 305
    new-instance v4, Lcom/android/camera/captureintent/state/StateReadyForCapture$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$9;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    .line 317
    .local v4, "clickOnVolumeKeyHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventClickOnCameraKey;>;"
    const-class v17, Lcom/android/camera/captureintent/event/EventClickOnCameraKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 320
    new-instance v15, Lcom/android/camera/captureintent/state/StateReadyForCapture$10;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$10;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    .line 333
    .local v15, "timerCountDownToZeroHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventTimerCountDownToZero;>;"
    const-class v17, Lcom/android/camera/captureintent/event/EventTimerCountDownToZero;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 336
    new-instance v14, Lcom/android/camera/captureintent/state/StateReadyForCapture$11;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$11;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    .line 374
    .local v14, "tapOnSwitchCameraButtonHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventTapOnSwitchCameraButton;>;"
    const-class v17, Lcom/android/camera/captureintent/event/EventTapOnSwitchCameraButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 377
    new-instance v12, Lcom/android/camera/captureintent/state/StateReadyForCapture$12;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$12;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    .line 421
    .local v12, "tapOnPreviewHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventTapOnPreview;>;"
    const-class v17, Lcom/android/camera/captureintent/event/EventTapOnPreview;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 424
    new-instance v16, Lcom/android/camera/captureintent/state/StateReadyForCapture$13;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/captureintent/state/StateReadyForCapture$13;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    .line 433
    .local v16, "zoomRatioChangedHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventZoomRatioChanged;>;"
    const-class v17, Lcom/android/camera/captureintent/event/EventZoomRatioChanged;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 436
    new-instance v9, Lcom/android/camera/captureintent/state/StateReadyForCapture$14;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$14;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    .line 468
    .local v9, "pictureCompressedHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventPictureCompressed;>;"
    const-class v17, Lcom/android/camera/captureintent/event/EventPictureCompressed;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 471
    new-instance v10, Lcom/android/camera/captureintent/state/StateReadyForCapture$15;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$15;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    .line 489
    .local v10, "pictureDecodedHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventPictureDecoded;>;"
    const-class v17, Lcom/android/camera/captureintent/event/EventPictureDecoded;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 492
    new-instance v5, Lcom/android/camera/captureintent/state/StateReadyForCapture$16;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$16;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    .line 504
    .local v5, "fastPictureBitmapAvailableHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventFastPictureBitmapAvailable;>;"
    const-class v17, Lcom/android/camera/captureintent/event/EventFastPictureBitmapAvailable;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 507
    new-instance v3, Lcom/android/camera/captureintent/state/StateReadyForCapture$17;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$17;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    .line 539
    .local v3, "cameraQuickExposeHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventCameraQuickExpose;>;"
    const-class v17, Lcom/android/camera/captureintent/event/EventCameraQuickExpose;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 542
    new-instance v11, Lcom/android/camera/captureintent/state/StateReadyForCapture$18;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$18;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    .line 550
    .local v11, "tapOnCancelShutterButtonHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventTapOnCancelShutterButton;>;"
    const-class v17, Lcom/android/camera/captureintent/event/EventTapOnCancelShutterButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 551
    return-void
.end method

.method private startCountDown(ILcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V
    .locals 2
    .param p1, "countDownDuration"    # I
    .param p2, "captureLoggingInfo"    # Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;

    .prologue
    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mIsCountingDown:Z

    .line 185
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getMainThread()Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/state/StateReadyForCapture$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/camera/captureintent/state/StateReadyForCapture$2;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method

.method private takePicture(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 5
    .param p1, "touchPointInsideShutterButton"    # Lcom/android/camera/ui/TouchCoordinate;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 152
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->hideModeOptionsExpandButtons()V

    .line 153
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    .line 154
    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    .line 155
    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_camera_countdown_duration_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 159
    .local v1, "countDownDuration":I
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForCapture$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera/captureintent/state/StateReadyForCapture$1;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;Lcom/android/camera/ui/TouchCoordinate;I)V

    .line 173
    .local v0, "captureLoggingInfo":Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;
    if-lez v1, :cond_0

    .line 174
    invoke-direct {p0, v1, v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->startCountDown(ILcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->takePictureNow(Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V

    goto :goto_0
.end method

.method private takePictureNow(Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V
    .locals 3
    .param p1, "captureLoggingInfo"    # Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mIsTakingPicture:Z

    .line 224
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mPictureCallback:Lcom/android/camera/one/OneCamera$PictureCallback;

    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mScreenFlashController:Lcom/android/camera/one/OneCamera$ScreenFlashController;

    invoke-interface {v0, v1, v2, p1}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->takePictureNow(Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/one/OneCamera$ScreenFlashController;Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V

    .line 225
    return-void
.end method


# virtual methods
.method public getFocusState()I
    .locals 2

    .prologue
    .line 759
    sget-object v0, Lcom/android/camera/captureintent/state/StateReadyForCapture$33;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 767
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 761
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 763
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 765
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 759
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onEnter()Lcom/google/common/base/Optional;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/camera/PowerStateManager;->addListener(Lcom/android/camera/PowerStateManager$PowerStateListener;)V

    .line 557
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    .line 558
    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceOpenedCamera()Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;->getCamera()Lcom/android/camera/one/OneCamera;

    move-result-object v0

    .line 559
    .local v0, "camera":Lcom/android/camera/one/OneCamera;
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getFocusController()Lcom/android/camera/ui/focus/FocusController;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 560
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getFaceDetectionListener()Lcom/android/camera/one/OneCamera$FaceDetectionListener;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/camera/one/OneCamera;->setFaceDetectionListener(Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V

    .line 561
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

    invoke-interface {v0, v2}, Lcom/android/camera/one/OneCamera;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    .line 562
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mReadyStateChangedListener:Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;

    invoke-interface {v0, v2}, Lcom/android/camera/one/OneCamera;->setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V

    .line 563
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getFocusController()Lcom/android/camera/ui/focus/FocusController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/focus/FocusController;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 564
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getFocusController()Lcom/android/camera/ui/focus/FocusController;

    move-result-object v3

    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getCamera()Lcom/android/camera/one/OneCamera;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/one/OneCamera;->getTouchExposureListener()Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/focus/FocusController;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 565
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getFocusController()Lcom/android/camera/ui/focus/FocusController;

    move-result-object v3

    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/focus/FocusController;->configurePreviewDimensions(Landroid/graphics/RectF;)V

    .line 567
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_shutter_sound_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mShutterSoundEnabled:Z

    .line 571
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getMainThread()Lcom/android/camera/async/MainThread;

    move-result-object v2

    new-instance v3, Lcom/android/camera/captureintent/state/StateReadyForCapture$19;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$19;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;Lcom/android/camera/one/OneCamera;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 584
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getCaptureDataKeeper()Lcom/android/camera/captureintent/CaptureDataKeeper;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/captureintent/CaptureDataKeeper;->getCapturePhotoInfo()Lcom/android/camera/captureintent/CapturePhotoInfo;

    move-result-object v1

    .line 586
    .local v1, "info":Lcom/android/camera/captureintent/CapturePhotoInfo;
    if-eqz v1, :cond_0

    .line 587
    sget-object v2, Lcom/android/camera/captureintent/state/StateReadyForCapture;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "CapturePhotoInfo available, change to StateReadyForCapture"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 588
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    .line 590
    invoke-virtual {v1}, Lcom/android/camera/captureintent/CapturePhotoInfo;->getPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/camera/captureintent/CapturePhotoInfo;->getJpegData()Lcom/google/common/base/Optional;

    move-result-object v4

    .line 588
    invoke-static {p0, v2, v3, v4}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->from(Lcom/android/camera/captureintent/state/StateReadyForCapture;Lcom/android/camera/async/RefCountBase;Landroid/graphics/Bitmap;Lcom/google/common/base/Optional;)Lcom/android/camera/captureintent/state/StateReviewingPicture;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    .line 592
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/android/camera/captureintent/state/StateReadyForCapture;->NO_CHANGE:Lcom/google/common/base/Optional;

    goto :goto_0
.end method

.method public onLeave()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 598
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/PowerStateManager;->removeListener(Lcom/android/camera/PowerStateManager$PowerStateListener;)V

    .line 599
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    .line 600
    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceOpenedCamera()Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;->getCamera()Lcom/android/camera/one/OneCamera;

    move-result-object v0

    .line 601
    .local v0, "camera":Lcom/android/camera/one/OneCamera;
    invoke-interface {v0, v2}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 602
    invoke-interface {v0, v2}, Lcom/android/camera/one/OneCamera;->setFaceDetectionListener(Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V

    .line 603
    invoke-interface {v0, v2}, Lcom/android/camera/one/OneCamera;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    .line 604
    invoke-interface {v0, v2}, Lcom/android/camera/one/OneCamera;->setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V

    .line 605
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getFocusController()Lcom/android/camera/ui/focus/FocusController;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/focus/FocusController;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 606
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getFocusController()Lcom/android/camera/ui/focus/FocusController;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/focus/FocusController;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 607
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 609
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getMainThread()Lcom/android/camera/async/MainThread;

    move-result-object v1

    new-instance v2, Lcom/android/camera/captureintent/state/StateReadyForCapture$20;

    invoke-direct {v2, p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$20;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 616
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 617
    return-void
.end method

.method public onPowerStateChanged(Z)V
    .locals 2
    .param p1, "isLowPower"    # Z

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getMainThread()Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/state/StateReadyForCapture$32;

    invoke-direct {v1, p0}, Lcom/android/camera/captureintent/state/StateReadyForCapture$32;-><init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 909
    return-void
.end method

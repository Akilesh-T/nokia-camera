.class public final Lcom/android/camera/captureintent/state/StateReadyForRecord;
.super Lcom/android/camera/captureintent/stateful/StateImpl;
.source "StateReadyForRecord.java"

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

.field private mShouldUpdateTransformOnNextSurfaceTextureUpdate:Z

.field private mShutterSoundEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "StateReadyRecord"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)V
    .locals 2
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
    const/4 v1, 0x1

    .line 126
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/stateful/StateImpl;-><init>(Lcom/android/camera/captureintent/stateful/State;)V

    .line 93
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 94
    iput-boolean v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mShutterSoundEnabled:Z

    .line 602
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForRecord$23;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$23;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

    .line 611
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForRecord$24;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$24;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mEventCameraBusyHandler:Lcom/android/camera/captureintent/stateful/EventHandler;

    .line 630
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForRecord$25;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$25;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mEventCameraReadyHandler:Lcom/android/camera/captureintent/stateful/EventHandler;

    .line 648
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForRecord$26;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$26;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mReadyStateChangedListener:Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;

    .line 127
    iput-object p2, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    .line 128
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->addRef()V

    .line 129
    iput-boolean v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mShouldUpdateTransformOnNextSurfaceTextureUpdate:Z

    .line 130
    invoke-direct {p0}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->registerEventHandlers()V

    .line 131
    return-void
.end method

.method private constructor <init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;)V
    .locals 2
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
    const/4 v1, 0x1

    .line 116
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/stateful/StateImpl;-><init>(Lcom/android/camera/captureintent/stateful/State;)V

    .line 93
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 94
    iput-boolean v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mShutterSoundEnabled:Z

    .line 602
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForRecord$23;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$23;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

    .line 611
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForRecord$24;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$24;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mEventCameraBusyHandler:Lcom/android/camera/captureintent/stateful/EventHandler;

    .line 630
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForRecord$25;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$25;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mEventCameraReadyHandler:Lcom/android/camera/captureintent/stateful/EventHandler;

    .line 648
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForRecord$26;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$26;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mReadyStateChangedListener:Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;

    .line 117
    invoke-static {p2, p3, p4}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->create(Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    .line 119
    iput-boolean v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mShouldUpdateTransformOnNextSurfaceTextureUpdate:Z

    .line 120
    invoke-direct {p0}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->registerEventHandlers()V

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/captureintent/state/StateReadyForRecord;)Lcom/android/camera/async/RefCountBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForRecord;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/captureintent/state/StateReadyForRecord;)Lcom/android/camera/hardware/HardwareSpec;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForRecord;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/captureintent/state/StateReadyForRecord;)Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForRecord;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/captureintent/state/StateReadyForRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForRecord;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mShouldUpdateTransformOnNextSurfaceTextureUpdate:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/captureintent/state/StateReadyForRecord;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForRecord;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mShouldUpdateTransformOnNextSurfaceTextureUpdate:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/camera/captureintent/state/StateReadyForRecord;Lcom/android/camera/one/OneCamera$AutoFocusState;)Lcom/android/camera/one/OneCamera$AutoFocusState;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForRecord;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$AutoFocusState;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/captureintent/state/StateReadyForRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForRecord;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mShutterSoundEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/captureintent/state/StateReadyForRecord;Lcom/android/camera/one/OneCamera$AutoFocusState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReadyForRecord;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$AutoFocusState;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->onFocusStateUpdated(Lcom/android/camera/one/OneCamera$AutoFocusState;)V

    return-void
.end method

.method public static from(Lcom/android/camera/captureintent/state/StateReviewingVideo;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateReadyForRecord;
    .locals 1
    .param p0, "reviewingVideo"    # Lcom/android/camera/captureintent/state/StateReviewingVideo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/state/StateReviewingVideo;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceCaptureTools;",
            ">;)",
            "Lcom/android/camera/captureintent/state/StateReadyForRecord;"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "resourceCaptureTools":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceCaptureTools;>;"
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/captureintent/state/StateReadyForRecord;-><init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)V

    return-object v0
.end method

.method public static from(Lcom/android/camera/captureintent/state/StateStartingPreview;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateReadyForRecord;
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
            "Lcom/android/camera/captureintent/state/StateReadyForRecord;"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    .local p2, "resourceSurfaceTexture":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;>;"
    .local p3, "resourceOpenedCamera":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;>;"
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/captureintent/state/StateReadyForRecord;-><init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;)V

    return-object v0
.end method

.method private getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 743
    new-instance v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 745
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 746
    new-instance v2, Lcom/android/camera/captureintent/state/StateReadyForRecord$28;

    invoke-direct {v2, p0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$28;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    iput-object v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 758
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

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

    move v1, v3

    .line 759
    .local v1, "isLowPower":Z
    :goto_0
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

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

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->isFlashSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    move v2, v4

    :goto_1
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableTorchFlash:Z

    .line 761
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableGridLines:Z

    .line 763
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableHdr:Z

    .line 764
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideHdr:Z

    .line 765
    iput-object v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hdrCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 767
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSelfTimer:Z

    .line 768
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showSelfTimer:Z

    .line 770
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    .line 771
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideLiveBroadcast:Z

    .line 772
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideEffect:Z

    .line 774
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideCameraScreen:Z

    .line 775
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDaulCamSwitcher:Z

    .line 776
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDaulCamSwitcher:Z

    .line 779
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

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

    .line 780
    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->isExposureCompensationSupported()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->isExposureCompensationSupported:Z

    .line 781
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableExposureCompensation:Z

    .line 784
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showCancel:Z

    .line 785
    new-instance v2, Lcom/android/camera/captureintent/state/StateReadyForRecord$29;

    invoke-direct {v2, p0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$29;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    iput-object v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cancelCallback:Landroid/view/View$OnClickListener;

    .line 791
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showDone:Z

    .line 792
    new-instance v2, Lcom/android/camera/captureintent/state/StateReadyForRecord$30;

    invoke-direct {v2, p0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$30;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    iput-object v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->doneCallback:Landroid/view/View$OnClickListener;

    .line 798
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showReview:Z

    .line 799
    iput-object v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->reviewCallback:Landroid/view/View$OnClickListener;

    .line 800
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showRetake:Z

    .line 801
    new-instance v2, Lcom/android/camera/captureintent/state/StateReadyForRecord$31;

    invoke-direct {v2, p0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$31;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    iput-object v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->retakeCallback:Landroid/view/View$OnClickListener;

    .line 807
    return-object v0

    .line 758
    .end local v1    # "isLowPower":Z
    :cond_0
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

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

    goto/16 :goto_0

    .restart local v1    # "isLowPower":Z
    :cond_1
    move v2, v3

    .line 759
    goto :goto_1
.end method

.method private getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
    .locals 1

    .prologue
    .line 679
    new-instance v0, Lcom/android/camera/captureintent/state/StateReadyForRecord$27;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$27;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    return-object v0
.end method

.method private onFocusStateUpdated(Lcom/android/camera/one/OneCamera$AutoFocusState;)V
    .locals 3
    .param p1, "focusState"    # Lcom/android/camera/one/OneCamera$AutoFocusState;

    .prologue
    .line 574
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getFocusController()Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    .line 575
    .local v0, "focusController":Lcom/android/camera/ui/focus/FocusController;
    sget-object v1, Lcom/android/camera/captureintent/state/StateReadyForRecord$33;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 600
    :goto_0
    return-void

    .line 577
    :pswitch_0
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 578
    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAtCenter()V

    goto :goto_0

    .line 581
    :pswitch_1
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_0

    .line 584
    :pswitch_2
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 585
    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->clearFocusIndicator()V

    goto :goto_0

    .line 588
    :pswitch_3
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_0

    .line 591
    :pswitch_4
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_0

    .line 594
    :pswitch_5
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 595
    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->clearFocusIndicator()V

    goto :goto_0

    .line 575
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
    .locals 24

    .prologue
    .line 135
    new-instance v7, Lcom/android/camera/captureintent/state/StateReadyForRecord$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$1;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    .line 149
    .local v7, "pauseHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventPause;>;"
    const-class v22, Lcom/android/camera/captureintent/event/EventPause;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v22

    check-cast v22, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface/range {v22 .. v22}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v22

    check-cast v22, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface/range {v22 .. v22}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getMainThread()Lcom/android/camera/async/MainThread;

    move-result-object v22

    new-instance v23, Lcom/android/camera/captureintent/state/StateReadyForRecord$2;

    invoke-direct/range {v23 .. v24}, Lcom/android/camera/captureintent/state/StateReadyForRecord$2;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    invoke-virtual/range {v22 .. v23}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 159
    new-instance v5, Lcom/android/camera/captureintent/state/StateReadyForRecord$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$3;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    .line 180
    .local v5, "onSurfaceTextureUpdatedHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventOnSurfaceTextureUpdated;>;"
    const-class v22, Lcom/android/camera/captureintent/event/EventOnSurfaceTextureUpdated;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 183
    new-instance v6, Lcom/android/camera/captureintent/state/StateReadyForRecord$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$4;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    .line 192
    .local v6, "onTextureViewLayoutChangedHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventOnTextureViewLayoutChanged;>;"
    const-class v22, Lcom/android/camera/captureintent/event/EventOnTextureViewLayoutChanged;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 196
    const-class v22, Lcom/android/camera/captureintent/event/EventCameraBusy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mEventCameraBusyHandler:Lcom/android/camera/captureintent/stateful/EventHandler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 200
    const-class v22, Lcom/android/camera/captureintent/event/EventCameraReady;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mEventCameraReadyHandler:Lcom/android/camera/captureintent/stateful/EventHandler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 204
    new-instance v15, Lcom/android/camera/captureintent/state/StateReadyForRecord$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$5;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    .line 212
    .local v15, "tapOnShutterButtonHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventTapOnShutterButton;>;"
    const-class v22, Lcom/android/camera/captureintent/event/EventTapOnShutterButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 215
    new-instance v3, Lcom/android/camera/captureintent/state/StateReadyForRecord$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$6;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    .line 223
    .local v3, "clickOnVolumeKeyHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventClickOnCameraKey;>;"
    const-class v22, Lcom/android/camera/captureintent/event/EventClickOnCameraKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 226
    new-instance v16, Lcom/android/camera/captureintent/state/StateReadyForRecord$7;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/captureintent/state/StateReadyForRecord$7;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    .line 270
    .local v16, "tapOnSwitchCameraButtonHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventTapOnSwitchCameraButton;>;"
    const-class v22, Lcom/android/camera/captureintent/event/EventTapOnSwitchCameraButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 273
    new-instance v14, Lcom/android/camera/captureintent/state/StateReadyForRecord$8;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$8;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    .line 317
    .local v14, "tapOnPreviewHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventTapOnPreview;>;"
    const-class v22, Lcom/android/camera/captureintent/event/EventTapOnPreview;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 320
    new-instance v21, Lcom/android/camera/captureintent/state/StateReadyForRecord$9;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/captureintent/state/StateReadyForRecord$9;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    .line 329
    .local v21, "zoomRatioChangedHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventZoomRatioChanged;>;"
    const-class v22, Lcom/android/camera/captureintent/event/EventZoomRatioChanged;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 332
    new-instance v4, Lcom/android/camera/captureintent/state/StateReadyForRecord$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$10;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    .line 340
    .local v4, "lockOrientationEventHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventLockOrientation;>;"
    const-class v22, Lcom/android/camera/captureintent/event/EventLockOrientation;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 343
    new-instance v17, Lcom/android/camera/captureintent/state/StateReadyForRecord$11;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/captureintent/state/StateReadyForRecord$11;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    .line 351
    .local v17, "unlockOrientationEventHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventUnlockOrientation;>;"
    const-class v22, Lcom/android/camera/captureintent/event/EventUnlockOrientation;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 354
    new-instance v9, Lcom/android/camera/captureintent/state/StateReadyForRecord$12;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$12;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    .line 371
    .local v9, "recordStartingEventHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventRecordStarting;>;"
    const-class v22, Lcom/android/camera/captureintent/event/EventRecordStarting;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 374
    new-instance v8, Lcom/android/camera/captureintent/state/StateReadyForRecord$13;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$13;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    .line 389
    .local v8, "recordStartedEventHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventRecordStarted;>;"
    const-class v22, Lcom/android/camera/captureintent/event/EventRecordStarted;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 392
    new-instance v11, Lcom/android/camera/captureintent/state/StateReadyForRecord$14;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$14;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    .line 405
    .local v11, "recordStopingEventHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventRecordStoping;>;"
    const-class v22, Lcom/android/camera/captureintent/event/EventRecordStoping;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 408
    new-instance v10, Lcom/android/camera/captureintent/state/StateReadyForRecord$15;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$15;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    .line 428
    .local v10, "recordStopedEventHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventRecordStoped;>;"
    const-class v22, Lcom/android/camera/captureintent/event/EventRecordStoped;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 431
    new-instance v12, Lcom/android/camera/captureintent/state/StateReadyForRecord$16;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$16;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    .line 444
    .local v12, "recordTimeUpdateEventHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventRecordTimeUpdate;>;"
    const-class v22, Lcom/android/camera/captureintent/event/EventRecordTimeUpdate;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v12}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 447
    new-instance v13, Lcom/android/camera/captureintent/state/StateReadyForRecord$17;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$17;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    .line 460
    .local v13, "recordTimeWarningEventHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventRecordTimeWarning;>;"
    const-class v22, Lcom/android/camera/captureintent/event/EventRecordTimeWarning;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 463
    new-instance v18, Lcom/android/camera/captureintent/state/StateReadyForRecord$18;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/captureintent/state/StateReadyForRecord$18;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    .line 471
    .local v18, "videoAvailableEventHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventVideoAvailable;>;"
    const-class v22, Lcom/android/camera/captureintent/event/EventVideoAvailable;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 474
    new-instance v20, Lcom/android/camera/captureintent/state/StateReadyForRecord$19;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/captureintent/state/StateReadyForRecord$19;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    .line 486
    .local v20, "videoCaptureFailEventHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventVideoCaptureFail;>;"
    const-class v22, Lcom/android/camera/captureintent/event/EventVideoCaptureFail;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 489
    new-instance v19, Lcom/android/camera/captureintent/state/StateReadyForRecord$20;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/captureintent/state/StateReadyForRecord$20;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    .line 495
    .local v19, "videoCaptureCancelEventHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventVideoCaptureCancel;>;"
    const-class v22, Lcom/android/camera/captureintent/event/EventVideoCaptureCancel;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 496
    return-void
.end method


# virtual methods
.method public getFocusState()I
    .locals 2

    .prologue
    .line 666
    sget-object v0, Lcom/android/camera/captureintent/state/StateReadyForRecord$33;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 674
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 668
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 670
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 672
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 666
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onEnter()Lcom/google/common/base/Optional;
    .locals 9
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
    .line 500
    sget-object v0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onEnter"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/PowerStateManager;->addListener(Lcom/android/camera/PowerStateManager$PowerStateListener;)V

    .line 503
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    .line 504
    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceOpenedCamera()Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;->getCamera()Lcom/android/camera/one/OneCamera;

    move-result-object v7

    .line 505
    .local v7, "camera":Lcom/android/camera/one/OneCamera;
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getFocusController()Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 507
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

    invoke-interface {v7, v0}, Lcom/android/camera/one/OneCamera;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    .line 508
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mReadyStateChangedListener:Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;

    invoke-interface {v7, v0}, Lcom/android/camera/one/OneCamera;->setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V

    .line 509
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getFocusController()Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/focus/FocusController;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 510
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getFocusController()Lcom/android/camera/ui/focus/FocusController;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getCamera()Lcom/android/camera/one/OneCamera;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera;->getTouchExposureListener()Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/focus/FocusController;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 511
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getFocusController()Lcom/android/camera/ui/focus/FocusController;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/focus/FocusController;->configurePreviewDimensions(Landroid/graphics/RectF;)V

    .line 513
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_shutter_sound_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mShutterSoundEnabled:Z

    .line 515
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getBurstFacade()Lcom/android/camera/burst/BurstFacade;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getBurstFacade()Lcom/android/camera/burst/BurstFacade;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mShutterSoundEnabled:Z

    invoke-interface {v0, v1}, Lcom/android/camera/burst/BurstFacade;->setShutterSoundEnabled(Z)V

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getMainThread()Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/state/StateReadyForRecord$21;

    invoke-direct {v1, p0, v7}, Lcom/android/camera/captureintent/state/StateReadyForRecord$21;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;Lcom/android/camera/one/OneCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 531
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getCaptureDataKeeper()Lcom/android/camera/captureintent/CaptureDataKeeper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/captureintent/CaptureDataKeeper;->getCaptureVideoInfo()Lcom/android/camera/captureintent/CaptureVideoInfo;

    move-result-object v8

    .line 533
    .local v8, "info":Lcom/android/camera/captureintent/CaptureVideoInfo;
    if-eqz v8, :cond_1

    .line 534
    sget-object v0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CaptureVideoInfo available, change to StateReviewingVideo"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    .line 537
    invoke-virtual {v8}, Lcom/android/camera/captureintent/CaptureVideoInfo;->getVideoBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/camera/captureintent/CaptureVideoInfo;->getOrientation()I

    move-result v3

    invoke-virtual {v8}, Lcom/android/camera/captureintent/CaptureVideoInfo;->getVideoUri()Lcom/google/common/base/Optional;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/camera/captureintent/CaptureVideoInfo;->getPath()Lcom/google/common/base/Optional;

    move-result-object v5

    invoke-virtual {v8}, Lcom/android/camera/captureintent/CaptureVideoInfo;->getMimeType()Lcom/google/common/base/Optional;

    move-result-object v6

    move-object v0, p0

    .line 535
    invoke-static/range {v0 .. v6}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->from(Lcom/android/camera/captureintent/state/StateReadyForRecord;Lcom/android/camera/async/RefCountBase;Landroid/graphics/Bitmap;ILcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)Lcom/android/camera/captureintent/state/StateReviewingVideo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 539
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->NO_CHANGE:Lcom/google/common/base/Optional;

    goto :goto_0
.end method

.method public onLeave()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 545
    sget-object v1, Lcom/android/camera/captureintent/state/StateReadyForRecord;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onLeave"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 546
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

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

    .line 547
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    .line 548
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

    .line 549
    .local v0, "camera":Lcom/android/camera/one/OneCamera;
    invoke-interface {v0, v3}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 550
    invoke-interface {v0, v3}, Lcom/android/camera/one/OneCamera;->setFaceDetectionListener(Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V

    .line 551
    invoke-interface {v0, v3}, Lcom/android/camera/one/OneCamera;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    .line 552
    invoke-interface {v0, v3}, Lcom/android/camera/one/OneCamera;->setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V

    .line 553
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getFocusController()Lcom/android/camera/ui/focus/FocusController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/focus/FocusController;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 554
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getFocusController()Lcom/android/camera/ui/focus/FocusController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/focus/FocusController;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 555
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 557
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getBurstFacade()Lcom/android/camera/burst/BurstFacade;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    .line 558
    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getBurstFacade()Lcom/android/camera/burst/BurstFacade;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/burst/BurstFacade;->isBurstStopping()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    sget-object v1, Lcom/android/camera/captureintent/state/StateReadyForRecord;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onLeave during record, delay removeSessionListener process."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 563
    :cond_0
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getMainThread()Lcom/android/camera/async/MainThread;

    move-result-object v1

    new-instance v2, Lcom/android/camera/captureintent/state/StateReadyForRecord$22;

    invoke-direct {v2, p0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$22;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 570
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 571
    return-void
.end method

.method public onPowerStateChanged(Z)V
    .locals 2
    .param p1, "isLowPower"    # Z

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

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

    new-instance v1, Lcom/android/camera/captureintent/state/StateReadyForRecord$32;

    invoke-direct {v1, p0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$32;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 818
    return-void
.end method

.class public final Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;
.super Ljava/lang/Object;
.source "ResourceCaptureToolsImpl.java"

# interfaces
.implements Lcom/android/camera/captureintent/resource/ResourceCaptureTools;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mCaptureSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

.field private final mCaptureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFocusController:Lcom/android/camera/ui/focus/FocusController;

.field private final mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

.field private final mMediaActionSound:Landroid/media/MediaActionSound;

.field private final mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

.field private final mResourceConstructed:Lcom/android/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;"
        }
    .end annotation
.end field

.field private final mResourceOpenedCamera:Lcom/android/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;",
            ">;"
        }
    .end annotation
.end field

.field private final mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundLoaded:Z

.field private final mSoundPlayer:Lcom/android/camera/SoundPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ResCapTools"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/ui/focus/FocusController;Lcom/android/camera/hardware/HeadingSensor;Lcom/android/camera/SoundPlayer;)V
    .locals 3
    .param p4, "captureSessionManager"    # Lcom/android/camera/session/CaptureSessionManager;
    .param p5, "focusController"    # Lcom/android/camera/ui/focus/FocusController;
    .param p6, "headingSensor"    # Lcom/android/camera/hardware/HeadingSensor;
    .param p7, "soundPlayer"    # Lcom/android/camera/SoundPlayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;",
            "Lcom/android/camera/session/CaptureSessionManager;",
            "Lcom/android/camera/ui/focus/FocusController;",
            "Lcom/android/camera/hardware/HeadingSensor;",
            "Lcom/android/camera/SoundPlayer;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    .local p2, "resourceSurfaceTexture":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;>;"
    .local p3, "resourceOpenedCamera":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;>;"
    const/4 v2, 0x0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean v2, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mSoundLoaded:Z

    .line 82
    new-instance v0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$1;-><init>(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mCaptureSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .line 531
    new-instance v0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$4;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$4;-><init>(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    .line 265
    sget-object v0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 266
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 267
    iput-object p1, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    .line 268
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->addRef()V

    .line 269
    iput-object p2, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;

    .line 270
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->addRef()V

    .line 271
    iput-object p3, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mResourceOpenedCamera:Lcom/android/camera/async/RefCountBase;

    .line 272
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mResourceOpenedCamera:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->addRef()V

    .line 273
    iput-object p4, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mCaptureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    .line 274
    iput-object p6, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    .line 275
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v0}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 276
    iput-object p7, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 277
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 278
    iput-object p5, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    .line 279
    invoke-virtual {p0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mCaptureSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSessionManager;->addSessionListener(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 280
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/async/RefCountBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->deleteCurrentVideo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mCaptureSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/session/CaptureSessionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mCaptureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    return-object v0
.end method

.method public static create(Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/async/RefCountBase;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceCaptureTools;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    .local p1, "resourceSurfaceTexture":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;>;"
    .local p2, "resourceOpenedCamera":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;>;"
    new-instance v4, Lcom/android/camera/session/CaptureSessionManagerImpl;

    new-instance v2, Lcom/android/camera/captureintent/CaptureIntentSessionFactory;

    .line 240
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraServicesImpl;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraServicesImpl;->getPlaceHolderManager()Lcom/android/camera/session/PlaceholderManager;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/camera/captureintent/CaptureIntentSessionFactory;-><init>(Lcom/android/camera/app/MediaSaver;Lcom/android/camera/session/PlaceholderManager;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/session/SessionStorageManagerImpl;->create(Landroid/content/Context;)Lcom/android/camera/session/SessionStorageManager;

    move-result-object v3

    .line 242
    invoke-virtual {p0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getMainThread()Lcom/android/camera/async/MainThread;

    move-result-object v1

    invoke-direct {v4, v2, v3, v1}, Lcom/android/camera/session/CaptureSessionManagerImpl;-><init>(Lcom/android/camera/session/CaptureSessionFactory;Lcom/android/camera/session/SessionStorageManager;Lcom/android/camera/async/MainThread;)V

    .line 243
    .local v4, "captureSessionManager":Lcom/android/camera/session/CaptureSessionManager;
    new-instance v6, Lcom/android/camera/hardware/HeadingSensor;

    .line 244
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AndroidServices;->provideSensorManager()Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/android/camera/hardware/HeadingSensor;-><init>(Landroid/hardware/SensorManager;)V

    .line 246
    .local v6, "headingSensor":Lcom/android/camera/hardware/HeadingSensor;
    new-instance v5, Lcom/android/camera/ui/focus/FocusController;

    .line 247
    invoke-virtual {p0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->getFocusRing()Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v2

    .line 248
    invoke-virtual {p0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v3

    const/4 v7, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getMainThread()Lcom/android/camera/async/MainThread;

    move-result-object v1

    invoke-direct {v5, v2, v3, v7, v1}, Lcom/android/camera/ui/focus/FocusController;-><init>(Lcom/android/camera/ui/focus/FocusRing;Lcom/android/camera/ui/FaceView;Lcom/android/camera/ui/focus/FocusSound;Lcom/android/camera/async/MainThread;)V

    .line 251
    .local v5, "focusController":Lcom/android/camera/ui/focus/FocusController;
    new-instance v0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    .line 253
    invoke-virtual {p0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getSoundPlayer()Lcom/android/camera/SoundPlayer;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;-><init>(Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/ui/focus/FocusController;Lcom/android/camera/hardware/HeadingSensor;Lcom/android/camera/SoundPlayer;)V

    .line 254
    .local v0, "resourceCaptureTools":Lcom/android/camera/captureintent/resource/ResourceCaptureTools;
    new-instance v1, Lcom/android/camera/async/RefCountBase;

    invoke-direct {v1, v0}, Lcom/android/camera/async/RefCountBase;-><init>(Lcom/android/camera/async/SafeCloseable;)V

    return-object v1
.end method

.method private deleteCurrentVideo(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 224
    if-eqz p1, :cond_0

    .line 225
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    sget-object v1, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abandoned video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 230
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 284
    sget-object v0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->getBurstFacade()Lcom/android/camera/burst/BurstFacade;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->getBurstFacade()Lcom/android/camera/burst/BurstFacade;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->isBurstStopping()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    sget-object v0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "close during record, delay removeSessionListener process."

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 294
    :goto_0
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->release()V

    .line 295
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 296
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 297
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mResourceOpenedCamera:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 298
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v0}, Lcom/android/camera/hardware/HeadingSensor;->deactivate()V

    .line 300
    iget-boolean v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mSoundLoaded:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v2, 0x7f07001c

    invoke-virtual {v0, v2}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 302
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v2, 0x7f07001b

    invoke-virtual {v0, v2}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mSoundLoaded:Z

    .line 307
    :cond_1
    monitor-exit v1

    .line 308
    return-void

    .line 291
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mCaptureSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v2}, Lcom/android/camera/session/CaptureSessionManager;->removeSessionListener(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBurstFacade()Lcom/android/camera/burst/BurstFacade;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getBurstFacade()Lcom/android/camera/burst/BurstFacade;

    move-result-object v0

    return-object v0
.end method

.method public getCamera()Lcom/android/camera/one/OneCamera;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mResourceOpenedCamera:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;->getCamera()Lcom/android/camera/one/OneCamera;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mCaptureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    return-object v0
.end method

.method public getFaceDetectionListener()Lcom/android/camera/one/OneCamera$FaceDetectionListener;
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v0

    return-object v0
.end method

.method public getFocusController()Lcom/android/camera/ui/focus/FocusController;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    return-object v0
.end method

.method public getMainThread()Lcom/android/camera/async/MainThread;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getMainThread()Lcom/android/camera/async/MainThread;

    move-result-object v0

    return-object v0
.end method

.method public getMediaActionSound()Landroid/media/MediaActionSound;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method public getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/OrientationManager;->getDisplayRotation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v0

    return v0
.end method

.method public getResourceConstructed()Lcom/android/camera/async/RefCountBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    return-object v0
.end method

.method public getResourceOpenedCamera()Lcom/android/camera/async/RefCountBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mResourceOpenedCamera:Lcom/android/camera/async/RefCountBase;

    return-object v0
.end method

.method public getResourceSurfaceTexture()Lcom/android/camera/async/RefCountBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onFirstPreviewReady(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V
    .locals 2
    .param p1, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mSoundLoaded:Z

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 354
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 356
    sget-object v0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$5;->$SwitchMap$com$android$camera$one$OneCameraCaptureSetting$CaptureMode:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 367
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mSoundLoaded:Z

    .line 369
    :cond_0
    return-void

    .line 358
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mMediaActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    goto :goto_0

    .line 361
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mMediaActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 362
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mMediaActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    goto :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onVideoShutterClick()V
    .locals 14

    .prologue
    const-wide/32 v6, 0x2faf080

    .line 433
    sget-object v1, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onVideoShutterClick"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->hideModeOptionsExpandButtons()V

    .line 436
    iget-object v1, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v12

    .line 438
    .local v12, "storageSpaceBytes":J
    cmp-long v1, v12, v6

    if-gtz v1, :cond_0

    .line 439
    sget-object v1, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVideoShutterClick ignore - Not enough space or storage not ready. remaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 490
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->getBurstFacade()Lcom/android/camera/burst/BurstFacade;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 444
    invoke-virtual {p0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->getBurstFacade()Lcom/android/camera/burst/BurstFacade;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/burst/BurstFacade;->isBurstRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    invoke-virtual {p0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->getBurstFacade()Lcom/android/camera/burst/BurstFacade;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/burst/BurstFacade;->stopBurst()Z

    goto :goto_0

    .line 446
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->getBurstFacade()Lcom/android/camera/burst/BurstFacade;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/burst/BurstFacade;->isBurstStopping()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 447
    sget-object v1, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onVideoShutterClick ignore - mVideoController not stop complete"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_2
    sub-long v8, v12, v6

    .line 450
    .local v8, "remainingStorageBytes":J
    sget-object v1, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVideoShutterClick - remainingStorageBytes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 453
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    .line 454
    .local v5, "deviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    invoke-virtual {p0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->getResourceOpenedCamera()Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;->getCameraCharacteristics()Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->from(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v10

    .line 456
    .local v10, "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    invoke-virtual {p0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->getBurstFacade()Lcom/android/camera/burst/BurstFacade;

    move-result-object v1

    .line 457
    invoke-virtual {p0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->getMainThread()Lcom/android/camera/async/MainThread;

    move-result-object v2

    new-instance v3, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$3;

    invoke-direct {v3, p0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$3;-><init>(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;)V

    sget-object v4, Lcom/android/camera/burst/BurstFacade$BurstIntent;->VIDEO:Lcom/android/camera/burst/BurstFacade$BurstIntent;

    .line 480
    invoke-virtual {p0}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->getCamera()Lcom/android/camera/one/OneCamera;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/one/OneCamera;->getDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    .line 481
    invoke-interface {v10}, Lcom/android/camera/one/v2/photo/ImageRotationCalculator;->toImageRotation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v7

    .line 456
    invoke-interface/range {v1 .. v9}, Lcom/android/camera/burst/BurstFacade;->startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 483
    .end local v5    # "deviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .end local v10    # "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Cannot start record : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 488
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "remainingStorageBytes":J
    :cond_3
    sget-object v1, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Record fail, VideoController not initial."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public playCountDownSound(I)V
    .locals 4
    .param p1, "remainingSeconds"    # I

    .prologue
    const v3, 0x3f19999a    # 0.6f

    .line 494
    iget-boolean v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mSoundLoaded:Z

    if-nez v0, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_shutter_sound_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 499
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/SoundPlayer;->play(IF)V

    goto :goto_0

    .line 500
    :cond_2
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 501
    :cond_3
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/SoundPlayer;->play(IF)V

    goto :goto_0
.end method

.method public takePictureNow(Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/one/OneCamera$ScreenFlashController;Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V
    .locals 24
    .param p1, "pictureCallback"    # Lcom/android/camera/one/OneCamera$PictureCallback;
    .param p2, "screenFlashController"    # Lcom/android/camera/one/OneCamera$ScreenFlashController;
    .param p3, "captureLoggingInfo"    # Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;

    .prologue
    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v21

    check-cast v21, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    .line 377
    .local v21, "resource":Lcom/android/camera/captureintent/resource/ResourceConstructed;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mResourceOpenedCamera:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v20

    check-cast v20, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;

    .line 383
    .local v20, "openedCamera":Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;
    invoke-interface/range {v21 .. v21}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getMainThread()Lcom/android/camera/async/MainThread;

    move-result-object v2

    new-instance v8, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v8, v0, v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$2;-><init>(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;Lcom/android/camera/captureintent/resource/ResourceConstructed;)V

    invoke-virtual {v2, v8}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 392
    .local v4, "timestamp":J
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "fileName":Ljava/lang/String;
    invoke-interface/range {v21 .. v21}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    .line 395
    .local v6, "location":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mCaptureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mCaptureSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .line 396
    invoke-interface/range {v2 .. v7}, Lcom/android/camera/session/CaptureSessionManager;->createNewSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v22

    .line 397
    .local v22, "session":Lcom/android/camera/session/CaptureSession;
    const/4 v2, 0x0

    invoke-interface/range {v20 .. v20}, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;->getPictureSize()Lcom/android/camera/util/Size;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v8}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    .line 400
    invoke-interface/range {v21 .. v21}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v23

    .line 401
    .local v23, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-static/range {v23 .. v23}, Lcom/android/camera/settings/Keys;->areGridLinesOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v19

    .line 416
    .local v19, "isGridLinesOn":Z
    new-instance v7, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    .line 417
    invoke-interface/range {v22 .. v22}, Lcom/android/camera/session/CaptureSession;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 418
    invoke-interface/range {v21 .. v21}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v9

    .line 419
    invoke-interface/range {v22 .. v22}, Lcom/android/camera/session/CaptureSession;->getLocation()Landroid/location/Location;

    move-result-object v10

    .line 420
    invoke-interface/range {v21 .. v21}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    .line 424
    invoke-virtual {v2}, Lcom/android/camera/hardware/HeadingSensor;->getCurrentHeading()I

    move-result v15

    .line 425
    invoke-interface/range {v20 .. v20}, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;->getZoomRatio()F

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v7 .. v18}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;-><init>(Ljava/lang/String;ILandroid/location/Location;Ljava/io/File;Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/one/OneCamera$ScreenFlashController;Lcom/android/camera/one/OneCamera$PictureSaverCallback;IFFZ)V

    .line 428
    .local v7, "params":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    invoke-interface/range {v20 .. v20}, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;->getCamera()Lcom/android/camera/one/OneCamera;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v2, v7, v0}, Lcom/android/camera/one/OneCamera;->takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V

    .line 429
    return-void
.end method

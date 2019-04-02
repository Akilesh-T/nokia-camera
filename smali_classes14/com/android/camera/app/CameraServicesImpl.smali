.class public Lcom/android/camera/app/CameraServicesImpl;
.super Ljava/lang/Object;
.source "CameraServicesImpl.java"

# interfaces
.implements Lcom/android/camera/app/CameraServices;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/CameraServicesImpl$Singleton;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

.field private final mMediaSaver:Lcom/android/camera/app/MediaSaver;

.field private final mMemoryManager:Lcom/android/camera/app/MemoryManagerImpl;

.field private final mMotionManager:Lcom/android/camera/app/MotionManager;

.field private final mPlaceHolderManager:Lcom/android/camera/session/PlaceholderManager;

.field private final mPostProcessManager:Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;

.field private final mRemoteShutterListener:Lcom/android/camera/remote/RemoteShutterListener;

.field private final mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

.field private final mSettingsManager:Lcom/android/camera/settings/SettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CameraServicesImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/app/CameraServicesImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v3

    const-string v4, "CameraServicesImpl init"

    invoke-virtual {v3, v4}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 74
    .local v1, "guard":Lcom/android/camera/stats/profiler/Profile;
    new-instance v3, Lcom/android/camera/MediaSaverImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/MediaSaverImpl;-><init>(Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/android/camera/app/CameraServicesImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    .line 75
    const-string v3, "MediaSaverImpl init"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 76
    new-instance v3, Lcom/android/camera/session/PlaceholderManager;

    invoke-direct {v3, p1}, Lcom/android/camera/session/PlaceholderManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/camera/app/CameraServicesImpl;->mPlaceHolderManager:Lcom/android/camera/session/PlaceholderManager;

    .line 77
    const-string v3, "PlaceholderManager init"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 78
    invoke-static {p1}, Lcom/android/camera/session/SessionStorageManagerImpl;->create(Landroid/content/Context;)Lcom/android/camera/session/SessionStorageManager;

    move-result-object v2

    .line 79
    .local v2, "mSessionStorageManager":Lcom/android/camera/session/SessionStorageManager;
    const-string v3, "SessionStorageManagerImpl init"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 81
    new-instance v3, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;

    invoke-direct {v3, p1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/camera/app/CameraServicesImpl;->mPostProcessManager:Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;

    .line 82
    const-string v3, "PostProcessManager init"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/android/camera/session/CaptureSessionFactoryImpl;

    iget-object v3, p0, Lcom/android/camera/app/CameraServicesImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    iget-object v4, p0, Lcom/android/camera/app/CameraServicesImpl;->mPlaceHolderManager:Lcom/android/camera/session/PlaceholderManager;

    invoke-direct {v0, v3, v4, v2}, Lcom/android/camera/session/CaptureSessionFactoryImpl;-><init>(Lcom/android/camera/app/MediaSaver;Lcom/android/camera/session/PlaceholderManager;Lcom/android/camera/session/SessionStorageManager;)V

    .line 86
    .local v0, "captureSessionFactory":Lcom/android/camera/session/CaptureSessionFactory;
    const-string v3, "CaptureSessionFactoryImpl init"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 87
    new-instance v3, Lcom/android/camera/session/CaptureSessionManagerImpl;

    .line 88
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v4

    invoke-direct {v3, v0, v2, v4}, Lcom/android/camera/session/CaptureSessionManagerImpl;-><init>(Lcom/android/camera/session/CaptureSessionFactory;Lcom/android/camera/session/SessionStorageManager;Lcom/android/camera/async/MainThread;)V

    iput-object v3, p0, Lcom/android/camera/app/CameraServicesImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    .line 89
    const-string v3, "CaptureSessionManagerImpl init"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/android/camera/app/CameraServicesImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    invoke-static {p1, v3}, Lcom/android/camera/app/MemoryManagerImpl;->create(Landroid/content/Context;Lcom/android/camera/app/MediaSaver;)Lcom/android/camera/app/MemoryManagerImpl;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/app/CameraServicesImpl;->mMemoryManager:Lcom/android/camera/app/MemoryManagerImpl;

    .line 91
    const-string v3, "MemoryManagerImpl init"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 92
    invoke-static {p1}, Lcom/android/camera/util/RemoteShutterHelper;->create(Landroid/content/Context;)Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/app/CameraServicesImpl;->mRemoteShutterListener:Lcom/android/camera/remote/RemoteShutterListener;

    .line 93
    const-string v3, "RemoteShutterHelper init"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 94
    new-instance v3, Lcom/android/camera/settings/SettingsManager;

    invoke-direct {v3, p1}, Lcom/android/camera/settings/SettingsManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/camera/app/CameraServicesImpl;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 95
    const-string v3, "SettingsManager init"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 96
    new-instance v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iget-object v4, p0, Lcom/android/camera/app/CameraServicesImpl;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    invoke-direct {v3, p1, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;-><init>(Landroid/content/Context;Lcom/android/camera/settings/SettingsManager;)V

    iput-object v3, p0, Lcom/android/camera/app/CameraServicesImpl;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    .line 97
    const-string v3, "LiveBroadcastManager init"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 99
    new-instance v3, Lcom/android/camera/app/MotionManager;

    invoke-direct {v3, p1}, Lcom/android/camera/app/MotionManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/camera/app/CameraServicesImpl;->mMotionManager:Lcom/android/camera/app/MotionManager;

    .line 100
    const-string v3, "MotionManager init"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 101
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/camera/app/CameraServicesImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/camera/app/CameraServicesImpl$1;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraServicesImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static instance()Lcom/android/camera/app/CameraServicesImpl;
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl$Singleton;->access$100()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/app/CameraServicesImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    return-object v0
.end method

.method public getLiveBroadcastManager()Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/app/CameraServicesImpl;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    return-object v0
.end method

.method public getMediaSaver()Lcom/android/camera/app/MediaSaver;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/app/CameraServicesImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    return-object v0
.end method

.method public getMemoryManager()Lcom/android/camera/app/MemoryManager;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/app/CameraServicesImpl;->mMemoryManager:Lcom/android/camera/app/MemoryManagerImpl;

    return-object v0
.end method

.method public getMotionManager()Lcom/android/camera/app/MotionManager;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/app/CameraServicesImpl;->mMotionManager:Lcom/android/camera/app/MotionManager;

    return-object v0
.end method

.method public getPlaceHolderManager()Lcom/android/camera/session/PlaceholderManager;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/camera/app/CameraServicesImpl;->mPlaceHolderManager:Lcom/android/camera/session/PlaceholderManager;

    return-object v0
.end method

.method public getPostProcessManager()Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/app/CameraServicesImpl;->mPostProcessManager:Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;

    return-object v0
.end method

.method public getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/app/CameraServicesImpl;->mRemoteShutterListener:Lcom/android/camera/remote/RemoteShutterListener;

    return-object v0
.end method

.method public getSettingsManager()Lcom/android/camera/settings/SettingsManager;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/camera/app/CameraServicesImpl;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    return-object v0
.end method

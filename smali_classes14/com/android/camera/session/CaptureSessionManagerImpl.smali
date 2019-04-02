.class public Lcom/android/camera/session/CaptureSessionManagerImpl;
.super Ljava/lang/Object;
.source "CaptureSessionManagerImpl.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSessionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mFailedSessionMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandler:Lcom/android/camera/async/MainThread;

.field private final mSessionFactory:Lcom/android/camera/session/CaptureSessionFactory;

.field private final mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

.field private final mSessionStorageManager:Lcom/android/camera/session/SessionStorageManager;

.field private final mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/camera/session/CaptureSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/session/CaptureSessionManager$SessionListener;",
            ">;"
        }
    .end annotation
.end field

.field mWaitCaptureFinish:Landroid/os/ConditionVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 360
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CaptureSessMgrImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/session/CaptureSessionManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/session/CaptureSessionFactory;Lcom/android/camera/session/SessionStorageManager;Lcom/android/camera/async/MainThread;)V
    .locals 2
    .param p1, "sessionFactory"    # Lcom/android/camera/session/CaptureSessionFactory;
    .param p2, "sessionStorageManager"    # Lcom/android/camera/session/SessionStorageManager;
    .param p3, "mainHandler"    # Lcom/android/camera/async/MainThread;

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mFailedSessionMessages:Ljava/util/HashMap;

    .line 374
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mTaskListeners:Ljava/util/LinkedList;

    .line 375
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mWaitCaptureFinish:Landroid/os/ConditionVariable;

    .line 388
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mSessionFactory:Lcom/android/camera/session/CaptureSessionFactory;

    .line 389
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 390
    new-instance v0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;-><init>(Lcom/android/camera/session/CaptureSessionManagerImpl;Lcom/android/camera/session/CaptureSessionManagerImpl$1;)V

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    .line 391
    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mSessionStorageManager:Lcom/android/camera/session/SessionStorageManager;

    .line 392
    iput-object p3, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mMainHandler:Lcom/android/camera/async/MainThread;

    .line 393
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mWaitCaptureFinish:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 394
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/session/CaptureSessionManagerImpl;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionManagerImpl;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mTaskListeners:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/android/camera/async/MainThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionManagerImpl;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mMainHandler:Lcom/android/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/session/CaptureSessionManagerImpl;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionManagerImpl;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/camera/session/CaptureSessionManagerImpl;->finalizeSession(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/session/CaptureSessionManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionManagerImpl;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private finalizeSession(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 541
    invoke-virtual {p0, p1}, Lcom/android/camera/session/CaptureSessionManagerImpl;->removeSession(Landroid/net/Uri;)Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    .line 542
    .local v0, "session":Lcom/android/camera/session/CaptureSession;
    if-eqz v0, :cond_0

    .line 543
    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->finalizeSession()V

    .line 545
    :cond_0
    return-void
.end method


# virtual methods
.method public addSessionListener(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 458
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mTaskListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mTaskListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mTaskListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_0
    monitor-exit v1

    .line 463
    return-void

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createNewBurstSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "sessionStartMillis"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mSessionFactory:Lcom/android/camera/session/CaptureSessionFactory;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/camera/session/CaptureSessionFactory;->createNewBurstSession(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    return-object v0
.end method

.method public createNewMicroVideoSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
    .locals 10
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "sessionStartMillis"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "previewDataRenderFactory"    # Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;
    .param p6, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mSessionFactory:Lcom/android/camera/session/CaptureSessionFactory;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v0 .. v8}, Lcom/android/camera/session/CaptureSessionFactory;->createNewMicroVideoSession(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    return-object v0
.end method

.method public createNewPanoSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "sessionStartMillis"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mSessionFactory:Lcom/android/camera/session/CaptureSessionFactory;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/camera/session/CaptureSessionFactory;->createNewPanoSession(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    return-object v0
.end method

.method public createNewSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "sessionStartMillis"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mSessionFactory:Lcom/android/camera/session/CaptureSessionFactory;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/camera/session/CaptureSessionFactory;->createNewSession(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    return-object v0
.end method

.method public createNewStreamingSession(Ljava/lang/String;Landroid/net/Uri;Landroid/media/CamcorderProfile;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
    .locals 10
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "externalUri"    # Landroid/net/Uri;
    .param p3, "camcorderProfile"    # Landroid/media/CamcorderProfile;
    .param p4, "sessionStartMillis"    # J
    .param p6, "location"    # Landroid/location/Location;
    .param p7, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mSessionFactory:Lcom/android/camera/session/CaptureSessionFactory;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v0 .. v9}, Lcom/android/camera/session/CaptureSessionFactory;->createNewStreamingSession(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;Landroid/net/Uri;Landroid/media/CamcorderProfile;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    return-object v0
.end method

.method public createNewVideoSession(Ljava/lang/String;Landroid/net/Uri;Landroid/media/CamcorderProfile;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
    .locals 10
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "externalUri"    # Landroid/net/Uri;
    .param p3, "camcorderProfile"    # Landroid/media/CamcorderProfile;
    .param p4, "sessionStartMillis"    # J
    .param p6, "location"    # Landroid/location/Location;
    .param p7, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mSessionFactory:Lcom/android/camera/session/CaptureSessionFactory;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v0 .. v9}, Lcom/android/camera/session/CaptureSessionFactory;->createNewVideoSession(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;Landroid/net/Uri;Landroid/media/CamcorderProfile;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    return-object v0
.end method

.method public fillTemporarySession(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mMainHandler:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/session/CaptureSessionManagerImpl$1;-><init>(Lcom/android/camera/session/CaptureSessionManagerImpl;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 533
    return-void
.end method

.method public getErrorMessageId(Landroid/net/Uri;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 486
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mFailedSessionMessages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 487
    .local v0, "messageId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 490
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSession(Landroid/net/Uri;)Lcom/android/camera/session/CaptureSession;
    .locals 2
    .param p1, "sessionUri"    # Landroid/net/Uri;

    .prologue
    .line 438
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 439
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/CaptureSession;

    goto :goto_0
.end method

.method public getSessionDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "subDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mSessionStorageManager:Lcom/android/camera/session/SessionStorageManager;

    invoke-interface {v0, p1}, Lcom/android/camera/session/SessionStorageManager;->getSessionDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getSessionsSize()I
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public hasErrorMessage(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mFailedSessionMessages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSessionAlive(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "sessionUri"    # Landroid/net/Uri;

    .prologue
    .line 505
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 506
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCaptureFinish()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mWaitCaptureFinish:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 517
    return-void
.end method

.method public onCaptureStart()V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mWaitCaptureFinish:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 512
    return-void
.end method

.method public putErrorMessage(Landroid/net/Uri;I)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "failureMessageId"    # I

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mFailedSessionMessages:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    return-void
.end method

.method public putSession(Landroid/net/Uri;Lcom/android/camera/session/CaptureSession;)V
    .locals 2
    .param p1, "sessionUri"    # Landroid/net/Uri;
    .param p2, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 432
    if-nez p1, :cond_0

    .line 434
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeErrorMessage(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mFailedSessionMessages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    return-void
.end method

.method public removeSession(Landroid/net/Uri;)Lcom/android/camera/session/CaptureSession;
    .locals 2
    .param p1, "sessionUri"    # Landroid/net/Uri;

    .prologue
    .line 452
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 453
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/CaptureSession;

    goto :goto_0
.end method

.method public removeSessionListener(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 467
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mTaskListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mTaskListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mTaskListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 471
    :cond_0
    monitor-exit v1

    .line 472
    return-void

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitCaptureFinish()V
    .locals 4

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mWaitCaptureFinish:Landroid/os/ConditionVariable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 449
    return-void
.end method

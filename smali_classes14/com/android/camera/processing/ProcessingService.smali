.class public Lcom/android/camera/processing/ProcessingService;
.super Landroid/app/Service;
.source "ProcessingService.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSession$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/processing/ProcessingService$ServiceController;
    }
.end annotation


# static fields
.field public static final ACTION_PAUSE_PROCESSING_SERVICE:Ljava/lang/String; = "com.android.camera.processing.PAUSE"

.field public static final ACTION_RESUME_PROCESSING_SERVICE:Ljava/lang/String; = "com.android.camera.processing.RESUME"

.field private static final CAMERA_NOTIFICATION_ID:I = 0x2

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final THREAD_PRIORITY:I = 0xa


# instance fields
.field private mCurrentTask:Lcom/android/camera/processing/ProcessingTask;

.field private mNotificationBuilder:Landroid/app/Notification$Builder;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private volatile mPaused:Z

.field private mProcessingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

.field private mProcessingThread:Ljava/lang/Thread;

.field private final mServiceController:Lcom/android/camera/processing/ProcessingService$ServiceController;

.field private mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

.field private final mSuspendStatusLock:Ljava/util/concurrent/locks/Lock;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ProcessingService"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/processing/ProcessingService;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 93
    new-instance v0, Lcom/android/camera/processing/ProcessingService$ServiceController;

    invoke-direct {v0, p0}, Lcom/android/camera/processing/ProcessingService$ServiceController;-><init>(Lcom/android/camera/processing/ProcessingService;)V

    iput-object v0, p0, Lcom/android/camera/processing/ProcessingService;->mServiceController:Lcom/android/camera/processing/ProcessingService$ServiceController;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/processing/ProcessingService;->mPaused:Z

    .line 102
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/ProcessingService;->mSuspendStatusLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/processing/ProcessingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/processing/ProcessingService;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/camera/processing/ProcessingService;->pause()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/processing/ProcessingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/processing/ProcessingService;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/camera/processing/ProcessingService;->resume()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/processing/ProcessingService;)Lcom/android/camera/processing/ProcessingServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/processing/ProcessingService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->mProcessingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/processing/ProcessingService;)Lcom/android/camera/processing/ProcessingTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/processing/ProcessingService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->mCurrentTask:Lcom/android/camera/processing/ProcessingTask;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/processing/ProcessingService;Lcom/android/camera/processing/ProcessingTask;)Lcom/android/camera/processing/ProcessingTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/processing/ProcessingService;
    .param p1, "x1"    # Lcom/android/camera/processing/ProcessingTask;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/processing/ProcessingService;->mCurrentTask:Lcom/android/camera/processing/ProcessingTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/processing/ProcessingService;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/processing/ProcessingService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->mSuspendStatusLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/processing/ProcessingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/processing/ProcessingService;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/camera/processing/ProcessingService;->mPaused:Z

    return v0
.end method

.method static synthetic access$600()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/camera/processing/ProcessingService;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method private asyncProcessAllTasksAndShutdown()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->mProcessingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 191
    :cond_0
    new-instance v0, Lcom/android/camera/processing/ProcessingService$1;

    const-string v1, "CameraProcessingThread"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/processing/ProcessingService$1;-><init>(Lcom/android/camera/processing/ProcessingService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/processing/ProcessingService;->mProcessingThread:Ljava/lang/Thread;

    .line 213
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->mProcessingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private createInProgressNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 4

    .prologue
    .line 334
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0201cb

    .line 335
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 337
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f08001c

    .line 338
    invoke-virtual {p0, v1}, Lcom/android/camera/processing/ProcessingService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 334
    return-object v0
.end method

.method private getServices()Lcom/android/camera/app/CameraServices;
    .locals 1

    .prologue
    .line 323
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v0

    return-object v0
.end method

.method private pause()V
    .locals 2

    .prologue
    .line 158
    sget-object v0, Lcom/android/camera/processing/ProcessingService;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Pausing"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->mSuspendStatusLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/processing/ProcessingService;->mPaused:Z

    .line 162
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->mCurrentTask:Lcom/android/camera/processing/ProcessingTask;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->mCurrentTask:Lcom/android/camera/processing/ProcessingTask;

    invoke-interface {v0}, Lcom/android/camera/processing/ProcessingTask;->suspend()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->mSuspendStatusLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 168
    return-void

    .line 166
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/processing/ProcessingService;->mSuspendStatusLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private postNotification()V
    .locals 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/camera/processing/ProcessingService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 328
    return-void
.end method

.method private resetNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 315
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const-string v1, "\u2026"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 316
    invoke-direct {p0}, Lcom/android/camera/processing/ProcessingService;->postNotification()V

    .line 317
    return-void
.end method

.method private resume()V
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lcom/android/camera/processing/ProcessingService;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Resuming"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->mSuspendStatusLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/processing/ProcessingService;->mPaused:Z

    .line 175
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->mCurrentTask:Lcom/android/camera/processing/ProcessingTask;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->mCurrentTask:Lcom/android/camera/processing/ProcessingTask;

    invoke-interface {v0}, Lcom/android/camera/processing/ProcessingTask;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->mSuspendStatusLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 181
    return-void

    .line 179
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/processing/ProcessingService;->mSuspendStatusLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 106
    invoke-static {}, Lcom/android/camera/processing/ProcessingServiceManager;->instance()Lcom/android/camera/processing/ProcessingServiceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/processing/ProcessingService;->mProcessingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    .line 107
    invoke-direct {p0}, Lcom/android/camera/processing/ProcessingService;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/processing/ProcessingService;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    .line 110
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/util/AndroidServices;->providePowerManager()Landroid/os/PowerManager;

    move-result-object v1

    .line 111
    .local v1, "powerManager":Landroid/os/PowerManager;
    const/4 v2, 0x1

    sget-object v3, Lcom/android/camera/processing/ProcessingService;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-virtual {v3}, Lcom/android/camera/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/processing/ProcessingService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 112
    iget-object v2, p0, Lcom/android/camera/processing/ProcessingService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.android.camera.processing.PAUSE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v2, "com.android.camera.processing.RESUME"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/processing/ProcessingService;->mServiceController:Lcom/android/camera/processing/ProcessingService$ServiceController;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 118
    invoke-direct {p0}, Lcom/android/camera/processing/ProcessingService;->createInProgressNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/processing/ProcessingService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 119
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/util/AndroidServices;->provideNotificationManager()Landroid/app/NotificationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/processing/ProcessingService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 120
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/android/camera/processing/ProcessingService;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Shutting down"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 132
    :cond_0
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/processing/ProcessingService;->mServiceController:Lcom/android/camera/processing/ProcessingService$ServiceController;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/processing/ProcessingService;->stopForeground(Z)V

    .line 134
    return-void
.end method

.method public onProgressChanged(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 344
    invoke-direct {p0}, Lcom/android/camera/processing/ProcessingService;->postNotification()V

    .line 345
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 138
    sget-object v0, Lcom/android/camera/processing/ProcessingService;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Starting in foreground."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/camera/processing/ProcessingService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/processing/ProcessingService;->startForeground(ILandroid/app/Notification;)V

    .line 144
    invoke-direct {p0}, Lcom/android/camera/processing/ProcessingService;->asyncProcessAllTasksAndShutdown()V

    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public onStatusMessageChanged(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 349
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    if-lez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/processing/ProcessingService;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 350
    invoke-direct {p0}, Lcom/android/camera/processing/ProcessingService;->postNotification()V

    .line 351
    return-void

    .line 349
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method processAndNotify(Lcom/android/camera/processing/ProcessingTask;)V
    .locals 7
    .param p1, "task"    # Lcom/android/camera/processing/ProcessingTask;

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    sget-object v0, Lcom/android/camera/processing/ProcessingService;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Reference to ProcessingTask is null"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 312
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-interface {p1}, Lcom/android/camera/processing/ProcessingTask;->getSession()Lcom/android/camera/session/CaptureSession;

    move-result-object v6

    .line 228
    .local v6, "session":Lcom/android/camera/session/CaptureSession;
    if-nez v6, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    invoke-interface {p1}, Lcom/android/camera/processing/ProcessingTask;->getName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {p1}, Lcom/android/camera/processing/ProcessingTask;->getLocation()Landroid/location/Location;

    move-result-object v4

    new-instance v5, Lcom/android/camera/processing/ProcessingService$2;

    invoke-direct {v5, p0}, Lcom/android/camera/processing/ProcessingService$2;-><init>(Lcom/android/camera/processing/ProcessingService;)V

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/CaptureSessionManager;->createNewSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v6

    .line 302
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/processing/ProcessingService;->resetNotification()V

    .line 306
    invoke-interface {v6, p0}, Lcom/android/camera/session/CaptureSession;->addProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V

    .line 308
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 309
    sget-object v0, Lcom/android/camera/processing/ProcessingService;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Processing start"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 310
    invoke-direct {p0}, Lcom/android/camera/processing/ProcessingService;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {p1, p0, v0, v6}, Lcom/android/camera/processing/ProcessingTask;->process(Landroid/content/Context;Lcom/android/camera/app/CameraServices;Lcom/android/camera/session/CaptureSession;)Lcom/android/camera/processing/ProcessingTask$ProcessingResult;

    .line 311
    sget-object v0, Lcom/android/camera/processing/ProcessingService;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Processing done"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

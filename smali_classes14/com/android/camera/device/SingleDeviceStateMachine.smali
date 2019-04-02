.class public Lcom/android/camera/device/SingleDeviceStateMachine;
.super Ljava/lang/Object;
.source "SingleDeviceStateMachine.java"

# interfaces
.implements Lcom/android/camera/device/SingleDeviceCloseListener;
.implements Lcom/android/camera/device/SingleDeviceOpenListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;,
        Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TDevice:",
        "Ljava/lang/Object;",
        "TKey:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/device/SingleDeviceCloseListener;",
        "Lcom/android/camera/device/SingleDeviceOpenListener",
        "<TTDevice;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mDeviceActions:Lcom/android/camera/device/SingleDeviceActions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/device/SingleDeviceActions",
            "<TTDevice;>;"
        }
    .end annotation
.end field

.field private final mDeviceKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTKey;"
        }
    .end annotation
.end field

.field private final mDeviceLifetime:Lcom/android/camera/async/Lifetime;

.field private mDeviceRequest:Lcom/android/camera/device/SingleDeviceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/device/SingleDeviceRequest",
            "<TTDevice;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDeviceState:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mIsShutdown:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mLogger:Lcom/android/camera/debug/Logger;

.field private mOpenDevice:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTDevice;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mShutdownListener:Lcom/android/camera/device/SingleDeviceShutdownListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/device/SingleDeviceShutdownListener",
            "<TTKey;>;"
        }
    .end annotation
.end field

.field private mTargetState:Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "DeviceStateM"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/device/SingleDeviceStateMachine;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/device/SingleDeviceActions;Ljava/lang/Object;Lcom/android/camera/device/SingleDeviceShutdownListener;Lcom/android/camera/debug/Logger$Factory;)V
    .locals 1
    .param p4, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/device/SingleDeviceActions",
            "<TTDevice;>;TTKey;",
            "Lcom/android/camera/device/SingleDeviceShutdownListener",
            "<TTKey;>;",
            "Lcom/android/camera/debug/Logger$Factory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/android/camera/device/SingleDeviceStateMachine;, "Lcom/android/camera/device/SingleDeviceStateMachine<TTDevice;TTKey;>;"
    .local p1, "deviceActions":Lcom/android/camera/device/SingleDeviceActions;, "Lcom/android/camera/device/SingleDeviceActions<TTDevice;>;"
    .local p2, "deviceKey":Ljava/lang/Object;, "TTKey;"
    .local p3, "deviceShutdownListener":Lcom/android/camera/device/SingleDeviceShutdownListener;, "Lcom/android/camera/device/SingleDeviceShutdownListener<TTKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceActions:Lcom/android/camera/device/SingleDeviceActions;

    .line 102
    iput-object p3, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mShutdownListener:Lcom/android/camera/device/SingleDeviceShutdownListener;

    .line 103
    iput-object p2, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceKey:Ljava/lang/Object;

    .line 105
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 106
    new-instance v0, Lcom/android/camera/async/Lifetime;

    invoke-direct {v0}, Lcom/android/camera/async/Lifetime;-><init>()V

    iput-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceLifetime:Lcom/android/camera/async/Lifetime;

    .line 107
    sget-object v0, Lcom/android/camera/device/SingleDeviceStateMachine;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-interface {p4, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLogger:Lcom/android/camera/debug/Logger;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mIsShutdown:Z

    .line 110
    sget-object v0, Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;->CLOSED:Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;

    iput-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mTargetState:Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;

    .line 111
    sget-object v0, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;->CLOSED:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    iput-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceState:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/device/SingleDeviceStateMachine;Lcom/android/camera/device/SingleDeviceRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/device/SingleDeviceStateMachine;
    .param p1, "x1"    # Lcom/android/camera/device/SingleDeviceRequest;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/camera/device/SingleDeviceStateMachine;->requestCloseIfCurrentRequest(Lcom/android/camera/device/SingleDeviceRequest;)V

    return-void
.end method

.method private closeRequest()V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 351
    .local p0, "this":Lcom/android/camera/device/SingleDeviceStateMachine;, "Lcom/android/camera/device/SingleDeviceStateMachine<TTDevice;TTKey;>;"
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceRequest:Lcom/android/camera/device/SingleDeviceRequest;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceRequest:Lcom/android/camera/device/SingleDeviceRequest;

    invoke-virtual {v0}, Lcom/android/camera/device/SingleDeviceRequest;->close()V

    .line 354
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceRequest:Lcom/android/camera/device/SingleDeviceRequest;

    .line 355
    return-void
.end method

.method private closeRequestWithException(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/Throwable;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/camera/device/SingleDeviceStateMachine;, "Lcom/android/camera/device/SingleDeviceStateMachine<TTDevice;TTKey;>;"
    const/4 v3, 0x0

    .line 340
    iput-object v3, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mOpenDevice:Ljava/lang/Object;

    .line 341
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceRequest:Lcom/android/camera/device/SingleDeviceRequest;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There was a problem closing device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 344
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceRequest:Lcom/android/camera/device/SingleDeviceRequest;

    invoke-virtual {v0, p1}, Lcom/android/camera/device/SingleDeviceRequest;->closeWithException(Ljava/lang/Throwable;)V

    .line 345
    iput-object v3, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceRequest:Lcom/android/camera/device/SingleDeviceRequest;

    .line 347
    :cond_0
    return-void
.end method

.method private executeClose()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lcom/android/camera/device/SingleDeviceStateMachine;, "Lcom/android/camera/device/SingleDeviceStateMachine<TTDevice;TTKey;>;"
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mOpenDevice:Ljava/lang/Object;

    .line 309
    .local v0, "device":Ljava/lang/Object;, "TTDevice;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mOpenDevice:Ljava/lang/Object;

    .line 311
    invoke-direct {p0, v0}, Lcom/android/camera/device/SingleDeviceStateMachine;->executeClose(Ljava/lang/Object;)V

    .line 312
    return-void
.end method

.method private executeClose(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTDevice;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Lcom/android/camera/device/SingleDeviceStateMachine;, "Lcom/android/camera/device/SingleDeviceStateMachine<TTDevice;TTKey;>;"
    .local p1, "device":Ljava/lang/Object;, "TTDevice;"
    if-eqz p1, :cond_0

    .line 317
    sget-object v1, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;->CLOSING:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    iput-object v1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceState:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    .line 318
    sget-object v1, Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;->CLOSED:Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;

    iput-object v1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mTargetState:Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;

    .line 319
    invoke-direct {p0}, Lcom/android/camera/device/SingleDeviceStateMachine;->closeRequest()V

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceActions:Lcom/android/camera/device/SingleDeviceActions;

    invoke-interface {v1, p0, p1}, Lcom/android/camera/device/SingleDeviceActions;->executeClose(Lcom/android/camera/device/SingleDeviceCloseListener;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/android/camera/device/SingleDeviceStateMachine;->onDeviceClosingException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/device/SingleDeviceStateMachine;->shutdown()V

    goto :goto_0
.end method

.method private executeOpen()V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 283
    .local p0, "this":Lcom/android/camera/device/SingleDeviceStateMachine;, "Lcom/android/camera/device/SingleDeviceStateMachine<TTDevice;TTKey;>;"
    sget-object v1, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;->OPENING:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    iput-object v1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceState:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    .line 285
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceActions:Lcom/android/camera/device/SingleDeviceActions;

    iget-object v2, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceLifetime:Lcom/android/camera/async/Lifetime;

    invoke-interface {v1, p0, v2}, Lcom/android/camera/device/SingleDeviceActions;->executeOpen(Lcom/android/camera/device/SingleDeviceOpenListener;Lcom/android/camera/async/Lifetime;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/android/camera/device/SingleDeviceStateMachine;->onDeviceOpenException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private executeOpened()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 295
    .local p0, "this":Lcom/android/camera/device/SingleDeviceStateMachine;, "Lcom/android/camera/device/SingleDeviceStateMachine<TTDevice;TTKey;>;"
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceRequest:Lcom/android/camera/device/SingleDeviceRequest;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceRequest:Lcom/android/camera/device/SingleDeviceRequest;

    iget-object v1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mOpenDevice:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/camera/device/SingleDeviceRequest;->set(Ljava/lang/Object;)Z

    .line 301
    :cond_0
    return-void
.end method

.method private requestCloseIfCurrentRequest(Lcom/android/camera/device/SingleDeviceRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/device/SingleDeviceRequest",
            "<TTDevice;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 333
    .local p0, "this":Lcom/android/camera/device/SingleDeviceStateMachine;, "Lcom/android/camera/device/SingleDeviceStateMachine<TTDevice;TTKey;>;"
    .local p1, "request":Lcom/android/camera/device/SingleDeviceRequest;, "Lcom/android/camera/device/SingleDeviceRequest<TTDevice;>;"
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceRequest:Lcom/android/camera/device/SingleDeviceRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceRequest:Lcom/android/camera/device/SingleDeviceRequest;

    if-ne v0, p1, :cond_1

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/device/SingleDeviceStateMachine;->requestClose()V

    .line 336
    :cond_1
    return-void
.end method

.method private shutdown()V
    .locals 3

    .prologue
    .line 362
    .local p0, "this":Lcom/android/camera/device/SingleDeviceStateMachine;, "Lcom/android/camera/device/SingleDeviceStateMachine<TTDevice;TTKey;>;"
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 364
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mIsShutdown:Z

    if-nez v0, :cond_0

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mIsShutdown:Z

    .line 366
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shutting down the device lifecycle for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mOpenDevice:Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;->CLOSED:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    iput-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceState:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    .line 369
    sget-object v0, Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;->CLOSED:Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;

    iput-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mTargetState:Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;

    .line 371
    invoke-direct {p0}, Lcom/android/camera/device/SingleDeviceStateMachine;->closeRequest()V

    .line 372
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/android/camera/async/Lifetime;->close()V

    .line 373
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mShutdownListener:Lcom/android/camera/device/SingleDeviceShutdownListener;

    iget-object v1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/android/camera/device/SingleDeviceShutdownListener;->onShutdown(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :goto_0
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 380
    return-void

    .line 375
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLogger:Lcom/android/camera/debug/Logger;

    const-string v1, "Shutdown was called multiple times!"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 378
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private update()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lcom/android/camera/device/SingleDeviceStateMachine;, "Lcom/android/camera/device/SingleDeviceStateMachine<TTDevice;TTKey;>;"
    iget-boolean v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mIsShutdown:Z

    if-eqz v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceState:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    sget-object v1, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;->CLOSED:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mTargetState:Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;

    sget-object v1, Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;->OPENED:Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;

    if-ne v0, v1, :cond_2

    .line 271
    invoke-direct {p0}, Lcom/android/camera/device/SingleDeviceStateMachine;->executeOpen()V

    goto :goto_0

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceState:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    sget-object v1, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;->OPENED:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mTargetState:Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;

    sget-object v1, Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;->OPENED:Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;

    if-ne v0, v1, :cond_3

    .line 273
    invoke-direct {p0}, Lcom/android/camera/device/SingleDeviceStateMachine;->executeOpened()V

    goto :goto_0

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceState:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    sget-object v1, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;->OPENED:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mTargetState:Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;

    sget-object v1, Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;->CLOSED:Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;

    if-ne v0, v1, :cond_4

    .line 275
    invoke-direct {p0}, Lcom/android/camera/device/SingleDeviceStateMachine;->executeClose()V

    goto :goto_0

    .line 276
    :cond_4
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceState:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    sget-object v1, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;->CLOSED:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mTargetState:Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;

    sget-object v1, Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;->CLOSED:Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;

    if-ne v0, v1, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/android/camera/device/SingleDeviceStateMachine;->shutdown()V

    goto :goto_0
.end method


# virtual methods
.method public onDeviceClosed()V
    .locals 2

    .prologue
    .line 233
    .local p0, "this":Lcom/android/camera/device/SingleDeviceStateMachine;, "Lcom/android/camera/device/SingleDeviceStateMachine<TTDevice;TTKey;>;"
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 235
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mIsShutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 246
    :goto_0
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mOpenDevice:Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;->CLOSED:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    iput-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceState:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    .line 242
    invoke-direct {p0}, Lcom/android/camera/device/SingleDeviceStateMachine;->update()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public onDeviceClosingException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 250
    .local p0, "this":Lcom/android/camera/device/SingleDeviceStateMachine;, "Lcom/android/camera/device/SingleDeviceStateMachine<TTDevice;TTKey;>;"
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 252
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mIsShutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 261
    :goto_0
    return-void

    .line 256
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/camera/device/SingleDeviceStateMachine;->closeRequestWithException(Ljava/lang/Throwable;)V

    .line 257
    invoke-direct {p0}, Lcom/android/camera/device/SingleDeviceStateMachine;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public onDeviceOpenException(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTDevice;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lcom/android/camera/device/SingleDeviceStateMachine;, "Lcom/android/camera/device/SingleDeviceStateMachine<TTDevice;TTKey;>;"
    .local p1, "tDevice":Ljava/lang/Object;, "TTDevice;"
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 218
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mIsShutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 229
    :goto_0
    return-void

    .line 222
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/camera/device/CameraOpenException;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/android/camera/device/CameraOpenException;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/camera/device/SingleDeviceStateMachine;->closeRequestWithException(Ljava/lang/Throwable;)V

    .line 223
    sget-object v0, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;->CLOSING:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    iput-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceState:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    .line 224
    sget-object v0, Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;->CLOSED:Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;

    iput-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mTargetState:Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;

    .line 225
    invoke-direct {p0, p1}, Lcom/android/camera/device/SingleDeviceStateMachine;->executeClose(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public onDeviceOpenException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 201
    .local p0, "this":Lcom/android/camera/device/SingleDeviceStateMachine;, "Lcom/android/camera/device/SingleDeviceStateMachine<TTDevice;TTKey;>;"
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 203
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mIsShutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 212
    :goto_0
    return-void

    .line 207
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/camera/device/SingleDeviceStateMachine;->closeRequestWithException(Ljava/lang/Throwable;)V

    .line 208
    invoke-direct {p0}, Lcom/android/camera/device/SingleDeviceStateMachine;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public onDeviceOpened(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTDevice;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/android/camera/device/SingleDeviceStateMachine;, "Lcom/android/camera/device/SingleDeviceStateMachine<TTDevice;TTKey;>;"
    .local p1, "device":Ljava/lang/Object;, "TTDevice;"
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 186
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mIsShutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 197
    :goto_0
    return-void

    .line 190
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mOpenDevice:Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;->OPENED:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    iput-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceState:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    .line 193
    invoke-direct {p0}, Lcom/android/camera/device/SingleDeviceStateMachine;->update()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public requestClose()V
    .locals 2

    .prologue
    .line 135
    .local p0, "this":Lcom/android/camera/device/SingleDeviceStateMachine;, "Lcom/android/camera/device/SingleDeviceStateMachine<TTDevice;TTKey;>;"
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 137
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mIsShutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 146
    :goto_0
    return-void

    .line 141
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;->CLOSED:Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;

    iput-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mTargetState:Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;

    .line 142
    invoke-direct {p0}, Lcom/android/camera/device/SingleDeviceStateMachine;->update()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public requestOpen()V
    .locals 2

    .prologue
    .line 118
    .local p0, "this":Lcom/android/camera/device/SingleDeviceStateMachine;, "Lcom/android/camera/device/SingleDeviceStateMachine<TTDevice;TTKey;>;"
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 120
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mIsShutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 129
    :goto_0
    return-void

    .line 124
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;->OPENED:Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;

    iput-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mTargetState:Lcom/android/camera/device/SingleDeviceStateMachine$TargetState;

    .line 125
    invoke-direct {p0}, Lcom/android/camera/device/SingleDeviceStateMachine;->update()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setRequest(Lcom/android/camera/device/SingleDeviceRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/device/SingleDeviceRequest",
            "<TTDevice;>;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lcom/android/camera/device/SingleDeviceStateMachine;, "Lcom/android/camera/device/SingleDeviceStateMachine<TTDevice;TTKey;>;"
    .local p1, "deviceRequest":Lcom/android/camera/device/SingleDeviceRequest;, "Lcom/android/camera/device/SingleDeviceRequest<TTDevice;>;"
    iget-object v1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 155
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mIsShutdown:Z

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {p1}, Lcom/android/camera/device/SingleDeviceRequest;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-object v1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 180
    :goto_0
    return-void

    .line 160
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceRequest:Lcom/android/camera/device/SingleDeviceRequest;

    .line 161
    .local v0, "previous":Lcom/android/camera/device/SingleDeviceRequest;, "Lcom/android/camera/device/SingleDeviceRequest<TTDevice;>;"
    iput-object p1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceRequest:Lcom/android/camera/device/SingleDeviceRequest;

    .line 162
    iget-object v1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v1, p1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 163
    invoke-virtual {p1}, Lcom/android/camera/device/SingleDeviceRequest;->getLifetime()Lcom/android/camera/async/Lifetime;

    move-result-object v1

    new-instance v2, Lcom/android/camera/device/SingleDeviceStateMachine$1;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/device/SingleDeviceStateMachine$1;-><init>(Lcom/android/camera/device/SingleDeviceStateMachine;Lcom/android/camera/device/SingleDeviceRequest;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 170
    iget-object v1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mOpenDevice:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mDeviceRequest:Lcom/android/camera/device/SingleDeviceRequest;

    iget-object v2, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mOpenDevice:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/camera/device/SingleDeviceRequest;->set(Ljava/lang/Object;)Z

    .line 174
    :cond_1
    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {v0}, Lcom/android/camera/device/SingleDeviceRequest;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "previous":Lcom/android/camera/device/SingleDeviceRequest;, "Lcom/android/camera/device/SingleDeviceRequest<TTDevice;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/camera/device/SingleDeviceStateMachine;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.class public interface abstract Lcom/android/camera/one/v2/core/FrameServer;
.super Ljava/lang/Object;
.source "FrameServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/core/FrameServer$RequestType;,
        Lcom/android/camera/one/v2/core/FrameServer$SessionClosedException;,
        Lcom/android/camera/one/v2/core/FrameServer$Session;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static final SESSION_CREATE_TIMEOUT:J = 0xbb8L

.field public static final SESSION_CREATE_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/android/camera/one/v2/core/FrameServer;->SESSION_CREATE_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public abstract createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract tryCreateExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

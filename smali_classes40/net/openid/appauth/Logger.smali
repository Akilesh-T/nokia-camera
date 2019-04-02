.class Lnet/openid/appauth/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/Logger$AndroidLogWrapper;,
        Lnet/openid/appauth/Logger$LogWrapper;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "AppAuth"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static sInstance:Lnet/openid/appauth/Logger;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final mLog:Lnet/openid/appauth/Logger$LogWrapper;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLogLevel:I


# direct methods
.method constructor <init>(Lnet/openid/appauth/Logger$LogWrapper;)V
    .locals 3
    .param p1, "log"    # Lnet/openid/appauth/Logger$LogWrapper;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/openid/appauth/Logger$LogWrapper;

    iput-object v1, p0, Lnet/openid/appauth/Logger;->mLog:Lnet/openid/appauth/Logger$LogWrapper;

    .line 58
    const/4 v0, 0x7

    .line 59
    .local v0, "level":I
    :goto_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lnet/openid/appauth/Logger;->mLog:Lnet/openid/appauth/Logger$LogWrapper;

    const-string v2, "AppAuth"

    invoke-interface {v1, v2, v0}, Lnet/openid/appauth/Logger$LogWrapper;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 63
    :cond_0
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/openid/appauth/Logger;->mLogLevel:I

    .line 64
    return-void
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "messageParams"    # [Ljava/lang/Object;

    .prologue
    .line 75
    invoke-static {}, Lnet/openid/appauth/Logger;->getInstance()Lnet/openid/appauth/Logger;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lnet/openid/appauth/Logger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public static varargs debugWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tr"    # Ljava/lang/Throwable;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "messageParams"    # [Ljava/lang/Object;

    .prologue
    .line 79
    invoke-static {}, Lnet/openid/appauth/Logger;->getInstance()Lnet/openid/appauth/Logger;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0, p1, p2}, Lnet/openid/appauth/Logger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "messageParams"    # [Ljava/lang/Object;

    .prologue
    .line 99
    invoke-static {}, Lnet/openid/appauth/Logger;->getInstance()Lnet/openid/appauth/Logger;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lnet/openid/appauth/Logger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public static varargs errorWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tr"    # Ljava/lang/Throwable;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "messageParams"    # [Ljava/lang/Object;

    .prologue
    .line 103
    invoke-static {}, Lnet/openid/appauth/Logger;->getInstance()Lnet/openid/appauth/Logger;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0, p1, p2}, Lnet/openid/appauth/Logger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public static declared-synchronized getInstance()Lnet/openid/appauth/Logger;
    .locals 3

    .prologue
    .line 43
    const-class v1, Lnet/openid/appauth/Logger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/openid/appauth/Logger;->sInstance:Lnet/openid/appauth/Logger;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lnet/openid/appauth/Logger;

    invoke-static {}, Lnet/openid/appauth/Logger$AndroidLogWrapper;->access$000()Lnet/openid/appauth/Logger$AndroidLogWrapper;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/openid/appauth/Logger;-><init>(Lnet/openid/appauth/Logger$LogWrapper;)V

    sput-object v0, Lnet/openid/appauth/Logger;->sInstance:Lnet/openid/appauth/Logger;

    .line 46
    :cond_0
    sget-object v0, Lnet/openid/appauth/Logger;->sInstance:Lnet/openid/appauth/Logger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "messageParams"    # [Ljava/lang/Object;

    .prologue
    .line 83
    invoke-static {}, Lnet/openid/appauth/Logger;->getInstance()Lnet/openid/appauth/Logger;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lnet/openid/appauth/Logger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public static varargs infoWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tr"    # Ljava/lang/Throwable;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "messageParams"    # [Ljava/lang/Object;

    .prologue
    .line 87
    invoke-static {}, Lnet/openid/appauth/Logger;->getInstance()Lnet/openid/appauth/Logger;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, p1, p2}, Lnet/openid/appauth/Logger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method static declared-synchronized setInstance(Lnet/openid/appauth/Logger;)V
    .locals 2
    .param p0, "logger"    # Lnet/openid/appauth/Logger;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 51
    const-class v0, Lnet/openid/appauth/Logger;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lnet/openid/appauth/Logger;->sInstance:Lnet/openid/appauth/Logger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit v0

    return-void

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static varargs verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "messageParams"    # [Ljava/lang/Object;

    .prologue
    .line 67
    invoke-static {}, Lnet/openid/appauth/Logger;->getInstance()Lnet/openid/appauth/Logger;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lnet/openid/appauth/Logger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public static varargs verboseWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tr"    # Ljava/lang/Throwable;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "messageParams"    # [Ljava/lang/Object;

    .prologue
    .line 71
    invoke-static {}, Lnet/openid/appauth/Logger;->getInstance()Lnet/openid/appauth/Logger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0, p1, p2}, Lnet/openid/appauth/Logger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "messageParams"    # [Ljava/lang/Object;

    .prologue
    .line 91
    invoke-static {}, Lnet/openid/appauth/Logger;->getInstance()Lnet/openid/appauth/Logger;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lnet/openid/appauth/Logger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public static varargs warnWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tr"    # Ljava/lang/Throwable;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "messageParams"    # [Ljava/lang/Object;

    .prologue
    .line 95
    invoke-static {}, Lnet/openid/appauth/Logger;->getInstance()Lnet/openid/appauth/Logger;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0, p1, p2}, Lnet/openid/appauth/Logger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    return-void
.end method


# virtual methods
.method public varargs log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "tr"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "messageParams"    # [Ljava/lang/Object;

    .prologue
    .line 107
    iget v1, p0, Lnet/openid/appauth/Logger;->mLogLevel:I

    if-le v1, p1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 111
    :cond_0
    if-eqz p4, :cond_1

    array-length v1, p4

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 112
    :cond_1
    move-object v0, p3

    .line 117
    .local v0, "formattedMessage":Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_2

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/openid/appauth/Logger;->mLog:Lnet/openid/appauth/Logger$LogWrapper;

    invoke-interface {v2, p2}, Lnet/openid/appauth/Logger$LogWrapper;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_2
    iget-object v1, p0, Lnet/openid/appauth/Logger;->mLog:Lnet/openid/appauth/Logger$LogWrapper;

    const-string v2, "AppAuth"

    invoke-interface {v1, p1, v2, v0}, Lnet/openid/appauth/Logger$LogWrapper;->println(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v0    # "formattedMessage":Ljava/lang/String;
    :cond_3
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formattedMessage":Ljava/lang/String;
    goto :goto_1
.end method

.class public Lcom/android/camera/debug/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/debug/Log$Tag;
    }
.end annotation


# static fields
.field public static final CAMERA_LOGTAG_PREFIX:Ljava/lang/String; = "CAM_"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static sSuppressForTesting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Log"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/debug/Log;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/debug/Log;->sSuppressForTesting:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/camera/debug/Log;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method public static d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Lcom/android/camera/debug/Log$Tag;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/camera/debug/Log;->isLoggable(Lcom/android/camera/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/camera/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/camera/debug/LogUtil;->addTags(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    return-void
.end method

.method public static d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Lcom/android/camera/debug/Log$Tag;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tags"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/camera/debug/Log;->isLoggable(Lcom/android/camera/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/camera/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/android/camera/debug/LogUtil;->addTags(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    return-void
.end method

.method public static d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Lcom/android/camera/debug/Log$Tag;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/camera/debug/Log;->isLoggable(Lcom/android/camera/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/camera/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    return-void
.end method

.method public static d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Lcom/android/camera/debug/Log$Tag;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 83
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/camera/debug/Log;->isLoggable(Lcom/android/camera/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/camera/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    :cond_0
    return-void
.end method

.method public static e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Lcom/android/camera/debug/Log$Tag;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/android/camera/debug/Log;->isLoggable(Lcom/android/camera/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/camera/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/camera/debug/LogUtil;->addTags(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    return-void
.end method

.method public static e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Lcom/android/camera/debug/Log$Tag;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tags"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/camera/debug/Log;->isLoggable(Lcom/android/camera/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/camera/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/android/camera/debug/LogUtil;->addTags(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    return-void
.end method

.method public static e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Lcom/android/camera/debug/Log$Tag;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/android/camera/debug/Log;->isLoggable(Lcom/android/camera/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/camera/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    return-void
.end method

.method public static e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Lcom/android/camera/debug/Log$Tag;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 107
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/android/camera/debug/Log;->isLoggable(Lcom/android/camera/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/camera/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    :cond_0
    return-void
.end method

.method public static i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Lcom/android/camera/debug/Log$Tag;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/camera/debug/Log;->isLoggable(Lcom/android/camera/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/camera/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/camera/debug/LogUtil;->addTags(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    return-void
.end method

.method public static i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Lcom/android/camera/debug/Log$Tag;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tags"    # Ljava/lang/String;

    .prologue
    .line 125
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/camera/debug/Log;->isLoggable(Lcom/android/camera/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/camera/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/android/camera/debug/LogUtil;->addTags(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    return-void
.end method

.method public static i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Lcom/android/camera/debug/Log$Tag;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 113
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/camera/debug/Log;->isLoggable(Lcom/android/camera/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/camera/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    return-void
.end method

.method public static i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Lcom/android/camera/debug/Log$Tag;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 131
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/camera/debug/Log;->isLoggable(Lcom/android/camera/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/camera/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    :cond_0
    return-void
.end method

.method private static isDebugOsBuild()Z
    .locals 2

    .prologue
    .line 221
    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLoggable(Lcom/android/camera/debug/Log$Tag;I)Z
    .locals 5
    .param p0, "tag"    # Lcom/android/camera/debug/Log$Tag;
    .param p1, "level"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    sget-boolean v3, Lcom/android/camera/debug/Log;->sSuppressForTesting:Z

    if-eqz v3, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v2

    .line 199
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/camera/debug/LogHelper;->instance()Lcom/android/camera/debug/LogHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/debug/LogHelper;->getOverrideLevel()I

    move-result v3

    if-eqz v3, :cond_3

    .line 203
    invoke-static {}, Lcom/android/camera/debug/LogHelper;->instance()Lcom/android/camera/debug/LogHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/debug/LogHelper;->getOverrideLevel()I

    move-result v3

    if-gt v3, p1, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 205
    :cond_3
    invoke-static {}, Lcom/android/camera/util/ReleaseHelper;->shouldLogVerbose()Z

    move-result v3

    if-nez v3, :cond_4

    .line 206
    invoke-static {}, Lcom/android/camera/debug/Log;->isDebugOsBuild()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p0, p1}, Lcom/android/camera/debug/Log;->shouldLog(Lcom/android/camera/debug/Log$Tag;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v2, v1

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/camera/debug/Log;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag too long:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static shouldLog(Lcom/android/camera/debug/Log$Tag;I)Z
    .locals 1
    .param p0, "tag"    # Lcom/android/camera/debug/Log$Tag;
    .param p1, "level"    # I

    .prologue
    .line 216
    const-string v0, "CAM_"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/android/camera/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    .line 217
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static suppressLogsForTesting(Z)V
    .locals 0
    .param p0, "suppress"    # Z

    .prologue
    .line 191
    sput-boolean p0, Lcom/android/camera/debug/Log;->sSuppressForTesting:Z

    .line 192
    return-void
.end method

.method public static v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Lcom/android/camera/debug/Log$Tag;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 143
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/camera/debug/Log;->isLoggable(Lcom/android/camera/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/camera/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/camera/debug/LogUtil;->addTags(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    return-void
.end method

.method public static v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Lcom/android/camera/debug/Log$Tag;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tags"    # Ljava/lang/String;

    .prologue
    .line 149
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/camera/debug/Log;->isLoggable(Lcom/android/camera/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/camera/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/android/camera/debug/LogUtil;->addTags(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    return-void
.end method

.method public static v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Lcom/android/camera/debug/Log$Tag;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 137
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/camera/debug/Log;->isLoggable(Lcom/android/camera/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/camera/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    return-void
.end method

.method public static v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Lcom/android/camera/debug/Log$Tag;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 155
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/camera/debug/Log;->isLoggable(Lcom/android/camera/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/camera/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    :cond_0
    return-void
.end method

.method public static w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Lcom/android/camera/debug/Log$Tag;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 167
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/camera/debug/Log;->isLoggable(Lcom/android/camera/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/android/camera/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/camera/debug/LogUtil;->addTags(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    return-void
.end method

.method public static w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Lcom/android/camera/debug/Log$Tag;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tags"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/camera/debug/Log;->isLoggable(Lcom/android/camera/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/camera/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/android/camera/debug/LogUtil;->addTags(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    return-void
.end method

.method public static w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Lcom/android/camera/debug/Log$Tag;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 161
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/camera/debug/Log;->isLoggable(Lcom/android/camera/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/camera/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    return-void
.end method

.method public static w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Lcom/android/camera/debug/Log$Tag;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 179
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/camera/debug/Log;->isLoggable(Lcom/android/camera/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/android/camera/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    :cond_0
    return-void
.end method

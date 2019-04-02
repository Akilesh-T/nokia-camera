.class public Lcom/android/camera/session/TemporarySessionFile;
.super Ljava/lang/Object;
.source "TemporarySessionFile.java"


# instance fields
.field private mFile:Ljava/io/File;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSessionDirectory:Ljava/lang/String;

.field private final mSessionStorageManager:Lcom/android/camera/session/SessionStorageManager;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/session/SessionStorageManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionStorageManager"    # Lcom/android/camera/session/SessionStorageManager;
    .param p2, "sessionDirectory"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/camera/session/TemporarySessionFile;->mSessionStorageManager:Lcom/android/camera/session/SessionStorageManager;

    .line 43
    iput-object p2, p0, Lcom/android/camera/session/TemporarySessionFile;->mSessionDirectory:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/android/camera/session/TemporarySessionFile;->mTitle:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/session/TemporarySessionFile;->mFile:Ljava/io/File;

    .line 46
    return-void
.end method


# virtual methods
.method public declared-synchronized getFile()Ljava/io/File;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/TemporarySessionFile;->mFile:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isUsable()Z
    .locals 1

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/TemporarySessionFile;->mFile:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepare()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/session/TemporarySessionFile;->mFile:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 66
    :goto_0
    monitor-exit p0

    return v1

    .line 62
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/session/TemporarySessionFile;->mSessionStorageManager:Lcom/android/camera/session/SessionStorageManager;

    iget-object v3, p0, Lcom/android/camera/session/TemporarySessionFile;->mSessionDirectory:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/session/TemporarySessionFile;->mTitle:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/android/camera/session/SessionStorageManager;->createTemporaryOutputPath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/session/TemporarySessionFile;->mFile:Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

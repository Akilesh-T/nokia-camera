.class public Lcom/android/camera/session/SessionStorageManagerImpl;
.super Ljava/lang/Object;
.source "SessionStorageManagerImpl.java"

# interfaces
.implements Lcom/android/camera/session/SessionStorageManager;


# static fields
.field private static final MAX_SESSION_AGE_MILLIS:I = 0x5265c00

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mBaseDirectory:Ljava/io/File;

.field private final mDeprecatedBaseDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "SesnStorageMgrImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/session/SessionStorageManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .param p1, "baseDirectory"    # Ljava/io/File;
    .param p2, "deprecatedBaseDirectory"    # Ljava/io/File;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/camera/session/SessionStorageManagerImpl;->mBaseDirectory:Ljava/io/File;

    .line 67
    iput-object p2, p0, Lcom/android/camera/session/SessionStorageManagerImpl;->mDeprecatedBaseDirectory:Ljava/io/File;

    .line 68
    return-void
.end method

.method private cleanUpExpiredSessions(Ljava/io/File;)V
    .locals 10
    .param p1, "baseDirectory"    # Ljava/io/File;

    .prologue
    .line 127
    new-instance v4, Lcom/android/camera/session/SessionStorageManagerImpl$1;

    invoke-direct {v4, p0}, Lcom/android/camera/session/SessionStorageManagerImpl$1;-><init>(Lcom/android/camera/session/SessionStorageManagerImpl;)V

    invoke-virtual {p1, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 133
    .local v3, "sessionDirs":[Ljava/io/File;
    if-nez v3, :cond_1

    .line 146
    :cond_0
    return-void

    .line 137
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 138
    .local v0, "nowInMillis":J
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v3, v4

    .line 139
    .local v2, "sessionDir":Ljava/io/File;
    sget-object v6, Lcom/android/camera/session/SessionStorageManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Check for potential clean-up: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    sub-long v8, v0, v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 141
    invoke-static {v2}, Lcom/android/camera/util/FileUtil;->deleteDirectoryRecursively(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 142
    sget-object v6, Lcom/android/camera/session/SessionStorageManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not clean up "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 138
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;)Lcom/android/camera/session/SessionStorageManager;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 55
    .local v2, "start":J
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 56
    .local v0, "externalCacheDir":Ljava/io/File;
    sget-object v4, Lcom/android/camera/session/SessionStorageManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getExternalCacheDir cost = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 58
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 59
    .local v1, "externalFilesDir":Ljava/io/File;
    sget-object v4, Lcom/android/camera/session/SessionStorageManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getExternalFilesDir cost = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 60
    new-instance v4, Lcom/android/camera/session/SessionStorageManagerImpl;

    invoke-direct {v4, v0, v1}, Lcom/android/camera/session/SessionStorageManagerImpl;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v4
.end method


# virtual methods
.method public createTemporaryOutputPath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "subDirectory"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, "tempDirectory":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 96
    .end local v1    # "tempDirectory":Ljava/io/File;
    invoke-virtual {p0, p1}, Lcom/android/camera/session/SessionStorageManagerImpl;->getSessionDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .restart local v1    # "tempDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not create output data directory."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 97
    .end local v1    # "tempDirectory":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/camera/session/SessionStorageManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Could not get temp session directory"

    invoke-static {v3, v4, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not get temp session directory"

    invoke-direct {v3, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "tempDirectory":Ljava/io/File;
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    .local v2, "tempFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 107
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_1

    .line 108
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not create output data file."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    :catch_1
    move-exception v0

    .line 112
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/camera/session/SessionStorageManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Could not create temp session file"

    invoke-static {v3, v4, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not create temp session file"

    invoke-direct {v3, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 116
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_2

    .line 117
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Temporary output file is not writeable."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 119
    :cond_2
    return-object v2
.end method

.method public getSessionDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "subDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/session/SessionStorageManagerImpl;->mBaseDirectory:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    .local v1, "sessionDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create session directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session directory is not a directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/camera/session/SessionStorageManagerImpl;->cleanUpExpiredSessions(Ljava/io/File;)V

    .line 85
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/session/SessionStorageManagerImpl;->mDeprecatedBaseDirectory:Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    .local v0, "deprecatedSessionDirectory":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/android/camera/session/SessionStorageManagerImpl;->cleanUpExpiredSessions(Ljava/io/File;)V

    .line 88
    return-object v1
.end method

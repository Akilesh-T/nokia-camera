.class public abstract Lcom/android/camera/one/AbstractOneCamera;
.super Ljava/lang/Object;
.source "AbstractOneCamera.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera;


# static fields
.field static final DEBUG_FOLDER_SERIAL_LENGTH:I = 0x4


# instance fields
.field protected mFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

.field protected mLensStateListener:Lcom/android/camera/one/OneCamera$LensStateListener;

.field protected mReadyStateChangedListener:Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static makeDebugDir(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "root"    # Ljava/io/File;
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 71
    if-nez p0, :cond_0

    .line 72
    const/4 v3, 0x0

    .line 101
    :goto_0
    return-object v3

    .line 74
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_2

    .line 75
    :cond_1
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Gcam debug directory not valid or doesn\'t exist: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 76
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 79
    :cond_2
    const-string v6, ""

    .line 80
    .local v6, "serialSubstring":Ljava/lang/String;
    sget-object v5, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 81
    .local v5, "serial":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 82
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 84
    .local v4, "length":I
    const/4 v8, 0x4

    if-le v4, v8, :cond_4

    .line 85
    add-int/lit8 v8, v4, -0x4

    invoke-virtual {v5, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 91
    .end local v4    # "length":I
    :cond_3
    :goto_1
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyyMMdd_HHmmss_SSS"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 92
    .local v7, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 93
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "currentDateAndTime":Ljava/lang/String;
    const-string v8, "%s_%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "burstFolderName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    .local v2, "destFolder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-nez v8, :cond_5

    .line 98
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Could not create Gcam debug data folder."

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 87
    .end local v0    # "burstFolderName":Ljava/lang/String;
    .end local v1    # "currentDateAndTime":Ljava/lang/String;
    .end local v2    # "destFolder":Ljava/io/File;
    .end local v7    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .restart local v4    # "length":I
    :cond_4
    move-object v6, v5

    goto :goto_1

    .line 100
    .end local v4    # "length":I
    .restart local v0    # "burstFolderName":Ljava/lang/String;
    .restart local v1    # "currentDateAndTime":Ljava/lang/String;
    .restart local v2    # "destFolder":Ljava/io/File;
    .restart local v7    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "destFolderPath":Ljava/lang/String;
    goto/16 :goto_0
.end method


# virtual methods
.method protected broadcastReadyState(Z)V
    .locals 1
    .param p1, "readyForCapture"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/camera/one/AbstractOneCamera;->mReadyStateChangedListener:Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/camera/one/AbstractOneCamera;->mReadyStateChangedListener:Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;->onReadyStateChanged(Z)V

    .line 111
    :cond_0
    return-void
.end method

.method public getMaxZoom()F
    .locals 1

    .prologue
    .line 116
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/one/OneCamera$FocusStateListener;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/camera/one/AbstractOneCamera;->mFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

    .line 44
    return-void
.end method

.method public setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/one/OneCamera$LensStateListener;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/camera/one/AbstractOneCamera;->mLensStateListener:Lcom/android/camera/one/OneCamera$LensStateListener;

    .line 49
    return-void
.end method

.method public setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/one/AbstractOneCamera;->mReadyStateChangedListener:Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;

    .line 54
    return-void
.end method

.method public setZoom(F)V
    .locals 0
    .param p1, "zoom"    # F

    .prologue
    .line 122
    return-void
.end method

.class public abstract Lcom/qualcomm/qti/snpe/SNPE;
.super Ljava/lang/Object;
.source "SNPE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "snpe-android"

.field private static sInitialized:Z

.field private static sRuntimeVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Application;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Application;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/qualcomm/qti/snpe/SNPE;->init(Landroid/app/Application;)V

    return-void
.end method

.method public static getRuntimeVersion(Landroid/app/Application;)Ljava/lang/String;
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 58
    invoke-static {p0}, Lcom/qualcomm/qti/snpe/SNPE;->init(Landroid/app/Application;)V

    .line 59
    sget-object v0, Lcom/qualcomm/qti/snpe/SNPE;->sRuntimeVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lcom/qualcomm/qti/snpe/SNPE;->nativeGetRuntimeVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/snpe/SNPE;->sRuntimeVersion:Ljava/lang/String;

    .line 62
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/snpe/SNPE;->sRuntimeVersion:Ljava/lang/String;

    return-object v0
.end method

.method private static declared-synchronized init(Landroid/app/Application;)V
    .locals 2
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 47
    const-class v1, Lcom/qualcomm/qti/snpe/SNPE;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/qualcomm/qti/snpe/SNPE;->sInitialized:Z

    if-nez v0, :cond_0

    .line 48
    const-string v0, "snpe-android"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/qualcomm/qti/snpe/SNPE;->nativeInit(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qualcomm/qti/snpe/SNPE;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    monitor-exit v1

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native nativeGetRuntimeVersion()Ljava/lang/String;
.end method

.method private static native nativeInit(Ljava/lang/String;)V
.end method

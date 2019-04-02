.class public Lcom/android/camera/app/FirstRunDetector;
.super Ljava/lang/Object;
.source "FirstRunDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/FirstRunDetector$Singleton;
    }
.end annotation


# static fields
.field private static final CLIENT_FIRST_USE_TIME:Ljava/lang/String; = "client_first_use_time_millis"

.field private static final UNKNOWN:J = -0x1L


# instance fields
.field private mIsFirstRun:Z

.field private final mProfile:Lcom/android/camera/stats/profiler/Profile;

.field private mTimeOfFirstRun:J


# direct methods
.method private constructor <init>(Lcom/android/camera/stats/profiler/Profiler;)V
    .locals 1
    .param p1, "profiler"    # Lcom/android/camera/stats/profiler/Profiler;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/FirstRunDetector;->mIsFirstRun:Z

    .line 47
    const-string v0, "FirstRunDetector getTimeOfFirstRun"

    invoke-interface {p1, v0}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/FirstRunDetector;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/stats/profiler/Profiler;Lcom/android/camera/app/FirstRunDetector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/stats/profiler/Profiler;
    .param p2, "x1"    # Lcom/android/camera/app/FirstRunDetector$1;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/camera/app/FirstRunDetector;-><init>(Lcom/android/camera/stats/profiler/Profiler;)V

    return-void
.end method

.method public static instance()Lcom/android/camera/app/FirstRunDetector;
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/android/camera/app/FirstRunDetector$Singleton;->access$100()Lcom/android/camera/app/FirstRunDetector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/FirstRunDetector;->mIsFirstRun:Z

    .line 69
    return-void
.end method

.method public getTimeOfFirstRun()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/camera/app/FirstRunDetector;->mTimeOfFirstRun:J

    return-wide v0
.end method

.method public initializeTimeOfFirstRun(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 78
    iget-object v6, p0, Lcom/android/camera/app/FirstRunDetector;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v6}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    .line 80
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 81
    .local v2, "preferences":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/android/camera/app/FirstRunDetector;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v7, "PreferenceManager.getDefaultSharedPreferences"

    invoke-interface {v6, v7}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 84
    const-string v6, "client_first_use_time_millis"

    invoke-interface {v2, v6, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 85
    .local v4, "timeOfFirstUseMillis":J
    iget-object v6, p0, Lcom/android/camera/app/FirstRunDetector;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeOfFirstUseMillis : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 88
    cmp-long v6, v4, v10

    if-nez v6, :cond_2

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_preferences_camera"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    .local v0, "cameraPrefs":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/android/camera/app/FirstRunDetector;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v7, "getSharedPreferences"

    invoke-interface {v6, v7}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-gtz v6, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_1

    :cond_0
    move v1, v3

    .line 99
    .local v1, "isUpgrade":Z
    :cond_1
    if-eqz v1, :cond_3

    const-wide/16 v4, -0x1

    .line 100
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "client_first_use_time_millis"

    invoke-interface {v6, v7, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    iget-object v6, p0, Lcom/android/camera/app/FirstRunDetector;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v7, "preferences.edit()"

    invoke-interface {v6, v7}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 103
    if-nez v1, :cond_2

    .line 104
    iput-boolean v3, p0, Lcom/android/camera/app/FirstRunDetector;->mIsFirstRun:Z

    .line 107
    .end local v0    # "cameraPrefs":Landroid/content/SharedPreferences;
    .end local v1    # "isUpgrade":Z
    :cond_2
    iput-wide v4, p0, Lcom/android/camera/app/FirstRunDetector;->mTimeOfFirstRun:J

    .line 108
    iget-object v3, p0, Lcom/android/camera/app/FirstRunDetector;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v3}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 109
    return-void

    .line 99
    .restart local v0    # "cameraPrefs":Landroid/content/SharedPreferences;
    .restart local v1    # "isUpgrade":Z
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_0
.end method

.method public isFirstRun()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/camera/app/FirstRunDetector;->mIsFirstRun:Z

    return v0
.end method

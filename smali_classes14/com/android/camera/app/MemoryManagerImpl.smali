.class public Lcom/android/camera/app/MemoryManagerImpl;
.super Ljava/lang/Object;
.source "MemoryManagerImpl.java"

# interfaces
.implements Lcom/android/camera/app/MemoryManager;
.implements Lcom/android/camera/app/MediaSaver$QueueListener;
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field private static final MAX_MEM_ALLOWED:F = 0.7f

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final sCriticalStates:[I


# instance fields
.field private final mListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/app/MemoryManager$MemoryListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxAllowedNativeMemory:I

.field private final mMemoryQuery:Lcom/android/camera/app/MemoryQuery;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "MemoryManagerImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/app/MemoryManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/app/MemoryManagerImpl;->sCriticalStates:[I

    return-void

    :array_0
    .array-data 4
        0x50
        0xf
    .end array-data
.end method

.method private constructor <init>(ILcom/android/camera/app/MemoryQuery;)V
    .locals 3
    .param p1, "maxAllowedNativeMemory"    # I
    .param p2, "memoryQuery"    # Lcom/android/camera/app/MemoryQuery;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/MemoryManagerImpl;->mListeners:Ljava/util/LinkedList;

    .line 94
    iput p1, p0, Lcom/android/camera/app/MemoryManagerImpl;->mMaxAllowedNativeMemory:I

    .line 95
    iput-object p2, p0, Lcom/android/camera/app/MemoryManagerImpl;->mMemoryQuery:Lcom/android/camera/app/MemoryQuery;

    .line 96
    sget-object v0, Lcom/android/camera/app/MemoryManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max native memory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/app/MemoryManagerImpl;->mMaxAllowedNativeMemory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/camera/app/MediaSaver;)Lcom/android/camera/app/MemoryManagerImpl;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaSaver"    # Lcom/android/camera/app/MediaSaver;

    .prologue
    .line 72
    sget-object v4, Lcom/android/camera/app/MemoryManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "MemoryManagerImpl create start"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/util/AndroidServices;->provideActivityManager()Landroid/app/ActivityManager;

    move-result-object v0

    .line 74
    .local v0, "activityManager":Landroid/app/ActivityManager;
    sget-object v4, Lcom/android/camera/app/MemoryManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "ActivityManager init done"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 75
    invoke-static {p0}, Lcom/android/camera/app/MemoryManagerImpl;->getMaxAllowedNativeMemory(Landroid/content/Context;)I

    move-result v2

    .line 76
    .local v2, "maxAllowedNativeMemory":I
    sget-object v4, Lcom/android/camera/app/MemoryManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "getMaxAllowedNativeMemory done"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    new-instance v1, Lcom/android/camera/app/MemoryQuery;

    invoke-direct {v1, v0}, Lcom/android/camera/app/MemoryQuery;-><init>(Landroid/app/ActivityManager;)V

    .line 78
    .local v1, "mMemoryQuery":Lcom/android/camera/app/MemoryQuery;
    sget-object v4, Lcom/android/camera/app/MemoryManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "MemoryQuery init done"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    new-instance v3, Lcom/android/camera/app/MemoryManagerImpl;

    invoke-direct {v3, v2, v1}, Lcom/android/camera/app/MemoryManagerImpl;-><init>(ILcom/android/camera/app/MemoryQuery;)V

    .line 81
    .local v3, "memoryManager":Lcom/android/camera/app/MemoryManagerImpl;
    sget-object v4, Lcom/android/camera/app/MemoryManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "MemoryManagerImpl init done"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, v3}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 83
    sget-object v4, Lcom/android/camera/app/MemoryManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "registerComponentCallbacks done"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    invoke-interface {p1, v3}, Lcom/android/camera/app/MediaSaver;->setQueueListener(Lcom/android/camera/app/MediaSaver$QueueListener;)V

    .line 85
    sget-object v4, Lcom/android/camera/app/MemoryManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "setQueueListener done"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    return-object v3
.end method

.method private static getMaxAllowedNativeMemory(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 159
    invoke-static {v2}, Lcom/android/camera/util/GservicesHelper;->getMaxAllowedNativeMemoryMb(Landroid/content/ContentResolver;)I

    move-result v1

    .line 161
    .local v1, "maxAllowedOverrideMb":I
    if-lez v1, :cond_0

    .line 162
    sget-object v2, Lcom/android/camera/app/MemoryManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Max native memory overridden: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 172
    .end local v1    # "maxAllowedOverrideMb":I
    :goto_0
    return v1

    .line 166
    .restart local v1    # "maxAllowedOverrideMb":I
    :cond_0
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/util/AndroidServices;->provideActivityManager()Landroid/app/ActivityManager;

    move-result-object v0

    .line 172
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    .line 173
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v3

    .line 172
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    goto :goto_0
.end method

.method private notifyCaptureStateUpdate(I)V
    .locals 4
    .param p1, "captureState"    # I

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/camera/app/MemoryManagerImpl;->mListeners:Ljava/util/LinkedList;

    monitor-enter v2

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/app/MemoryManagerImpl;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/app/MemoryManager$MemoryListener;

    .line 188
    .local v0, "listener":Lcom/android/camera/app/MemoryManager$MemoryListener;
    invoke-interface {v0, p1}, Lcom/android/camera/app/MemoryManager$MemoryListener;->onMemoryStateChanged(I)V

    goto :goto_0

    .line 190
    .end local v0    # "listener":Lcom/android/camera/app/MemoryManager$MemoryListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    return-void
.end method

.method private notifyLowMemory()V
    .locals 4

    .prologue
    .line 178
    iget-object v2, p0, Lcom/android/camera/app/MemoryManagerImpl;->mListeners:Ljava/util/LinkedList;

    monitor-enter v2

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/app/MemoryManagerImpl;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/app/MemoryManager$MemoryListener;

    .line 180
    .local v0, "listener":Lcom/android/camera/app/MemoryManager$MemoryListener;
    invoke-interface {v0}, Lcom/android/camera/app/MemoryManager$MemoryListener;->onLowMemory()V

    goto :goto_0

    .line 182
    .end local v0    # "listener":Lcom/android/camera/app/MemoryManager$MemoryListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/camera/app/MemoryManager$MemoryListener;

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/camera/app/MemoryManagerImpl;->mListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/app/MemoryManagerImpl;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/camera/app/MemoryManagerImpl;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 108
    :goto_0
    monitor-exit v1

    .line 109
    return-void

    .line 106
    :cond_0
    sget-object v0, Lcom/android/camera/app/MemoryManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Listener already added."

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMaxAllowedNativeMemoryAllocation()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/camera/app/MemoryManagerImpl;->mMaxAllowedNativeMemory:I

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 124
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/camera/app/MemoryManagerImpl;->notifyLowMemory()V

    .line 129
    return-void
.end method

.method public onQueueStatus(Z)V
    .locals 1
    .param p1, "full"    # Z

    .prologue
    .line 143
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/app/MemoryManagerImpl;->notifyCaptureStateUpdate(I)V

    .line 144
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/camera/app/MemoryManagerImpl;->sCriticalStates:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 134
    sget-object v1, Lcom/android/camera/app/MemoryManagerImpl;->sCriticalStates:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/android/camera/app/MemoryManagerImpl;->notifyLowMemory()V

    .line 139
    :cond_0
    return-void

    .line 133
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public queryMemory()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/camera/app/MemoryManagerImpl;->mMemoryQuery:Lcom/android/camera/app/MemoryQuery;

    invoke-virtual {v0}, Lcom/android/camera/app/MemoryQuery;->queryMemory()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/camera/app/MemoryManager$MemoryListener;

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/camera/app/MemoryManagerImpl;->mListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/app/MemoryManagerImpl;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/camera/app/MemoryManagerImpl;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 119
    :goto_0
    monitor-exit v1

    .line 120
    return-void

    .line 117
    :cond_0
    sget-object v0, Lcom/android/camera/app/MemoryManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Cannot remove listener that was never added."

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class public Lcom/android/camera/SoundPlayer;
.super Ljava/lang/Object;
.source "SoundPlayer.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private mIsReleased:Z

.field private final mRepeatingStreamId:Landroid/util/SparseIntArray;

.field private final mResourceToSoundId:Landroid/util/SparseIntArray;

.field private final mResourceUnderLoading:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSoundPool:Landroid/media/SoundPool;

.field private final mTaskOnceLoaded:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "SoundPlayer"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/SoundPlayer;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/camera/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/SoundPlayer;->mResourceUnderLoading:Ljava/util/List;

    .line 42
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/camera/SoundPlayer;->mTaskOnceLoaded:Landroid/util/SparseArray;

    .line 43
    iput-boolean v3, p0, Lcom/android/camera/SoundPlayer;->mIsReleased:Z

    .line 45
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/camera/SoundPlayer;->mRepeatingStreamId:Landroid/util/SparseIntArray;

    .line 51
    iput-object p1, p0, Lcom/android/camera/SoundPlayer;->mAppContext:Landroid/content/Context;

    .line 52
    invoke-static {}, Lcom/android/camera/SoundPlayer;->getAudioTypeForSoundPool()I

    move-result v0

    .line 53
    .local v0, "audioType":I
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/camera/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    .line 54
    iget-object v1, p0, Lcom/android/camera/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    new-instance v2, Lcom/android/camera/SoundPlayer$1;

    invoke-direct {v2, p0}, Lcom/android/camera/SoundPlayer$1;-><init>(Lcom/android/camera/SoundPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 65
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/camera/SoundPlayer;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/SoundPlayer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SoundPlayer;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/SoundPlayer;->mResourceUnderLoading:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/SoundPlayer;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SoundPlayer;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/SoundPlayer;->mTaskOnceLoaded:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/SoundPlayer;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SoundPlayer;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method private static getAudioTypeForSoundPool()I
    .locals 4

    .prologue
    .line 184
    const-class v0, Landroid/media/AudioManager;

    const-string v1, "STREAM_SYSTEM_ENFORCED"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/util/ApiHelper;->getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public isReleased()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/android/camera/SoundPlayer;->mIsReleased:Z

    return v0
.end method

.method public loadSound(I)V
    .locals 4
    .param p1, "resourceId"    # I

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/camera/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/camera/SoundPlayer;->mAppContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    .line 72
    .local v0, "soundId":I
    sget-object v1, Lcom/android/camera/SoundPlayer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSound : resourceId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", soundId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/android/camera/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 74
    iget-object v1, p0, Lcom/android/camera/SoundPlayer;->mResourceUnderLoading:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public play(IF)V
    .locals 8
    .param p1, "resourceId"    # I
    .param p2, "volume"    # F

    .prologue
    const/4 v4, 0x0

    .line 82
    iget-object v0, p0, Lcom/android/camera/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 83
    .local v7, "soundId":Ljava/lang/Integer;
    if-nez v7, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sound not loaded. Must call #loadSound first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SoundPlayer;->mResourceUnderLoading:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/camera/SoundPlayer;->mTaskOnceLoaded:Landroid/util/SparseArray;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/android/camera/SoundPlayer$2;

    invoke-direct {v2, p0, v7, p2}, Lcom/android/camera/SoundPlayer$2;-><init>(Lcom/android/camera/SoundPlayer;Ljava/lang/Integer;F)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, p2

    move v3, p2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 161
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/SoundPlayer;->mIsReleased:Z

    .line 162
    :goto_0
    iget-object v2, p0, Lcom/android/camera/SoundPlayer;->mRepeatingStreamId:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/android/camera/SoundPlayer;->mRepeatingStreamId:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 164
    .local v1, "streamID":Ljava/lang/Integer;
    sget-object v2, Lcom/android/camera/SoundPlayer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Repeating stream not stop before release : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/camera/SoundPlayer;->stopRepeat(I)V

    goto :goto_0

    .line 167
    .end local v1    # "streamID":Ljava/lang/Integer;
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/camera/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/android/camera/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 169
    .local v0, "resourceId":Ljava/lang/Integer;
    sget-object v2, Lcom/android/camera/SoundPlayer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sound not unload before release : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    goto :goto_1

    .line 172
    .end local v0    # "resourceId":Ljava/lang/Integer;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 173
    iget-object v2, p0, Lcom/android/camera/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2}, Landroid/media/SoundPool;->release()V

    .line 174
    iget-object v2, p0, Lcom/android/camera/SoundPlayer;->mResourceUnderLoading:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 175
    iget-object v2, p0, Lcom/android/camera/SoundPlayer;->mTaskOnceLoaded:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 176
    return-void
.end method

.method public scheduleTaskWhenLoaded(ILjava/lang/Runnable;)V
    .locals 3
    .param p1, "resourceId"    # I
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/camera/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 116
    .local v0, "soundId":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 117
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Sound not loaded. Must call #loadSound first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SoundPlayer;->mResourceUnderLoading:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/android/camera/SoundPlayer;->mTaskOnceLoaded:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public startRepeat(IF)I
    .locals 9
    .param p1, "resourceId"    # I
    .param p2, "volume"    # F

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 105
    .local v7, "soundId":Ljava/lang/Integer;
    if-nez v7, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sound not loaded. Must call #loadSound first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, p2

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    .line 110
    .local v8, "streamId":I
    iget-object v0, p0, Lcom/android/camera/SoundPlayer;->mRepeatingStreamId:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 111
    return v8
.end method

.method public stopRepeat(I)V
    .locals 3
    .param p1, "streamID"    # I

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/camera/SoundPlayer;->mRepeatingStreamId:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 133
    .local v0, "soundId":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SoundPlayer;->mTaskOnceLoaded:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 138
    iget-object v1, p0, Lcom/android/camera/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p1}, Landroid/media/SoundPool;->stop(I)V

    .line 139
    iget-object v1, p0, Lcom/android/camera/SoundPlayer;->mRepeatingStreamId:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0
.end method

.method public unloadSound(I)V
    .locals 3
    .param p1, "resourceId"    # I

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/camera/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 147
    .local v0, "soundId":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 148
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Sound not loaded. Must call #loadSound first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SoundPlayer;->mResourceUnderLoading:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 151
    iget-object v1, p0, Lcom/android/camera/SoundPlayer;->mTaskOnceLoaded:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 152
    iget-object v1, p0, Lcom/android/camera/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    .line 153
    iget-object v1, p0, Lcom/android/camera/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 154
    return-void
.end method

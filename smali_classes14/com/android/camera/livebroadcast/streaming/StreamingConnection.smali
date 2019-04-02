.class public Lcom/android/camera/livebroadcast/streaming/StreamingConnection;
.super Ljava/lang/Object;
.source "StreamingConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/livebroadcast/streaming/StreamingConnection$LivingStartListener;
    }
.end annotation


# static fields
.field public static final AUDIO_AEC_ERROR:I = 0x6

.field public static final AUDIO_CONFIGURATION_ERROR:I = 0x4

.field public static final AUDIO_ERROR:I = 0x5

.field public static final AUDIO_TYPE_ERROR:I = 0x2

.field public static final NO_ERROR:I = 0x0

.field public static final SDK_VERSION_ERROR:I = 0x7

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field public static final VIDEO_CONFIGURATION_ERROR:I = 0x3

.field public static final VIDEO_TYPE_ERROR:I = 0x1


# instance fields
.field private mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

.field private mContext:Landroid/content/Context;

.field private mGLRenderer:Lcom/android/camera/pip/opengl/GLRenderer;

.field private mHandler:Lcom/laifeng/sopcastsdk/utils/WeakHandler;

.field private mLivingStartListener:Lcom/android/camera/livebroadcast/streaming/StreamingConnection$LivingStartListener;

.field private mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

.field private mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[LB]SConnection"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/pip/opengl/GLRenderer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "glRenderer"    # Lcom/android/camera/pip/opengl/GLRenderer;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->createDefault()Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .line 43
    invoke-static {}, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->createDefault()Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    .line 45
    new-instance v0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/utils/WeakHandler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mHandler:Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    .line 53
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mGLRenderer:Lcom/android/camera/pip/opengl/GLRenderer;

    .line 55
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->initView()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/livebroadcast/streaming/StreamingConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->check()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/livebroadcast/streaming/StreamingConnection;)Lcom/android/camera/livebroadcast/streaming/StreamingConnection$LivingStartListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mLivingStartListener:Lcom/android/camera/livebroadcast/streaming/StreamingConnection$LivingStartListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/livebroadcast/streaming/StreamingConnection;)Lcom/laifeng/sopcastsdk/utils/WeakHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mHandler:Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/livebroadcast/streaming/StreamingConnection;)Lcom/laifeng/sopcastsdk/controller/StreamController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    return-object v0
.end method

.method private check()I
    .locals 6

    .prologue
    .line 92
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-ge v4, v5, :cond_0

    .line 93
    sget-object v4, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Android sdk version error"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 94
    const/4 v4, 0x7

    .line 124
    :goto_0
    return v4

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->checkAec()Z

    move-result v4

    if-nez v4, :cond_1

    .line 97
    sget-object v4, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Doesn\'t support audio aec"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    const/4 v4, 0x6

    goto :goto_0

    .line 100
    :cond_1
    iget-object v4, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    iget-object v4, v4, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->mime:Ljava/lang/String;

    invoke-static {v4}, Lcom/laifeng/sopcastsdk/mediacodec/MediaCodecHelper;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 101
    .local v3, "videoMediaCodecInfo":Landroid/media/MediaCodecInfo;
    if-nez v3, :cond_2

    .line 102
    sget-object v4, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Video type error"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    const/4 v4, 0x1

    goto :goto_0

    .line 105
    :cond_2
    iget-object v4, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    iget-object v4, v4, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->mime:Ljava/lang/String;

    invoke-static {v4}, Lcom/laifeng/sopcastsdk/mediacodec/MediaCodecHelper;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 106
    .local v1, "audioMediaCodecInfo":Landroid/media/MediaCodecInfo;
    if-nez v1, :cond_3

    .line 107
    sget-object v4, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Audio type error"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    const/4 v4, 0x2

    goto :goto_0

    .line 110
    :cond_3
    iget-object v4, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    invoke-static {v4}, Lcom/laifeng/sopcastsdk/mediacodec/VideoMediaCodec;->getVideoMediaCodec(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)Landroid/media/MediaCodec;

    move-result-object v2

    .line 111
    .local v2, "videoMediaCodec":Landroid/media/MediaCodec;
    if-nez v2, :cond_4

    .line 112
    sget-object v4, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Video mediacodec configuration error"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 113
    const/4 v4, 0x3

    goto :goto_0

    .line 115
    :cond_4
    iget-object v4, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    invoke-static {v4}, Lcom/laifeng/sopcastsdk/mediacodec/AudioMediaCodec;->getAudioMediaCodec(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 116
    .local v0, "audioMediaCodec":Landroid/media/MediaCodec;
    if-nez v0, :cond_5

    .line 117
    sget-object v4, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Audio mediacodec configuration error"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    const/4 v4, 0x4

    goto :goto_0

    .line 120
    :cond_5
    iget-object v4, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    invoke-static {v4}, Lcom/laifeng/sopcastsdk/audio/AudioUtils;->checkMicSupport(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 121
    sget-object v4, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Can not record the audio"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 122
    const/4 v4, 0x5

    goto :goto_0

    .line 124
    :cond_6
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private checkAec()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 128
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    iget-boolean v1, v1, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->aec:Z

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    iget v1, v1, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->frequency:I

    const/16 v2, 0x1f40

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    iget v1, v1, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->frequency:I

    const/16 v2, 0x3e80

    if-ne v1, v2, :cond_2

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    iget v1, v1, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->channelCount:I

    if-ne v1, v0, :cond_2

    .line 137
    :cond_1
    :goto_0
    return v0

    .line 135
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private chooseVoiceMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 172
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 173
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    iget-boolean v1, v1, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->aec:Z

    if-eqz v1, :cond_0

    .line 174
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 175
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 180
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 178
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 59
    new-instance v1, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mGLRenderer:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-direct {v1, v2}, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;-><init>(Lcom/android/camera/pip/opengl/GLRenderer;)V

    .line 60
    .local v1, "videoController":Lcom/android/camera/livebroadcast/streaming/CustomVideoController;
    new-instance v0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;

    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;-><init>()V

    .line 61
    .local v0, "audioController":Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;
    new-instance v2, Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-direct {v2, v1, v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;-><init>(Lcom/laifeng/sopcastsdk/controller/video/IVideoController;Lcom/laifeng/sopcastsdk/controller/audio/IAudioController;)V

    iput-object v2, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    .line 62
    return-void
.end method


# virtual methods
.method public getSessionId()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->getSessionId()I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Version : 1.0"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Branch : open-source"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public mute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/controller/StreamController;->mute(Z)V

    .line 196
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->pause()V

    .line 188
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->resume()V

    .line 192
    return-void
.end method

.method public setAudioConfiguration(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)V
    .locals 1
    .param p1, "audioConfiguration"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    .line 88
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/controller/StreamController;->setAudioConfiguration(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)V

    .line 89
    return-void
.end method

.method public setLivingStartListener(Lcom/android/camera/livebroadcast/streaming/StreamingConnection$LivingStartListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/livebroadcast/streaming/StreamingConnection$LivingStartListener;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mLivingStartListener:Lcom/android/camera/livebroadcast/streaming/StreamingConnection$LivingStartListener;

    .line 71
    return-void
.end method

.method public setPacker(Lcom/laifeng/sopcastsdk/stream/packer/Packer;)V
    .locals 1
    .param p1, "packer"    # Lcom/laifeng/sopcastsdk/stream/packer/Packer;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/controller/StreamController;->setPacker(Lcom/laifeng/sopcastsdk/stream/packer/Packer;)V

    .line 75
    return-void
.end method

.method public setSender(Lcom/laifeng/sopcastsdk/stream/sender/Sender;)V
    .locals 1
    .param p1, "sender"    # Lcom/laifeng/sopcastsdk/stream/sender/Sender;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/controller/StreamController;->setSender(Lcom/laifeng/sopcastsdk/stream/sender/Sender;)V

    .line 79
    return-void
.end method

.method public setVideoBps(I)Z
    .locals 1
    .param p1, "bps"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/controller/StreamController;->setVideoBps(I)Z

    move-result v0

    return v0
.end method

.method public setVideoConfiguration(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V
    .locals 1
    .param p1, "videoConfiguration"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .line 83
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/controller/StreamController;->setVideoConfiguration(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V

    .line 84
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1;

    invoke-direct {v0, p0}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1;-><init>(Lcom/android/camera/livebroadcast/streaming/StreamingConnection;)V

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/utils/SopCastUtils;->processNotUI(Lcom/laifeng/sopcastsdk/utils/SopCastUtils$INotUIProcessor;)V

    .line 169
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->stop()V

    .line 184
    return-void
.end method

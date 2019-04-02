.class public Lcom/laifeng/sopcastsdk/ui/CameraLivingView;
.super Lcom/laifeng/sopcastsdk/ui/CameraView;
.source "CameraLivingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laifeng/sopcastsdk/ui/CameraLivingView$LivingStartListener;
    }
.end annotation


# static fields
.field public static final AUDIO_AEC_ERROR:I = 0x7

.field public static final AUDIO_CONFIGURATION_ERROR:I = 0x4

.field public static final AUDIO_ERROR:I = 0x6

.field public static final AUDIO_TYPE_ERROR:I = 0x2

.field public static final CAMERA_ERROR:I = 0x5

.field public static final NO_ERROR:I = 0x0

.field public static final SDK_VERSION_ERROR:I = 0x8

.field private static final TAG:Ljava/lang/String; = "SopCast"

.field public static final VIDEO_CONFIGURATION_ERROR:I = 0x3

.field public static final VIDEO_TYPE_ERROR:I = 0x1


# instance fields
.field private mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

.field private mCameraOpenListener:Lcom/laifeng/sopcastsdk/camera/CameraListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/laifeng/sopcastsdk/utils/WeakHandler;

.field private mLivingStartListener:Lcom/laifeng/sopcastsdk/ui/CameraLivingView$LivingStartListener;

.field private mOutCameraOpenListener:Lcom/laifeng/sopcastsdk/camera/CameraListener;

.field private mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

.field private mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/laifeng/sopcastsdk/ui/CameraView;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-static {}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->createDefault()Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .line 58
    invoke-static {}, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->createDefault()Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    .line 61
    new-instance v0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/utils/WeakHandler;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mHandler:Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    .line 313
    new-instance v0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$2;

    invoke-direct {v0, p0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$2;-><init>(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mCameraOpenListener:Lcom/laifeng/sopcastsdk/camera/CameraListener;

    .line 82
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->initView()V

    .line 83
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/laifeng/sopcastsdk/ui/CameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-static {}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->createDefault()Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .line 58
    invoke-static {}, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->createDefault()Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    .line 61
    new-instance v0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/utils/WeakHandler;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mHandler:Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    .line 313
    new-instance v0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$2;

    invoke-direct {v0, p0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$2;-><init>(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mCameraOpenListener:Lcom/laifeng/sopcastsdk/camera/CameraListener;

    .line 70
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->initView()V

    .line 71
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/laifeng/sopcastsdk/ui/CameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-static {}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->createDefault()Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .line 58
    invoke-static {}, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->createDefault()Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    .line 61
    new-instance v0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/utils/WeakHandler;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mHandler:Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    .line 313
    new-instance v0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$2;

    invoke-direct {v0, p0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$2;-><init>(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mCameraOpenListener:Lcom/laifeng/sopcastsdk/camera/CameraListener;

    .line 76
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->initView()V

    .line 77
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)I
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->check()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)Lcom/laifeng/sopcastsdk/ui/CameraLivingView$LivingStartListener;
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mLivingStartListener:Lcom/laifeng/sopcastsdk/ui/CameraLivingView$LivingStartListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)Lcom/laifeng/sopcastsdk/utils/WeakHandler;
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mHandler:Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)V
    .locals 0
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->chooseVoiceMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)V
    .locals 0
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->screenOn()V

    return-void
.end method

.method static synthetic access$500(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)Lcom/laifeng/sopcastsdk/controller/StreamController;
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)Lcom/laifeng/sopcastsdk/camera/CameraListener;
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mOutCameraOpenListener:Lcom/laifeng/sopcastsdk/camera/CameraListener;

    return-object v0
.end method

.method private check()I
    .locals 6

    .prologue
    .line 129
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-ge v4, v5, :cond_0

    .line 130
    const-string v4, "SopCast"

    const-string v5, "Android sdk version error"

    invoke-static {v4, v5}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/16 v4, 0x8

    .line 165
    :goto_0
    return v4

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->checkAec()Z

    move-result v4

    if-nez v4, :cond_1

    .line 134
    const-string v4, "SopCast"

    const-string v5, "Doesn\'t support audio aec"

    invoke-static {v4, v5}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v4, 0x7

    goto :goto_0

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->isCameraOpen()Z

    move-result v4

    if-nez v4, :cond_2

    .line 138
    const-string v4, "SopCast"

    const-string v5, "The camera have not open"

    invoke-static {v4, v5}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v4, 0x5

    goto :goto_0

    .line 141
    :cond_2
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    iget-object v4, v4, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->mime:Ljava/lang/String;

    invoke-static {v4}, Lcom/laifeng/sopcastsdk/mediacodec/MediaCodecHelper;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 142
    .local v3, "videoMediaCodecInfo":Landroid/media/MediaCodecInfo;
    if-nez v3, :cond_3

    .line 143
    const-string v4, "SopCast"

    const-string v5, "Video type error"

    invoke-static {v4, v5}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v4, 0x1

    goto :goto_0

    .line 146
    :cond_3
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    iget-object v4, v4, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->mime:Ljava/lang/String;

    invoke-static {v4}, Lcom/laifeng/sopcastsdk/mediacodec/MediaCodecHelper;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 147
    .local v1, "audioMediaCodecInfo":Landroid/media/MediaCodecInfo;
    if-nez v1, :cond_4

    .line 148
    const-string v4, "SopCast"

    const-string v5, "Audio type error"

    invoke-static {v4, v5}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v4, 0x2

    goto :goto_0

    .line 151
    :cond_4
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    invoke-static {v4}, Lcom/laifeng/sopcastsdk/mediacodec/VideoMediaCodec;->getVideoMediaCodec(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)Landroid/media/MediaCodec;

    move-result-object v2

    .line 152
    .local v2, "videoMediaCodec":Landroid/media/MediaCodec;
    if-nez v2, :cond_5

    .line 153
    const-string v4, "SopCast"

    const-string v5, "Video mediacodec configuration error"

    invoke-static {v4, v5}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v4, 0x3

    goto :goto_0

    .line 156
    :cond_5
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    invoke-static {v4}, Lcom/laifeng/sopcastsdk/mediacodec/AudioMediaCodec;->getAudioMediaCodec(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 157
    .local v0, "audioMediaCodec":Landroid/media/MediaCodec;
    if-nez v0, :cond_6

    .line 158
    const-string v4, "SopCast"

    const-string v5, "Audio mediacodec configuration error"

    invoke-static {v4, v5}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v4, 0x4

    goto :goto_0

    .line 161
    :cond_6
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    invoke-static {v4}, Lcom/laifeng/sopcastsdk/audio/AudioUtils;->checkMicSupport(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 162
    const-string v4, "SopCast"

    const-string v5, "Can not record the audio"

    invoke-static {v4, v5}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v4, 0x6

    goto :goto_0

    .line 165
    :cond_7
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private checkAec()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 169
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    iget-boolean v1, v1, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->aec:Z

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    iget v1, v1, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->frequency:I

    const/16 v2, 0x1f40

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    iget v1, v1, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->frequency:I

    const/16 v2, 0x3e80

    if-ne v1, v2, :cond_2

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    iget v1, v1, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->channelCount:I

    if-ne v1, v0, :cond_2

    .line 178
    :cond_1
    :goto_0
    return v0

    .line 176
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private chooseVoiceMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 214
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 215
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    iget-boolean v1, v1, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->aec:Z

    if-eqz v1, :cond_0

    .line 216
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 217
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 220
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 87
    new-instance v1, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mRenderer:Lcom/laifeng/sopcastsdk/video/MyRenderer;

    invoke-direct {v1, v2}, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;-><init>(Lcom/laifeng/sopcastsdk/video/MyRenderer;)V

    .line 88
    .local v1, "videoController":Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;
    new-instance v0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;

    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;-><init>()V

    .line 89
    .local v0, "audioController":Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;
    new-instance v2, Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-direct {v2, v1, v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;-><init>(Lcom/laifeng/sopcastsdk/controller/video/IVideoController;Lcom/laifeng/sopcastsdk/controller/audio/IAudioController;)V

    iput-object v2, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    .line 90
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mRenderer:Lcom/laifeng/sopcastsdk/video/MyRenderer;

    iget-object v3, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mCameraOpenListener:Lcom/laifeng/sopcastsdk/camera/CameraListener;

    invoke-virtual {v2, v3}, Lcom/laifeng/sopcastsdk/video/MyRenderer;->setCameraOpenListener(Lcom/laifeng/sopcastsdk/camera/CameraListener;)V

    .line 91
    return-void
.end method

.method private isCameraOpen()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mRenderer:Lcom/laifeng/sopcastsdk/video/MyRenderer;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/video/MyRenderer;->isCameraOpen()Z

    move-result v0

    return v0
.end method

.method private screenOff()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 244
    :cond_0
    return-void
.end method

.method private screenOn()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 236
    :cond_0
    return-void
.end method

.method private setAudioNormal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 336
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 337
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 338
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 339
    return-void
.end method


# virtual methods
.method public getCameraData()Lcom/laifeng/sopcastsdk/camera/CameraData;
    .locals 1

    .prologue
    .line 293
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->getCameraData()Lcom/laifeng/sopcastsdk/camera/CameraData;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->getSessionId()I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 94
    const-string v1, "SopCast"

    const-string v2, "Version : 1.0"

    invoke-static {v1, v2}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "SopCast"

    const-string v2, "Branch : open-source"

    invoke-static {v1, v2}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->getContext()Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 98
    .local v0, "mPowerManager":Landroid/os/PowerManager;
    const v1, 0x2000000a

    const-string v2, "SopCast"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 100
    return-void
.end method

.method public mute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 255
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/controller/StreamController;->mute(Z)V

    .line 256
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->pause()V

    .line 248
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->screenOff()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 308
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->releaseCamera()V

    .line 309
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->release()V

    .line 310
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->setAudioNormal()V

    .line 311
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->resume()V

    .line 252
    return-void
.end method

.method public setAudioConfiguration(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)V
    .locals 1
    .param p1, "audioConfiguration"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    .line 125
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/controller/StreamController;->setAudioConfiguration(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)V

    .line 126
    return-void
.end method

.method public setCameraConfiguration(Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;)V
    .locals 1
    .param p1, "cameraConfiguration"    # Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;

    .prologue
    .line 120
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->setConfiguration(Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;)V

    .line 121
    return-void
.end method

.method public setCameraOpenListener(Lcom/laifeng/sopcastsdk/camera/CameraListener;)V
    .locals 0
    .param p1, "cameraOpenListener"    # Lcom/laifeng/sopcastsdk/camera/CameraListener;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mOutCameraOpenListener:Lcom/laifeng/sopcastsdk/camera/CameraListener;

    .line 280
    return-void
.end method

.method public setEffect(Lcom/laifeng/sopcastsdk/video/effect/Effect;)V
    .locals 1
    .param p1, "effect"    # Lcom/laifeng/sopcastsdk/video/effect/Effect;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mRenderSurfaceView:Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;->setEffect(Lcom/laifeng/sopcastsdk/video/effect/Effect;)V

    .line 264
    return-void
.end method

.method public setLivingStartListener(Lcom/laifeng/sopcastsdk/ui/CameraLivingView$LivingStartListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/laifeng/sopcastsdk/ui/CameraLivingView$LivingStartListener;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mLivingStartListener:Lcom/laifeng/sopcastsdk/ui/CameraLivingView$LivingStartListener;

    .line 104
    return-void
.end method

.method public setPacker(Lcom/laifeng/sopcastsdk/stream/packer/Packer;)V
    .locals 1
    .param p1, "packer"    # Lcom/laifeng/sopcastsdk/stream/packer/Packer;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/controller/StreamController;->setPacker(Lcom/laifeng/sopcastsdk/stream/packer/Packer;)V

    .line 108
    return-void
.end method

.method public setSender(Lcom/laifeng/sopcastsdk/stream/sender/Sender;)V
    .locals 1
    .param p1, "sender"    # Lcom/laifeng/sopcastsdk/stream/sender/Sender;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/controller/StreamController;->setSender(Lcom/laifeng/sopcastsdk/stream/sender/Sender;)V

    .line 112
    return-void
.end method

.method public setVideoBps(I)Z
    .locals 1
    .param p1, "bps"    # I

    .prologue
    .line 271
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/controller/StreamController;->setVideoBps(I)Z

    move-result v0

    return v0
.end method

.method public setVideoConfiguration(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V
    .locals 1
    .param p1, "videoConfiguration"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .line 116
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/controller/StreamController;->setVideoConfiguration(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V

    .line 117
    return-void
.end method

.method public setWatermark(Lcom/laifeng/sopcastsdk/entity/Watermark;)V
    .locals 1
    .param p1, "watermark"    # Lcom/laifeng/sopcastsdk/entity/Watermark;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mRenderer:Lcom/laifeng/sopcastsdk/video/MyRenderer;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/video/MyRenderer;->setWatermark(Lcom/laifeng/sopcastsdk/entity/Watermark;)V

    .line 268
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;

    invoke-direct {v0, p0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;-><init>(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)V

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/utils/SopCastUtils;->processNotUI(Lcom/laifeng/sopcastsdk/utils/SopCastUtils$INotUIProcessor;)V

    .line 211
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->screenOff()V

    .line 226
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->stop()V

    .line 227
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->setAudioNormal()V

    .line 228
    return-void
.end method

.method public switchCamera()V
    .locals 2

    .prologue
    .line 283
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->switchCamera()Z

    move-result v0

    .line 284
    .local v0, "change":Z
    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->changeFocusModeUI()V

    .line 286
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mOutCameraOpenListener:Lcom/laifeng/sopcastsdk/camera/CameraListener;

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->mOutCameraOpenListener:Lcom/laifeng/sopcastsdk/camera/CameraListener;

    invoke-interface {v1}, Lcom/laifeng/sopcastsdk/camera/CameraListener;->onCameraChange()V

    .line 290
    :cond_0
    return-void
.end method

.method public switchFocusMode()V
    .locals 1

    .prologue
    .line 297
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->switchFocusMode()V

    .line 298
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->changeFocusModeUI()V

    .line 299
    return-void
.end method

.method public switchTorch()V
    .locals 1

    .prologue
    .line 302
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->switchLight()Z

    .line 303
    return-void
.end method

.class public final Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;
.super Ljava/lang/Object;
.source "AudioConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_AAC_PROFILE:I = 0x2

.field public static final DEFAULT_ADTS:I = 0x0

.field public static final DEFAULT_AEC:Z = false

.field public static final DEFAULT_AUDIO_ENCODING:I = 0x2

.field public static final DEFAULT_CHANNEL_COUNT:I = 0x1

.field public static final DEFAULT_FREQUENCY:I = 0xac44

.field public static final DEFAULT_MAX_BPS:I = 0x40

.field public static final DEFAULT_MIME:Ljava/lang/String; = "audio/mp4a-latm"

.field public static final DEFAULT_MIN_BPS:I = 0x20


# instance fields
.field public final aacProfile:I

.field public final adts:I

.field public final aec:Z

.field public final channelCount:I

.field public final encoding:I

.field public final frequency:I

.field public final maxBps:I

.field public final mime:Ljava/lang/String;

.field public final minBps:I


# direct methods
.method private constructor <init>(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->access$000(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->minBps:I

    .line 38
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->access$100(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->maxBps:I

    .line 39
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->access$200(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->frequency:I

    .line 40
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->access$300(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->encoding:I

    .line 41
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->access$400(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->channelCount:I

    .line 42
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->access$500(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->adts:I

    .line 43
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->access$600(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->mime:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->access$700(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->aacProfile:I

    .line 45
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->access$800(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->aec:Z

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;
    .param p2, "x1"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;-><init>(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;)V

    return-void
.end method

.method public static createDefault()Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;

    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->build()Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    move-result-object v0

    return-object v0
.end method

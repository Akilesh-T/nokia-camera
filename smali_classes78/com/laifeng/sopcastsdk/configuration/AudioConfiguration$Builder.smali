.class public Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;
.super Ljava/lang/Object;
.source "AudioConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private aacProfile:I

.field private adts:I

.field private aec:Z

.field private channelCount:I

.field private encoding:I

.field private frequency:I

.field private maxBps:I

.field private mime:Ljava/lang/String;

.field private minBps:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x20

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->minBps:I

    .line 54
    const/16 v0, 0x40

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->maxBps:I

    .line 55
    const v0, 0xac44

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->frequency:I

    .line 56
    iput v2, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->encoding:I

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->channelCount:I

    .line 58
    iput v1, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->adts:I

    .line 59
    const-string v0, "audio/mp4a-latm"

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->mime:Ljava/lang/String;

    .line 60
    iput v2, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->aacProfile:I

    .line 61
    iput-boolean v1, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->aec:Z

    return-void
.end method

.method static synthetic access$000(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;

    .prologue
    .line 52
    iget v0, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->minBps:I

    return v0
.end method

.method static synthetic access$100(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;

    .prologue
    .line 52
    iget v0, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->maxBps:I

    return v0
.end method

.method static synthetic access$200(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;

    .prologue
    .line 52
    iget v0, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->frequency:I

    return v0
.end method

.method static synthetic access$300(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;

    .prologue
    .line 52
    iget v0, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->encoding:I

    return v0
.end method

.method static synthetic access$400(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;

    .prologue
    .line 52
    iget v0, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->channelCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;

    .prologue
    .line 52
    iget v0, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->adts:I

    return v0
.end method

.method static synthetic access$600(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->mime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;

    .prologue
    .line 52
    iget v0, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->aacProfile:I

    return v0
.end method

.method static synthetic access$800(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->aec:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;-><init>(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$1;)V

    return-object v0
.end method

.method public setAacProfile(I)Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;
    .locals 0
    .param p1, "aacProfile"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->aacProfile:I

    .line 91
    return-object p0
.end method

.method public setAdts(I)Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;
    .locals 0
    .param p1, "adts"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->adts:I

    .line 86
    return-object p0
.end method

.method public setAec(Z)Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;
    .locals 0
    .param p1, "aec"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->aec:Z

    .line 101
    return-object p0
.end method

.method public setBps(II)Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;
    .locals 0
    .param p1, "minBps"    # I
    .param p2, "maxBps"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->minBps:I

    .line 65
    iput p2, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->maxBps:I

    .line 66
    return-object p0
.end method

.method public setChannelCount(I)Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;
    .locals 0
    .param p1, "channelCount"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->channelCount:I

    .line 81
    return-object p0
.end method

.method public setEncoding(I)Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;
    .locals 0
    .param p1, "encoding"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->encoding:I

    .line 76
    return-object p0
.end method

.method public setFrequency(I)Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;
    .locals 0
    .param p1, "frequency"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->frequency:I

    .line 71
    return-object p0
.end method

.method public setMime(Ljava/lang/String;)Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;
    .locals 0
    .param p1, "mime"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->mime:Ljava/lang/String;

    .line 96
    return-object p0
.end method

.class public Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;
.super Ljava/lang/Object;
.source "VideoConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private fps:I

.field private height:I

.field private ifi:I

.field private maxBps:I

.field private mime:Ljava/lang/String;

.field private minBps:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x280

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->height:I

    .line 45
    const/16 v0, 0x168

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->width:I

    .line 46
    const/16 v0, 0x190

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->minBps:I

    .line 47
    const/16 v0, 0x514

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->maxBps:I

    .line 48
    const/16 v0, 0xf

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->fps:I

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->ifi:I

    .line 50
    const-string v0, "video/avc"

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->mime:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;

    .prologue
    .line 43
    iget v0, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->height:I

    return v0
.end method

.method static synthetic access$100(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;

    .prologue
    .line 43
    iget v0, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->width:I

    return v0
.end method

.method static synthetic access$200(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;

    .prologue
    .line 43
    iget v0, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->minBps:I

    return v0
.end method

.method static synthetic access$300(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;

    .prologue
    .line 43
    iget v0, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->maxBps:I

    return v0
.end method

.method static synthetic access$400(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;

    .prologue
    .line 43
    iget v0, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->fps:I

    return v0
.end method

.method static synthetic access$500(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;

    .prologue
    .line 43
    iget v0, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->ifi:I

    return v0
.end method

.method static synthetic access$600(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->mime:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;-><init>(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$1;)V

    return-object v0
.end method

.method public setBps(II)Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;
    .locals 0
    .param p1, "minBps"    # I
    .param p2, "maxBps"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->minBps:I

    .line 60
    iput p2, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->maxBps:I

    .line 61
    return-object p0
.end method

.method public setFps(I)Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;
    .locals 0
    .param p1, "fps"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->fps:I

    .line 66
    return-object p0
.end method

.method public setIfi(I)Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;
    .locals 0
    .param p1, "ifi"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->ifi:I

    .line 71
    return-object p0
.end method

.method public setMime(Ljava/lang/String;)Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;
    .locals 0
    .param p1, "mime"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->mime:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public setSize(II)Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->width:I

    .line 54
    iput p2, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->height:I

    .line 55
    return-object p0
.end method

.class public final Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;
.super Ljava/lang/Object;
.source "VideoConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_FPS:I = 0xf

.field public static final DEFAULT_HEIGHT:I = 0x280

.field public static final DEFAULT_IFI:I = 0x2

.field public static final DEFAULT_MAX_BPS:I = 0x514

.field public static final DEFAULT_MIME:Ljava/lang/String; = "video/avc"

.field public static final DEFAULT_MIN_BPS:I = 0x190

.field public static final DEFAULT_WIDTH:I = 0x168


# instance fields
.field public final fps:I

.field public final height:I

.field public final ifi:I

.field public final maxBps:I

.field public final mime:Ljava/lang/String;

.field public final minBps:I

.field public final width:I


# direct methods
.method private constructor <init>(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->access$000(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->height:I

    .line 31
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->access$100(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->width:I

    .line 32
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->access$200(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->minBps:I

    .line 33
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->access$300(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->maxBps:I

    .line 34
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->access$400(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->fps:I

    .line 35
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->access$500(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->ifi:I

    .line 36
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->access$600(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->mime:Ljava/lang/String;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;
    .param p2, "x1"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$1;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;-><init>(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;)V

    return-void
.end method

.method public static createDefault()Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;

    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->build()Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    move-result-object v0

    return-object v0
.end method

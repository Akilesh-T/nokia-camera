.class public final enum Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;
.super Ljava/lang/Enum;
.source "SetPeerBandwidth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LimitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

.field public static final enum DYNAMIC:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

.field public static final enum HARD:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

.field public static final enum SOFT:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

.field private static final quickLookupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 29
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

    const-string v3, "HARD"

    invoke-direct {v2, v3, v1, v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;->HARD:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

    .line 34
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

    const-string v3, "SOFT"

    invoke-direct {v2, v3, v4, v4}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;->SOFT:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

    .line 38
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

    const-string v3, "DYNAMIC"

    invoke-direct {v2, v3, v5, v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;->DYNAMIC:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

    .line 24
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

    sget-object v3, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;->HARD:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

    aput-object v3, v2, v1

    sget-object v3, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;->SOFT:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

    aput-object v3, v2, v4

    sget-object v3, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;->DYNAMIC:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

    aput-object v3, v2, v5

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;->$VALUES:[Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

    .line 40
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;->quickLookupMap:Ljava/util/Map;

    .line 43
    invoke-static {}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;->values()[Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

    move-result-object v2

    array-length v3, v2

    .local v0, "type":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 44
    sget-object v4, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;->quickLookupMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;->getIntValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "intValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;->intValue:I

    .line 50
    return-void
.end method

.method public static valueOf(I)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;
    .locals 2
    .param p0, "intValue"    # I

    .prologue
    .line 57
    sget-object v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;->quickLookupMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

    return-object v0
.end method

.method public static values()[Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;->$VALUES:[Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

    invoke-virtual {v0}, [Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;->intValue:I

    return v0
.end method

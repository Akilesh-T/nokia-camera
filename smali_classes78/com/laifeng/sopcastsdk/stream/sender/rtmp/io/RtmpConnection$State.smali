.class public final enum Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;
.super Ljava/lang/Enum;
.source "RtmpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

.field public static final enum CONNECTING:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

.field public static final enum CREATE_STREAM:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

.field public static final enum HANDSHAKE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

.field public static final enum INIT:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

.field public static final enum LIVING:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

.field public static final enum PUBLISHING:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;->INIT:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    .line 67
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    const-string v1, "HANDSHAKE"

    invoke-direct {v0, v1, v4}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;->HANDSHAKE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    .line 68
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;->CONNECTING:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    .line 69
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    const-string v1, "CREATE_STREAM"

    invoke-direct {v0, v1, v6}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;->CREATE_STREAM:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    .line 70
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    const-string v1, "PUBLISHING"

    invoke-direct {v0, v1, v7}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;->PUBLISHING:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    .line 71
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    const-string v1, "LIVING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;->LIVING:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    sget-object v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;->INIT:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;->HANDSHAKE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;->CONNECTING:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;->CREATE_STREAM:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;->PUBLISHING:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;->LIVING:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;->$VALUES:[Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    return-object v0
.end method

.method public static values()[Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;->$VALUES:[Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    invoke-virtual {v0}, [Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    return-object v0
.end method

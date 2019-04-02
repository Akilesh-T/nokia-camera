.class public final enum Lcom/pedro/rtsp/rtsp/Protocol;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pedro/rtsp/rtsp/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pedro/rtsp/rtsp/Protocol;

.field public static final enum TCP:Lcom/pedro/rtsp/rtsp/Protocol;

.field public static final enum UDP:Lcom/pedro/rtsp/rtsp/Protocol;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/pedro/rtsp/rtsp/Protocol;

    const-string v1, "UDP"

    invoke-direct {v0, v1, v2}, Lcom/pedro/rtsp/rtsp/Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/rtsp/rtsp/Protocol;->UDP:Lcom/pedro/rtsp/rtsp/Protocol;

    new-instance v0, Lcom/pedro/rtsp/rtsp/Protocol;

    const-string v1, "TCP"

    invoke-direct {v0, v1, v3}, Lcom/pedro/rtsp/rtsp/Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/rtsp/rtsp/Protocol;->TCP:Lcom/pedro/rtsp/rtsp/Protocol;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/pedro/rtsp/rtsp/Protocol;

    sget-object v1, Lcom/pedro/rtsp/rtsp/Protocol;->UDP:Lcom/pedro/rtsp/rtsp/Protocol;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pedro/rtsp/rtsp/Protocol;->TCP:Lcom/pedro/rtsp/rtsp/Protocol;

    aput-object v1, v0, v3

    sput-object v0, Lcom/pedro/rtsp/rtsp/Protocol;->$VALUES:[Lcom/pedro/rtsp/rtsp/Protocol;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pedro/rtsp/rtsp/Protocol;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/pedro/rtsp/rtsp/Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pedro/rtsp/rtsp/Protocol;

    return-object v0
.end method

.method public static values()[Lcom/pedro/rtsp/rtsp/Protocol;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/pedro/rtsp/rtsp/Protocol;->$VALUES:[Lcom/pedro/rtsp/rtsp/Protocol;

    invoke-virtual {v0}, [Lcom/pedro/rtsp/rtsp/Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pedro/rtsp/rtsp/Protocol;

    return-object v0
.end method

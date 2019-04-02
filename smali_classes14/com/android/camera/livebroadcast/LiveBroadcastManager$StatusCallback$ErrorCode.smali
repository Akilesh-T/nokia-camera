.class public final enum Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;
.super Ljava/lang/Enum;
.source "LiveBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

.field public static final enum CANCEL:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

.field public static final enum FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

.field public static final enum FAILED_LAUNCH:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

.field public static final enum FAILED_NOTFOUND:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

.field public static final enum MESSAGE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

.field public static final enum NONE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

.field public static final enum PERMISSION_FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 305
    new-instance v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->NONE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    .line 306
    new-instance v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    const-string v1, "PERMISSION_FAILED"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->PERMISSION_FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    .line 307
    new-instance v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    .line 308
    new-instance v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    const-string v1, "FAILED_LAUNCH"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED_LAUNCH:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    .line 309
    new-instance v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    const-string v1, "FAILED_NOTFOUND"

    invoke-direct {v0, v1, v7}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED_NOTFOUND:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    .line 310
    new-instance v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    const-string v1, "MESSAGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->MESSAGE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    .line 311
    new-instance v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    const-string v1, "CANCEL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->CANCEL:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    .line 305
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->NONE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->PERMISSION_FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED_LAUNCH:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED_NOTFOUND:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->MESSAGE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->CANCEL:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->$VALUES:[Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

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
    .line 305
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 305
    const-class v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->$VALUES:[Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    invoke-virtual {v0}, [Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    return-object v0
.end method

.class public final enum Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
.super Ljava/lang/Enum;
.source "LiveBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/LiveBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccountType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

.field public static final enum FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

.field public static final enum WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

.field public static final enum YOUTUBE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    const-string v1, "WEIBO"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    new-instance v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    const-string v1, "YOUTUBE"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->YOUTUBE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    new-instance v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    const-string v1, "FACEBOOK"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->YOUTUBE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->$VALUES:[Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->$VALUES:[Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v0}, [Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    return-object v0
.end method

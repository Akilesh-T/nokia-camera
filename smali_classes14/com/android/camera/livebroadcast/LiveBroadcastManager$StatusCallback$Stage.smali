.class public final enum Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;
.super Ljava/lang/Enum;
.source "LiveBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

.field public static final enum CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

.field public static final enum START:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

.field public static final enum STOP:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

.field public static final enum STREAM:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

.field public static final enum UPDATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 304
    new-instance v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    new-instance v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->START:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    new-instance v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->STOP:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    new-instance v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->UPDATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    new-instance v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    const-string v1, "STREAM"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->STREAM:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->START:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->STOP:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->UPDATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->STREAM:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->$VALUES:[Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

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
    .line 304
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 304
    const-class v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;
    .locals 1

    .prologue
    .line 304
    sget-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->$VALUES:[Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    invoke-virtual {v0}, [Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    return-object v0
.end method

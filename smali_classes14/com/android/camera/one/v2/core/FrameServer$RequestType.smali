.class public final enum Lcom/android/camera/one/v2/core/FrameServer$RequestType;
.super Ljava/lang/Enum;
.source "FrameServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/core/FrameServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/v2/core/FrameServer$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/v2/core/FrameServer$RequestType;

.field public static final enum NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

.field public static final enum REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    const-string v1, "REPEATING"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/core/FrameServer$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    new-instance v0, Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    const-string v1, "NON_REPEATING"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/one/v2/core/FrameServer$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    sget-object v1, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->$VALUES:[Lcom/android/camera/one/v2/core/FrameServer$RequestType;

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
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/one/v2/core/FrameServer$RequestType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    const-class v0, Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/one/v2/core/FrameServer$RequestType;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->$VALUES:[Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-virtual {v0}, [Lcom/android/camera/one/v2/core/FrameServer$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    return-object v0
.end method

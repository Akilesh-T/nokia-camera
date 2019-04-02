.class public final enum Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;
.super Ljava/lang/Enum;
.source "OneCameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/OneCameraImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;

.field public static final enum CAPTURE:Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;

.field public static final enum PRESHOT_TRIGGERED_AF:Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;

.field public static final enum TAP_TO_FOCUS:Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    new-instance v0, Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;

    const-string v1, "PRESHOT_TRIGGERED_AF"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;->PRESHOT_TRIGGERED_AF:Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;

    .line 167
    new-instance v0, Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;

    const-string v1, "CAPTURE"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;->CAPTURE:Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;

    .line 169
    new-instance v0, Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;

    const-string v1, "TAP_TO_FOCUS"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;->TAP_TO_FOCUS:Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;

    .line 163
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;

    sget-object v1, Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;->PRESHOT_TRIGGERED_AF:Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;->CAPTURE:Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;->TAP_TO_FOCUS:Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;->$VALUES:[Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;

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
    .line 163
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 163
    const-class v0, Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;->$VALUES:[Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;

    invoke-virtual {v0}, [Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;

    return-object v0
.end method

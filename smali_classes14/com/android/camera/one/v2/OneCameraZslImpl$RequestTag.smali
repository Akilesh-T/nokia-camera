.class final enum Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;
.super Ljava/lang/Enum;
.source "OneCameraZslImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/OneCameraZslImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RequestTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;

.field public static final enum EXPLICIT_CAPTURE:Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    new-instance v0, Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;

    const-string v1, "EXPLICIT_CAPTURE"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;->EXPLICIT_CAPTURE:Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;

    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;

    sget-object v1, Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;->EXPLICIT_CAPTURE:Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;->$VALUES:[Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;

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
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 125
    const-class v0, Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;->$VALUES:[Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;

    invoke-virtual {v0}, [Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;

    return-object v0
.end method
